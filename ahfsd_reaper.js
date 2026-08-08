// ═══════════════════════════════════════════════════════════════════════════
// AHFSD — body reaper (ahfsd_reaper.js)
// ───────────────────────────────────────────────────────────────────────────
// PURPOSE
//   Fixes the "frozen ghost body" bug: when a rigid body drops out of tracking
//   its OSC stops arriving, so its position stays frozen at the last value and
//   every metric that trusts the Dict (min_dist, z-range, clustering, variance…)
//   keeps counting a body that isn't really there.
//
//   This reaper is the single source of truth for "is this body alive?". It
//   bangs periodically, checks each body's `last_seen` stamp, and — after a
//   DEBOUNCE BUFFER of continuous silence — removes the body from ahfsd_bodies.
//   After the reaper runs, clustering / vertical / variance / velocity / etc.
//   automatically see only live bodies — no change needed in those files.
//
// WHY last_seen ONLY (and not a Motive `tracked` flag)
//   `last_seen` is the ONE signal that behaves identically for the simulator and
//   the real OptiTrack stream, and for EVERY cause of loss (marker masked, solve
//   lost, network drop, body deleted): in all cases the body's OSC simply stops,
//   so its last_seen goes stale. We don't need Motive to TELL us a body dropped —
//   the silence is the signal. (presence.js already relies on this same check.)
//
//   The BUFFER is required regardless of any flag: a one-frame drop is noise, not
//   a departure, so we must wait before culling. Even a perfect per-frame
//   `tracked 0` from Motive would still need this debounce. A `tracked` flag is
//   therefore only ever a LATENCY optimisation on top of this — a prioritised
//   IAS TODO, not part of the fix.
//
// DICT FIELD READ
//   body::<id>::last_seen   — ms timestamp, written by the ingestion sprintf
//                             chain via cpuclock (real) / Date().getTime() (sim).
//
// INLET  (1)
//   bang            — run one reap pass. Drive from a [metro] (e.g. 200 ms), or
//                     from the same tick that bangs the metrics — but run the
//                     reaper FIRST so the metrics read an already-cleaned Dict.
//   set_now <ms>    — supply "now" from the SAME clock that writes last_seen.
//                     The ingestion uses cpuclock, so if last_seen is stamped by
//                     cpuclock, feed cpuclock here via [set_now $1] just before
//                     the bang, so the deltas are on the same clock. If never
//                     sent, Date().getTime() is used (fine when last_seen is also
//                     Date-based, e.g. a pure-JS sim path).
//
// MESSAGES
//   set_buffer <ms>   — silence window before a body is culled (default 2500,
//                       matching the sustain-state detector). Math.max(1,) guard.
//                       This is BOTH the "ignore brief masks" debounce AND the
//                       "how long is silence" window — one knob, double duty.
//   verbose <0|1>     — post a line whenever a body is culled or returns.
//   reset             — clear debounce timers (does not touch the Dict).
//
// OUTLETS  (2)
//   0  — culled body id (int), one message per body removed this pass
//   1  — live body count (int) after this pass  → wire to a number box readout
//
// Version log (newest first):
//   v1.0  2026-07-24  Initial build — last_seen-only, debounced cull, BUFFER
//                     default 2500 ms. Universal: identical behaviour for the
//                     simulator and the OptiTrack stream. (An authoritative
//                     Motive `tracked` flag can be layered on later as a latency
//                     upgrade — verify the real OSC format at the IAS first.)
// ═══════════════════════════════════════════════════════════════════════════

autowatch = 1;
inlets = 1;
outlets = 2;

var dict_name = "ahfsd_bodies";

var BUFFER = 2500;     // ms of continuous silence before a body is culled
var verbose_flag = 0;
var ext_now = -1;      // external clock (e.g. cpuclock) for the next bang; -1 = Date()

function loadbang() {
	outlet(1, 0);
}

function set_buffer(v) {
	BUFFER = Math.max(1, v);
	post("reaper: buffer = " + BUFFER + " ms\n");
}

function set_now(v) {
	ext_now = v;   // consumed (and reset) by the next bang
}

function verbose(v) {
	verbose_flag = (v != 0) ? 1 : 0;
}

function reset() {
	post("reaper: (no internal timers to clear — last_seen is the timer)\n");
}

function bang() {
	var now = (ext_now >= 0) ? ext_now : new Date().getTime();
	ext_now = -1;   // one-shot; fall back to Date() next time unless refreshed

	var d = new Dict(dict_name);

	var body;
	try { body = d.get("body"); } catch (e) { outlet(1, 0); return; }
	if (!body) { outlet(1, 0); return; }

	var keys;
	try { keys = body.getkeys(); } catch (e) { outlet(1, 0); return; }
	if (!keys) { outlet(1, 0); return; }
	if (typeof keys === "string") keys = [keys];

	var live = 0;

	for (var i = 0; i < keys.length; i++) {
		var id = keys[i];

		var ts = d.get("body::" + id + "::last_seen");

		// last_seen IS the debounce timer: age = how long since the body last
		// updated. A brief marker mask keeps age small (the next frame refreshes
		// last_seen); a genuine drop lets age grow past BUFFER. No separate
		// accumulator — that would double-count the window (cull at 2xBUFFER).
		var age;
		if (ts === null || ts === undefined) {
			age = Infinity;                 // no stamp → treat as long gone
		} else {
			age = now - ts;
		}

		if (age >= BUFFER) {
			// genuinely gone → cull from the Dict so all metrics stop seeing it
			try { d.remove("body::" + id); } catch (e) {}
			outlet(0, parseInt(id));
			if (verbose_flag) post("reaper: body " + id + " culled (silent " + age + " ms)\n");
		} else {
			live++;
		}
	}

	outlet(1, live);
}