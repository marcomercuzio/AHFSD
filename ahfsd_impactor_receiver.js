autowatch = 1;
inlets = 1;
outlets = 2;

function anything() {
	var full = arrayfromargs(messagename, arguments);
	var msg;
	if (full.length === 1 && typeof full[0] === "string") {
		msg = full[0];
	} else {
		msg = full.join(" ");
	}

	var parts = msg.split(" ");
	var address = parts[0];

	if (address === "/impactor/trigger") {
		var note = 36;
		var vel = 100;
		if (parts.length > 1) note = parseInt(parts[1]);
		if (parts.length > 2) vel = parseInt(parts[2]);
		outlet(0, note);
		outlet(1, vel);
	}
}