autowatch = 1;
outlets = 3;

var dict_name = "ahfsd_bodies";
var proximity = 0.5;

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
		outlet(0, 0);
		outlet(1, 0.0);
		return;
	}

	var xs = [];
	var ys = [];
	var ids = [];

	for (var i = 0; i < keys.length; i++) {
		var id = keys[i];
		var cx = d.get("body::" + id + "::position::x");
		var cy = d.get("body::" + id + "::position::y");
		if (cx === null || cy === null) continue;
		xs.push(cx);
		ys.push(cy);
		ids.push(id);
	}

	if (ids.length < 2) {
		outlet(0, 0);
		outlet(1, 0.0);
		return;
	}

	var pair_count = 0;
	var closest_dist = Infinity;
	var closest_a = -1;
	var closest_b = -1;
	var pairs = [];

	for (var i = 0; i < ids.length; i++) {
		for (var j = i + 1; j < ids.length; j++) {
			var dx = xs[i] - xs[j];
			var dy = ys[i] - ys[j];
			var dist = Math.sqrt(dx * dx + dy * dy);

			if (dist < closest_dist) {
				closest_dist = dist;
				closest_a = ids[i];
				closest_b = ids[j];
			}

			if (dist < proximity) {
				pair_count++;
				pairs.push(parseInt(ids[i]));
				pairs.push(parseInt(ids[j]));
				pairs.push(Math.round(dist * 1000) / 1000);
			}
		}
	}

	closest_dist = Math.round(closest_dist * 1000) / 1000;

	outlet(0, pair_count);
	outlet(1, closest_dist, parseInt(closest_a), parseInt(closest_b));

	if (pairs.length > 0) {
		outlet(2, pairs);
	}
}

function set_proximity(val) {
	proximity = val;
	post("relational: proximity threshold = " + proximity + "m\n");
}