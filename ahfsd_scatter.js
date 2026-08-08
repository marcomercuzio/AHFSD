// ═══════════════════════════════════════════════════════════════════════
// AHFSD — scatter gate (ahfsd_scatter.js)
// ───────────────────────────────────────────────────────────────────────
//   v1.1  2026-07-28  Input changed in patch from ahfsd_variance.js to
//                     ahfsd_clustering.js outlet 0 (mean pairwise floor
//                     distance, metres). The gate now measures sustained
//                     spatial dispersal — the temporal mirror of the
//                     gathering gate — instead of a second, more sensitive
//                     copy of the disorder gate on velocity variance.
//                     Constants retuned for the new units: threshold
//                     1.0 -> 5.5 m, hold 4000 -> 6000, release 2000 -> 3000,
//                     matching gathering's timing so the two are symmetrical.
//                     Dead band between gathering (< 3.0) and scatter (> 5.5)
//                     prevents the two gates chattering at the boundary.
//                     Reference distances, 10 bodies in 8 x 16 m (simulated):
//                     tight knot 1.0 · loose gather 2.1 · random scatter in
//                     usable area 4.5 · uniform across full floor 6.4.
//                     CALIBRATE BY EAR with 10 real bodies at the residency.
//   v1.0  (prior)     Hysteresis gate, one of four identical instances.
// ═══════════════════════════════════════════════════════════════════════
 autowatch = 1;
 inlets = 1;
 outlets = 2;
 

var threshold = 5.5;   // metres — fires ABOVE this
var direction = 1;

var hold_ms = 6000;
var release_ms = 3000;

var condition_start = -1;
var fail_start = -1;
var state = 0;

function loadbang() {
	outlet(0, 0);
	outlet(1, 0.0);
}

function msg_float(val) {
	var now = new Date().getTime();
	var condition_met;

	if (direction === 0) {
		condition_met = (val < threshold);
	} else {
		condition_met = (val > threshold);
	}

	if (condition_met) {
		fail_start = -1;
		if (condition_start < 0) {
			condition_start = now;
		}
		var elapsed = now - condition_start;
		if (state === 0 && elapsed >= hold_ms) {
			state = 1;
			outlet(0, 1);
		}
		if (state === 0) {
			outlet(1, Math.round((elapsed / hold_ms) * 1000) / 1000);
		} else {
			outlet(1, 1.0);
		}
	} else {
		condition_start = -1;
		if (state === 1) {
			if (fail_start < 0) {
				fail_start = now;
			}
			var fail_elapsed = now - fail_start;
			if (fail_elapsed >= release_ms) {
				state = 0;
				fail_start = -1;
				outlet(0, 0);
				outlet(1, 0.0);
			} else {
				outlet(1, 1.0 - Math.round((fail_elapsed / release_ms) * 1000) / 1000);
			}
		} else {
			outlet(1, 0.0);
		}
	}
}

function set_threshold(val) {
	threshold = val;
	post("scatter: threshold = " + threshold + "\n");
}

function set_hold(val) {
	hold_ms = val;
	post("scatter: hold = " + hold_ms + "ms\n");
}

function set_release(val) {
	release_ms = val;
	post("scatter: release = " + release_ms + "ms\n");
}

function reset() {
	condition_start = -1;
	fail_start = -1;
	state = 0;
	outlet(0, 0);
	outlet(1, 0.0);
}