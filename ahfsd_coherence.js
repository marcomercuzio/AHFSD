// ═══════════════════════════════════════════════════════════════════════
// AHFSD — gathering gate (ahfsd_coherence.js)
// ───────────────────────────────────────────────────────────────────────
//   v1.1  2026-07-28  Threshold 4.0 -> 3.0 m. At 4.0 the gate sat barely
//                     below the mean pairwise distance of a RANDOMLY
//                     distributed crowd of 10 in the reliably tracked area
//                     (~4.5 m), so it fired on chance rather than on
//                     intention. A genuine gather reads ~2.1 m (10 bodies
//                     within 4 x 4 m). 3.0 catches a real but not tight
//                     gather and leaves a dead band up to scatter's 5.5.
//                     Timing unchanged; scatter now mirrors it at 6000/3000.
//                     NOTE: the module name is load-bearing (the patch loads
//                     it by filename). In the thesis this quantity is called
//                     GATHERING — it measures closeness only, not agreement
//                     in speed, which is the separate composite in the
//                     controller. See Ch.3 B.2.
//                     CALIBRATE BY EAR at the residency.
//   v1.0  (prior)     Hysteresis gate, one of four identical instances.
// ═══════════════════════════════════════════════════════════════════════
autowatch = 1;
inlets = 1;
outlets = 2;
 

var threshold = 3.0;   // metres — fires BELOW this
var direction = 0;
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
	post("coherence: threshold = " + threshold + "\n");
}

function set_hold(val) {
	hold_ms = val;
	post("coherence: hold = " + hold_ms + "ms\n");
}

function set_release(val) {
	release_ms = val;
	post("coherence: release = " + release_ms + "ms\n");
}

function reset() {
	condition_start = -1;
	fail_start = -1;
	state = 0;
	outlet(0, 0);
	outlet(1, 0.0);
}