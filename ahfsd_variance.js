autowatch = 1;
outlets = 1;

var dict_name = "ahfsd_bodies";
var delta_t = 0.05;

var prev_x = {};
var prev_y = {};
var prev_z = {};

function bang() {
	var d = new Dict(dict_name);
	var body;
	try {
		body = d.get("body");
	} catch(e) {
		return;
	}
	if (!body) return;

	var keys;
	try {
		keys = body.getkeys();
	} catch(e) {
		return;
	}
	if (!keys) return;
	if (typeof keys === "string") keys = [keys];
	if (keys.length < 2) {
		outlet(0, 0.0);
		return;
	}

	var vels = [];

	for (var i = 0; i < keys.length; i++) {
		var id = keys[i];
		var cx = d.get("body::" + id + "::position::x");
		var cy = d.get("body::" + id + "::position::y");
		var cz = d.get("body::" + id + "::position::z");

		if (cx === null || cy === null || cz === null) continue;

		if (prev_x.hasOwnProperty(id)) {
			var dx = cx - prev_x[id];
			var dy = cy - prev_y[id];
			var dz = cz - prev_z[id];
			var dist = Math.sqrt(dx*dx + dy*dy + dz*dz);
			var vel = dist / delta_t;
			vels.push(vel);
		}

		prev_x[id] = cx;
		prev_y[id] = cy;
		prev_z[id] = cz;
	}

	if (vels.length < 2) {
		outlet(0, 0.0);
		return;
	}

	var sum = 0;
	for (var i = 0; i < vels.length; i++) {
		sum += vels[i];
	}
	var mean = sum / vels.length;

	var sq_diff_sum = 0;
	for (var i = 0; i < vels.length; i++) {
		var diff = vels[i] - mean;
		sq_diff_sum += diff * diff;
	}
	var variance = sq_diff_sum / vels.length;

	variance = Math.round(variance * 10000) / 10000;
	outlet(0, variance);
}

function msg_float(dt) {
	delta_t = dt;
}

function clear() {
	prev_x = {};
	prev_y = {};
	prev_z = {};
}