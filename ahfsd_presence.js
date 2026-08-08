var dict_name = "ahfsd_bodies";
var timeout = 1000;
var body_ids = [1, 2, 3, 4, 5];

function list() {
	var a = arrayfromargs(arguments);
	body_ids = a;
	post("body_ids set to: " + body_ids + "\n");
}

function msg_float(now) {
	var d = new Dict(dict_name);
	var body = d.get("body");
	if (!body) {
		outlet(0, 0);
		return;
	}
	var keys = body.getkeys();
	if (!keys) {
		outlet(0, 0);
		return;
	}
	if (typeof keys === "string") {
		keys = [keys];
	}
	var count = 0;
	for (var i = 0; i < keys.length; i++) {
		var ts = d.get("body::" + keys[i] + "::last_seen");
		if (ts && (now - ts) < timeout) {
			count++;
		}
	}
	outlet(0, count);
}