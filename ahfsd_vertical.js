autowatch = 1;
outlets = 6;

var dict_name = "ahfsd_bodies";

var low_ceiling = 0.8;
var mid_ceiling = 1.8;

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

	var zs = [];
	var count_low = 0;
	var count_mid = 0;
	var count_high = 0;

	for (var i = 0; i < keys.length; i++) {
		var id = keys[i];
		var cz = d.get("body::" + id + "::position::z");
		if (cz === null) continue;
		zs.push(cz);

		if (cz < low_ceiling) {
			count_low++;
		} else if (cz < mid_ceiling) {
			count_mid++;
		} else {
			count_high++;
		}
	}

	if (zs.length < 1) {
		outlet(0, 0.0);
		outlet(1, 0.0);
		outlet(2, 0.0);
		outlet(3, 0);
		outlet(4, 0);
		outlet(5, 0);
		return;
	}

	var sum = 0;
	var min_z = Infinity;
	var max_z = -Infinity;

	for (var i = 0; i < zs.length; i++) {
		sum += zs[i];
		if (zs[i] < min_z) min_z = zs[i];
		if (zs[i] > max_z) max_z = zs[i];
	}

	var avg_z = sum / zs.length;
	var z_range = max_z - min_z;

	var sq_diff_sum = 0;
	for (var i = 0; i < zs.length; i++) {
		var diff = zs[i] - avg_z;
		sq_diff_sum += diff * diff;
	}
	var z_variance = sq_diff_sum / zs.length;

	avg_z = Math.round(avg_z * 1000) / 1000;
	z_range = Math.round(z_range * 1000) / 1000;
	z_variance = Math.round(z_variance * 10000) / 10000;

	outlet(0, avg_z);
	outlet(1, z_range);
	outlet(2, z_variance);
	outlet(3, count_low);
	outlet(4, count_mid);
	outlet(5, count_high);
}

function set_low_ceiling(val) {
	low_ceiling = val;
	post("vertical: low zone ceiling = " + low_ceiling + "m\n");
}

function set_mid_ceiling(val) {
	mid_ceiling = val;
	post("vertical: mid zone ceiling = " + mid_ceiling + "m\n");
}

function reset_zones() {
	low_ceiling = 0.8;
	mid_ceiling = 1.8;
	post("vertical: zones reset to defaults (low < 0.8m, mid < 1.8m)\n");
}