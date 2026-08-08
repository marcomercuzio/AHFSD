autowatch = 1;
inlets = 1;
outlets = 2;

var threshold = 0.5;
var direction = 0;
var hold_ms = 5000;
var release_ms = 2000;

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
	post("stillness: threshold = " + threshold + "\n");
}

function set_hold(val) {
	hold_ms = val;
	post("stillness: hold = " + hold_ms + "ms\n");
}

function set_release(val) {
	release_ms = val;
	post("stillness: release = " + release_ms + "ms\n");
}

function reset() {
	condition_start = -1;
	fail_start = -1;
	state = 0;
	outlet(0, 0);
	outlet(1, 0.0);
}