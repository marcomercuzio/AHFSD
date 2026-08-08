autowatch = 1;
outlets = 2;

var dict_name = "ahfsd_bodies";
var delta_t = 0.05;

var prev_x = {};
var prev_y = {};
var prev_z = {};
var velocities = {};

function bang() {
	var d = new Dict(dict_name);
	var body = d.get("body");
	if (!body) return;

	var keys = body.getkeys();
	if (!keys) return;
	if (typeof keys === "string") keys = [keys];

	var total_vel = 0;
	var count = 0;

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
			velocities[id] = vel;
			total_vel += vel;
			count++;
		}

		prev_x[id] = cx;
		prev_y[id] = cy;
		prev_z[id] = cz;
	}

	if (count > 0) {
		var avg_vel = total_vel / count;
		avg_vel = Math.round(avg_vel * 1000) / 1000;
		outlet(0, avg_vel);

		var vel_list = [];
		for (var j = 0; j < keys.length; j++) {
			if (velocities.hasOwnProperty(keys[j])) {
				vel_list.push(parseInt(keys[j]));
				vel_list.push(Math.round(velocities[keys[j]] * 1000) / 1000);
			}
		}
		outlet(1, vel_list);
	}
}

function msg_float(dt) {
	delta_t = dt;
	post("velocity delta_t set to: " + delta_t + "\n");
}

function clear() {
	prev_x = {};
	prev_y = {};
	prev_z = {};
	velocities = {};
	post("velocity calculator cleared\n");
}