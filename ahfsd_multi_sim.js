autowatch = 1;
outlets = 1;

var num_bodies = 5;
var speed = 0.08;

var x_min = -6.0, x_max = 6.0;
var y_min = -10.5, y_max = 10.5;
var z_min = 0.5, z_max = 3.0;

var pos_x = [];
var pos_y = [];
var pos_z = [];
var tgt_x = [];
var tgt_y = [];
var tgt_z = [];

function loadbang() {
	init();
}

function msg_int(n) {
	num_bodies = Math.max(1, Math.min(n, 40));
	init();
	post("multi sim: " + num_bodies + " bodies\n");
}

function init() {
	pos_x = []; pos_y = []; pos_z = [];
	tgt_x = []; tgt_y = []; tgt_z = [];
	for (var i = 0; i < num_bodies; i++) {
		pos_x[i] = rand(x_min, x_max);
		pos_y[i] = rand(y_min, y_max);
		pos_z[i] = rand(z_min, z_max);
		tgt_x[i] = rand(x_min, x_max);
		tgt_y[i] = rand(y_min, y_max);
		tgt_z[i] = rand(z_min, z_max);
	}
}

function bang() {
	for (var i = 0; i < num_bodies; i++) {
		var dx = tgt_x[i] - pos_x[i];
		var dy = tgt_y[i] - pos_y[i];
		var dz = tgt_z[i] - pos_z[i];
		var dist = Math.sqrt(dx*dx + dy*dy + dz*dz);

		if (dist < 0.3) {
			tgt_x[i] = rand(x_min, x_max);
			tgt_y[i] = rand(y_min, y_max);
			tgt_z[i] = rand(z_min, z_max);
		} else {
			var step = speed + Math.random() * 0.04;
			pos_x[i] += (dx / dist) * step;
			pos_y[i] += (dy / dist) * step;
			pos_z[i] += (dz / dist) * step;
		}

		var body_id = i + 1;
		var px = Math.round(pos_x[i] * 1000) / 1000;
		var py = Math.round(pos_y[i] * 1000) / 1000;
		var pz = Math.round(pos_z[i] * 1000) / 1000;
		outlet(0, "/rigidbody", body_id, "position", px, py, pz);
	}
}

function rand(lo, hi) {
	return lo + Math.random() * (hi - lo);
}