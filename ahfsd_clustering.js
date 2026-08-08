autowatch = 1;
outlets = 3;

var dict_name = "ahfsd_bodies";

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
		outlet(1, 0.0);
		outlet(2, 0.0);
		return;
	}

	var xs = [];
	var ys = [];

	for (var i = 0; i < keys.length; i++) {
		var id = keys[i];
		var cx = d.get("body::" + id + "::position::x");
		var cy = d.get("body::" + id + "::position::y");
		if (cx === null || cy === null) continue;
		xs.push(cx);
		ys.push(cy);
	}

	if (xs.length < 2) {
		outlet(0, 0.0);
		outlet(1, 0.0);
		outlet(2, 0.0);
		return;
	}

	var total_dist = 0;
	var min_dist = Infinity;
	var max_dist = 0;
	var pair_count = 0;

	for (var i = 0; i < xs.length; i++) {
		for (var j = i + 1; j < xs.length; j++) {
			var dx = xs[i] - xs[j];
			var dy = ys[i] - ys[j];
			var dist = Math.sqrt(dx * dx + dy * dy);

			total_dist += dist;
			pair_count++;

			if (dist < min_dist) min_dist = dist;
			if (dist > max_dist) max_dist = dist;
		}
	}

	var avg_dist = total_dist / pair_count;

	avg_dist = Math.round(avg_dist * 1000) / 1000;
	min_dist = Math.round(min_dist * 1000) / 1000;
	max_dist = Math.round(max_dist * 1000) / 1000;

	outlet(0, avg_dist);
	outlet(1, min_dist);
	outlet(2, max_dist);
}

function clear() {
	// nothing to reset, all computed from live dict
}