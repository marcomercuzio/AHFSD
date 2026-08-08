// ═══════════════════════════════════════════════════════════════════════════
// AHFSD — behaviour simulator (ahfsd_behaviour_sim.js)
// ───────────────────────────────────────────────────────────────────────────
// Version log (newest first):
//   v1.5  2026-07-28  Changed value for repulsion, from var MIN_SEP = 0.45 to 0.25
//   v1.4  2026-07-24  Room bounds retuned to the real IAS trackable area:
//                     8 x 16 m → x ±4, y ±8 (was 12x21m: x ±6, y ±10.5).
//                     Absolute cluster/group seed positions in clustering(),
//                     tight(), twogroups() rescaled to fit the smaller room so
//                     seeds stay comfortably inside bounds. Show runs with 10
//                     bodies; calibrate absolute NORMs (esp. CLUST_NORM) by ear
//                     against THIS geometry at the IAS.
//   v1.3  2026-07-24  Tracking-loss simulation (to test ahfsd_reaper.js) — the
//                     HONEST version: a "dropped" body simply STOPS EMITTING, so
//                     its last_seen goes stale exactly like a real rigid body
//                     that lost its solve. No fake tracked flag — nothing here
//                     diverges from what OptiTrack actually does on the wire.
//                     Messages: drop <id> / restore <id> / drop_random /
//                     restore_all. init()/msg_int reset all bodies to emitting.
//                     (ids are 1-based, matching the emitted body_id = i+1.)
//   v1.2  2026-07-08  Physical realism pass:
//                     - Minimum body separation (MIN_SEP 0.45m): pairwise
//                       repulsion after each movement tick — bodies can no
//                       longer overlap, so clustering metrics (min_dist,
//                       avg pairwise) stay physically honest. Output emission
//                       moved to a second loop after separation.
//                     - clustering() tightened: per-body spread ±4m -> ±1.8m
//                       (and refresh_target ±3 -> ±1.5). Old values made the
//                       "cluster" an ~8x8m blob in a 12x21m room, so avg
//                       pairwise distance barely dropped vs scattered (the
//                       "scatter 20 vs cluster 20 doesn't read" observation).
//                       Rule of thumb: cluster radius ~0.4 * sqrt(n).
//   v1.1  2026-07-08  Per-body speed_personality (0.5–1.7x, persistent per
//                     body, re-rolled on init). Previously all bodies moved at
//                     near-identical speeds, so velocity variance (sm_var) was
//                     structurally near-zero in every behaviour except
//                     onerunner — the variance-driven FX family (Spectral
//                     Resonator, Beat Repeat, Portal, impactor BURST/chaos)
//                     could never be exercised in simulation. Real crowds are
//                     heterogeneous; now the sim is too.
//                     After updating: re-log scattered/dispersal and adjust
//                     the controller with set_var_norm <new sm_var max>.
//   v1.0             Initial build: 10 behaviours (scattered / clustering /
//                     tight / stillness / twogroups / onerunner / dispersal /
//                     pairs / settling / mixedvertical), target-seeking bodies,
//                     room bounds x ±6m, y ±10.5m.
//
// Messages: <int> = set body count (1–40) | behaviour names as listed above
// ═══════════════════════════════════════════════════════════════════════════

autowatch = 1;
outlets = 1;

var num_bodies = 20;
var speed = 0.03;
var current_behaviour = "scattered";

var x_min = -4.0, x_max = 4.0;    // v1.4: 8m width (IAS trackable area)
var y_min = -8.0, y_max = 8.0;    // v1.4: 16m length

var speed_personality = [];   // v1.1: persistent per-body speed multiplier (0.5–1.7x)
var emitting = [];            // v1.3: per-body — false = "dropped" (stops emitting, mimics tracking loss)
var pos_x = [];
var pos_y = [];
var pos_z = [];
var tgt_x = [];
var tgt_y = [];
var tgt_z = [];
var body_speed = [];

var cluster_x = 0;
var cluster_y = 0;
var group2_x = 2;    // v1.4: rescaled for 8x16 room
var group2_y = 4;
var runner_id = 0;

var pair_assignments = [];
var transition_progress = 0;
var transition_speed = 0.01;

function loadbang() {
	init();
}

function msg_int(n) {
	num_bodies = Math.max(1, Math.min(n, 40));
	init();
	post("behaviour sim: " + num_bodies + " bodies\n");
}

function init() {
	pos_x = []; pos_y = []; pos_z = [];
	tgt_x = []; tgt_y = []; tgt_z = [];
	body_speed = [];
	pair_assignments = [];
	for (var i = 0; i < num_bodies; i++) {
		pos_x[i] = rand(x_min, x_max);
		pos_y[i] = rand(y_min, y_max);
		pos_z[i] = 1.5;
		tgt_x[i] = rand(x_min, x_max);
		tgt_y[i] = rand(y_min, y_max);
		tgt_z[i] = 1.5;
		body_speed[i] = speed;
		speed_personality[i] = 0.5 + Math.random() * 1.2;   // v1.1
		emitting[i] = true;   // v1.3: all bodies emitting on (re)init
	}
	transition_progress = 0;
}

// ── v1.3: tracking-loss controls (to test ahfsd_reaper.js) ──────────────────
// A "dropped" body just stops emitting — its last_seen goes stale, which is
// exactly what a real rigid body losing solve looks like. ids are 1-based.
function drop(id) {
	var i = id - 1;
	if (i < 0 || i >= num_bodies) { post("sim: drop — no body " + id + "\n"); return; }
	emitting[i] = false;
	post("sim: body " + id + " DROPPED (stopped emitting)\n");
}

function restore(id) {
	var i = id - 1;
	if (i < 0 || i >= num_bodies) { post("sim: restore — no body " + id + "\n"); return; }
	emitting[i] = true;
	post("sim: body " + id + " restored (emitting)\n");
}

function drop_random() {
	var live = [];
	for (var i = 0; i < num_bodies; i++) if (emitting[i]) live.push(i);
	if (live.length === 0) { post("sim: drop_random — none emitting\n"); return; }
	var pick = live[Math.floor(Math.random() * live.length)];
	emitting[pick] = false;
	post("sim: body " + (pick + 1) + " DROPPED (random)\n");
}

function restore_all() {
	for (var i = 0; i < num_bodies; i++) emitting[i] = true;
	post("sim: all bodies restored\n");
}

function scattered() {
	current_behaviour = "scattered";
	transition_progress = 0;
	for (var i = 0; i < num_bodies; i++) {
		tgt_x[i] = rand(x_min, x_max);
		tgt_y[i] = rand(y_min, y_max);
		tgt_z[i] = 1.5 + rand(-0.15, 0.15);
		body_speed[i] = speed + rand(-0.02, 0.02);
	}
	post("behaviour: scattered wandering\n");
}

function clustering() {
	current_behaviour = "clustering";
	transition_progress = 0;
	cluster_x = rand(-2, 2);        // v1.4: rescaled for 8x16 room (was ±3)
	cluster_y = rand(-4, 4);        // v1.4: was ±5
	for (var i = 0; i < num_bodies; i++) {
		tgt_x[i] = cluster_x + rand(-1.8, 1.8);   // v1.2: was ±4
		tgt_y[i] = cluster_y + rand(-1.8, 1.8);
		tgt_z[i] = 1.5 + rand(-0.15, 0.15);
		body_speed[i] = speed * 0.6;
	}
	post("behaviour: gradual clustering\n");
}

function tight() {
	current_behaviour = "tight";
	transition_progress = 0;
	cluster_x = rand(-1.5, 1.5);    // v1.4: rescaled for 8x16 room (was ±2)
	cluster_y = rand(-2.5, 2.5);    // v1.4: was ±3
	for (var i = 0; i < num_bodies; i++) {
		tgt_x[i] = cluster_x + rand(-1, 1);
		tgt_y[i] = cluster_y + rand(-1, 1);
		tgt_z[i] = 1.5 + rand(-0.1, 0.1);
		body_speed[i] = speed * 0.3;
	}
	post("behaviour: tight cluster\n");
}

function stillness() {
	current_behaviour = "stillness";
	transition_progress = 0;
	for (var i = 0; i < num_bodies; i++) {
		tgt_x[i] = pos_x[i];
		tgt_y[i] = pos_y[i];
		tgt_z[i] = pos_z[i];
		body_speed[i] = 0.0;
	}
	post("behaviour: stillness\n");
}

function twogroups() {
	current_behaviour = "twogroups";
	transition_progress = 0;
	cluster_x = rand(-3, -1);       // v1.4: rescaled for 8x16 room (was -4..-1)
	cluster_y = rand(-5, -2);       // v1.4: was -6..-2
	group2_x = rand(1, 3);          // v1.4: was 1..4
	group2_y = rand(2, 5);          // v1.4: was 2..6
	var half = Math.floor(num_bodies / 2);
	for (var i = 0; i < num_bodies; i++) {
		if (i < half) {
			tgt_x[i] = cluster_x + rand(-1.5, 1.5);
			tgt_y[i] = cluster_y + rand(-1.5, 1.5);
		} else {
			tgt_x[i] = group2_x + rand(-1.5, 1.5);
			tgt_y[i] = group2_y + rand(-1.5, 1.5);
		}
		tgt_z[i] = 1.5 + rand(-0.15, 0.15);
		body_speed[i] = speed * 0.5;
	}
	post("behaviour: two groups\n");
}

function onerunner() {
	current_behaviour = "onerunner";
	transition_progress = 0;
	runner_id = Math.floor(rand(0, num_bodies));
	for (var i = 0; i < num_bodies; i++) {
		if (i === runner_id) {
			tgt_x[i] = rand(x_min, x_max);
			tgt_y[i] = rand(y_min, y_max);
			tgt_z[i] = 1.5;
			body_speed[i] = speed * 4;
		} else {
			tgt_x[i] = pos_x[i] + rand(-0.3, 0.3);
			tgt_y[i] = pos_y[i] + rand(-0.3, 0.3);
			tgt_z[i] = 1.5 + rand(-0.1, 0.1);
			body_speed[i] = speed * 0.15;
		}
	}
	post("behaviour: one runner (body " + (runner_id + 1) + ")\n");
}

function dispersal() {
	current_behaviour = "dispersal";
	transition_progress = 0;
	var cx = 0, cy = 0;
	for (var i = 0; i < num_bodies; i++) {
		cx += pos_x[i];
		cy += pos_y[i];
	}
	cx /= num_bodies;
	cy /= num_bodies;
	for (var i = 0; i < num_bodies; i++) {
		var dx = pos_x[i] - cx;
		var dy = pos_y[i] - cy;
		var dist = Math.sqrt(dx * dx + dy * dy);
		if (dist < 0.1) dist = 0.1;
		tgt_x[i] = pos_x[i] + (dx / dist) * 8;
		tgt_y[i] = pos_y[i] + (dy / dist) * 8;
		tgt_x[i] = Math.max(x_min, Math.min(x_max, tgt_x[i]));
		tgt_y[i] = Math.max(y_min, Math.min(y_max, tgt_y[i]));
		tgt_z[i] = 1.5 + rand(-0.15, 0.15);
		body_speed[i] = speed * 1.5;
	}
	post("behaviour: dispersal\n");
}

function pairs() {
	current_behaviour = "pairs";
	transition_progress = 0;
	pair_assignments = [];
	var num_pairs = Math.min(3, Math.floor(num_bodies / 2));
	for (var i = 0; i < num_bodies; i++) {
		pair_assignments[i] = -1;
	}
	for (var p = 0; p < num_pairs; p++) {
		var a = p * 2;
		var b = p * 2 + 1;
		pair_assignments[a] = p;
		pair_assignments[b] = p;
	}
	var pair_centers_x = [];
	var pair_centers_y = [];
	for (var p = 0; p < num_pairs; p++) {
		pair_centers_x[p] = rand(-4, 4);
		pair_centers_y[p] = rand(-7, 7);
	}
	for (var i = 0; i < num_bodies; i++) {
		if (pair_assignments[i] >= 0) {
			var p = pair_assignments[i];
			tgt_x[i] = pair_centers_x[p] + rand(-0.2, 0.2);
			tgt_y[i] = pair_centers_y[p] + rand(-0.2, 0.2);
			tgt_z[i] = 1.5;
			body_speed[i] = speed * 0.2;
		} else {
			tgt_x[i] = rand(x_min, x_max);
			tgt_y[i] = rand(y_min, y_max);
			tgt_z[i] = 1.5 + rand(-0.15, 0.15);
			body_speed[i] = speed * 0.7;
		}
	}
	post("behaviour: intimate pairs (" + num_pairs + " pairs)\n");
}

function settling() {
	current_behaviour = "settling";
	transition_progress = 0;
	for (var i = 0; i < num_bodies; i++) {
		var r = Math.random();
		if (r < 0.3) {
			tgt_z[i] = rand(0.25, 0.4);
			body_speed[i] = speed * 0.1;
		} else if (r < 0.6) {
			tgt_z[i] = rand(0.6, 0.8);
			body_speed[i] = speed * 0.15;
		} else {
			tgt_z[i] = 1.5 + rand(-0.1, 0.1);
			body_speed[i] = speed * 0.2;
		}
		tgt_x[i] = pos_x[i] + rand(-1, 1);
		tgt_y[i] = pos_y[i] + rand(-1, 1);
	}
	post("behaviour: settling down (lying/sitting/standing)\n");
}

function mixedvertical() {
	current_behaviour = "mixedvertical";
	transition_progress = 0;
	for (var i = 0; i < num_bodies; i++) {
		var r = Math.random();
		if (r < 0.15) {
			tgt_z[i] = rand(0.25, 0.4);
			body_speed[i] = speed * 0.1;
		} else if (r < 0.3) {
			tgt_z[i] = rand(0.6, 0.8);
			body_speed[i] = speed * 0.3;
		} else if (r < 0.8) {
			tgt_z[i] = 1.5 + rand(-0.15, 0.15);
			body_speed[i] = speed + rand(-0.02, 0.02);
		} else {
			tgt_z[i] = rand(2.0, 2.8);
			body_speed[i] = speed * 0.8;
		}
		tgt_x[i] = rand(x_min, x_max);
		tgt_y[i] = rand(y_min, y_max);
	}
	post("behaviour: mixed vertical (lying/sitting/standing/elevated)\n");
}

function bang() {
	for (var i = 0; i < num_bodies; i++) {
		var dx = tgt_x[i] - pos_x[i];
		var dy = tgt_y[i] - pos_y[i];
		var dz = tgt_z[i] - pos_z[i];
		var dist = Math.sqrt(dx * dx + dy * dy + dz * dz);

		if (body_speed[i] < 0.001) {
			// stillness — tiny drift only
			pos_x[i] += rand(-0.002, 0.002);
			pos_y[i] += rand(-0.002, 0.002);
			pos_z[i] += rand(-0.001, 0.001);
		} else if (dist < 0.3) {
			// reached target — pick new one based on behaviour
			refresh_target(i);
		} else {
			var step = body_speed[i] * speed_personality[i] + rand(-0.01, 0.01);   // v1.1
			if (step > dist) step = dist;
			pos_x[i] += (dx / dist) * step;
			pos_y[i] += (dy / dist) * step;
			pos_z[i] += (dz / dist) * step;
		}

		// clamp to room bounds
		pos_x[i] = Math.max(x_min, Math.min(x_max, pos_x[i]));
		pos_y[i] = Math.max(y_min, Math.min(y_max, pos_y[i]));
		pos_z[i] = Math.max(0.2, Math.min(3.0, pos_z[i]));
	}

	// ── v1.2: minimum body separation (physical bodies can't overlap) ──
	var MIN_SEP = 0.25;
	for (var a = 0; a < num_bodies; a++) {
		for (var b = a + 1; b < num_bodies; b++) {
			var sx = pos_x[b] - pos_x[a];
			var sy = pos_y[b] - pos_y[a];
			var d = Math.sqrt(sx * sx + sy * sy);
			if (d < MIN_SEP) {
				if (d < 0.001) { sx = 0.01; sy = 0; d = 0.01; }
				var push = (MIN_SEP - d) * 0.5;
				pos_x[a] -= (sx / d) * push;
				pos_y[a] -= (sy / d) * push;
				pos_x[b] += (sx / d) * push;
				pos_y[b] += (sy / d) * push;
			}
		}
	}

	// emit all positions after separation
	for (var i = 0; i < num_bodies; i++) {
		if (!emitting[i]) continue;   // v1.3: dropped body stays silent → last_seen goes stale
		var body_id = i + 1;
		var px = Math.round(pos_x[i] * 1000) / 1000;
		var py = Math.round(pos_y[i] * 1000) / 1000;
		var pz = Math.round(pos_z[i] * 1000) / 1000;
		outlet(0, "/rigidbody", body_id, "position", px, py, pz);
	}
}

function refresh_target(i) {
	if (current_behaviour === "scattered" || current_behaviour === "dispersal") {
		tgt_x[i] = rand(x_min, x_max);
		tgt_y[i] = rand(y_min, y_max);

	} else if (current_behaviour === "clustering") {
		tgt_x[i] = cluster_x + rand(-1.5, 1.5);   // v1.2: was ±3
		tgt_y[i] = cluster_y + rand(-1.5, 1.5);

	} else if (current_behaviour === "tight") {
		tgt_x[i] = cluster_x + rand(-0.8, 0.8);
		tgt_y[i] = cluster_y + rand(-0.8, 0.8);

	} else if (current_behaviour === "stillness") {
		tgt_x[i] = pos_x[i];
		tgt_y[i] = pos_y[i];

	} else if (current_behaviour === "twogroups") {
		var half = Math.floor(num_bodies / 2);
		if (i < half) {
			tgt_x[i] = cluster_x + rand(-1.5, 1.5);
			tgt_y[i] = cluster_y + rand(-1.5, 1.5);
		} else {
			tgt_x[i] = group2_x + rand(-1.5, 1.5);
			tgt_y[i] = group2_y + rand(-1.5, 1.5);
		}

	} else if (current_behaviour === "onerunner") {
		if (i === runner_id) {
			tgt_x[i] = rand(x_min, x_max);
			tgt_y[i] = rand(y_min, y_max);
		} else {
			tgt_x[i] = pos_x[i] + rand(-0.3, 0.3);
			tgt_y[i] = pos_y[i] + rand(-0.3, 0.3);
		}

	} else if (current_behaviour === "pairs") {
		if (pair_assignments[i] >= 0) {
			var partner = (i % 2 === 0) ? i + 1 : i - 1;
			if (partner >= 0 && partner < num_bodies) {
				tgt_x[i] = pos_x[partner] + rand(-0.2, 0.2);
				tgt_y[i] = pos_y[partner] + rand(-0.2, 0.2);
			}
		} else {
			tgt_x[i] = rand(x_min, x_max);
			tgt_y[i] = rand(y_min, y_max);
		}

	} else if (current_behaviour === "settling") {
		tgt_x[i] = pos_x[i] + rand(-0.5, 0.5);
		tgt_y[i] = pos_y[i] + rand(-0.5, 0.5);

	} else if (current_behaviour === "mixedvertical") {
		tgt_x[i] = rand(x_min, x_max);
		tgt_y[i] = rand(y_min, y_max);
	}
}

function rand(lo, hi) {
	return lo + Math.random() * (hi - lo);
}