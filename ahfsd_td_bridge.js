// ═══════════════════════════════════════════════════════════════════════════
// AHFSD — TouchDesigner OSC bridge (ahfsd_td_bridge.js)
// ───────────────────────────────────────────────────────────────────────────
// Version log (newest first):
//   v1.2  2026-07-06  FIX — [prepend <label>] messages (e.g. "coherence
//                     0.82") arrive with the label as the Max message
//                     selector, NOT as a generic "list" message. Since no
//                     coherence()/velocity()/etc. functions were defined,
//                     every score/state message was routed to anything(),
//                     which only handled inlet 0 and returned immediately
//                     for everything else — silently dropping ALL score
//                     traffic before list() (which only fires for truly
//                     unlabeled numeric lists) ever saw it. Fix: anything()
//                     now handles inlet 1 directly, using messagename as the
//                     label. list() kept as a fallback for raw list-style
//                     messages, both now share handle_score(). Found during
//                     first IAS test session, after set_score_rate 1 still
//                     produced no output.
//   v1.1  2026-07-06  FIX — arrayfromargs(messagename, arguments) was
//                     prepending the OSC selector ("/rigidbody") onto the
//                     args array, shifting every index by one. Result: id
//                     picked up "/rigidbody" (→ malformed "/ahfsd/body/
//                     /rigidbody/position" double-slash address), x picked
//                     up the string "position", y/z picked up the real x/y,
//                     and the real z was silently dropped. Every body also
//                     collapsed onto the same broken address, so TD couldn't
//                     distinguish rigid bodies. Fix: arrayfromargs(arguments)
//                     only — no messagename prepend. Found during first IAS
//                     depth-camera test session.
//   v1.0  2026-06-24  Initial build. Two-inlet design:
//                     inlet 0 — rigidbody position messages from sim or OptiTrack
//                               format: /rigidbody <id> position <x> <y> <z>
//                     inlet 1 — behavioural score bundles from calculators
//                               format: list  <label> <value>  (e.g. "coherence 0.82")
//                     Outlet 0 — OSC messages to [udpsend] on TD_PORT (default 9000)
//                     Outlet 1 — status/log strings for [print] monitoring
//
// PURPOSE:
//   Leon/Stella (video / TouchDesigner) needs live OSC data to develop video patches
//   independently, without a live OptiTrack session. This bridge taps the same
//   rigidbody stream that feeds the audio calculators and re-emits it as UDP
//   OSC packets addressed to TouchDesigner's OSC-in DAT (port 9000 by default).
//   It also forwards the computed behavioural scores so TD can drive colour,
//   intensity, and visual state from the same high-level signals as audio+light.
//
// MAX PATCH WIRING:
//
//   [js ahfsd_behaviour_sim.js]  ← for pre-residency sim mode
//   (or [udpreceive 7000] from OptiTrack Motive)  ← for live mode
//        |
//        | (/rigidbody messages)
//        ↓
//   [js ahfsd_td_bridge.js]   ← inlet 0
//        |
//        ↓
//   [udpsend <td_ip> 9000]    ← outlet 0
//
//   Behavioural calculators (coherence, velocity, clustering, etc.)
//   each output a named value. Route all of them into inlet 1:
//
//   [js ahfsd_coherence.js]  →  [prepend coherence]  → inlet 1
//   [js ahfsd_velocity.js]   →  [prepend velocity]   → inlet 1
//   [js ahfsd_clustering.js] →  [prepend clustering] → inlet 1
//   [js ahfsd_variance.js]   →  [prepend variance]   → inlet 1
//   [js ahfsd_stillness.js]  →  [prepend stillness]  → inlet 1
//   [js ahfsd_presence.js]   →  [prepend presence]   → inlet 1
//   [js ahfsd_vertical.js]   →  [prepend vertical]   → inlet 1
//   [js ahfsd_disorder.js]   →  [prepend disorder]   → inlet 1
//
// OSC ADDRESSES EMITTED (for Leon/Stella's TD OSC-in DAT):
//
//   /ahfsd/body/<id>/position  x  y  z
//       — per-body 3D position, same coordinate system as IAS floor
//         x: left/right (-6 to +6 m)
//         y: front/back (-10.5 to +10.5 m)
//         z: height (0.2 to 3.0 m)
//
//   /ahfsd/score/coherence     0.0 – 1.0
//   /ahfsd/score/velocity      0.0 – 3.0+ m/s (avg group velocity)
//   /ahfsd/score/clustering    0.0 – ~10 m  (avg pairwise distance; low = tight)
//   /ahfsd/score/variance      0.0 – 4.0+   (velocity variance across bodies)
//   /ahfsd/score/stillness     0.0 – 1.0
//   /ahfsd/score/presence      0 – 20        (body count)
//   /ahfsd/score/vertical      0.0 – 1.0
//   /ahfsd/score/disorder      0.0 – 1.0
//
//   /ahfsd/state/empty         0.0 – 1.0  (controller state weights, computed here
//   /ahfsd/state/stillness     0.0 – 1.0   as a lightweight mirror of the controller
//   /ahfsd/state/mid           0.0 – 1.0   logic — gives Leon/Stella the same 5-state blend
//   /ahfsd/state/hi_chaotic    0.0 – 1.0   without requiring a separate controller
//   /ahfsd/state/hi_coh        0.0 – 1.0   OSC output)
//
// LIVE TUNING (send message boxes in Max):
//   set_td_port <port>     — change TD OSC port (default 9000; Leon/Stella may use 9001+)
//   set_body_rate <0|1>    — 0 = suppress body position OSC (scores only)
//                            1 = send all body positions (default)
//   set_score_rate <0|1>   — 0 = suppress score/state OSC (bodies only)
//                            1 = send scores (default)
//   status                 — print current config to Max console
//
// NOTE ON [udpsend] WIRING:
//   Max's [udpsend] object takes the IP and port at creation time (or via
//   "connect <ip> <port>" message). Since ahfsd_td_bridge.js outputs plain
//   OSC strings to outlet 0, you connect one [udpsend] per destination:
//
//   Mescaline (TD machine) IP on the IAS network: ask Leon/Stella / check with Eric.
//   For local testing (sim on same machine as TD):  127.0.0.1  port 9000
//
// ═══════════════════════════════════════════════════════════════════════════

autowatch = 1;
inlets  = 2;
outlets = 2;

// ─── config ──────────────────────────────────────────────────────────────────
var TD_PORT       = 9000;   // default TouchDesigner OSC-in port
var send_bodies   = 1;      // 1 = forward body positions, 0 = suppress
var send_scores   = 1;      // 1 = forward scores + states, 0 = suppress

// ─── score cache ─────────────────────────────────────────────────────────────
// Stores the last received value for each behavioural score.
// State weights are derived from these on every score update.
var scores = {
    coherence:  0,
    velocity:   0,
    clustering: 10,   // default open (no bodies)
    variance:   0,
    stillness:  0,
    presence:   0,
    vertical:   0,
    disorder:   0
};

// ─── smoothed state for state weight computation ──────────────────────────────
// Mirrors the controller's compute_states() logic (simplified).
// Uses the same axes: pn (presence norm), en (energy norm), co (coherence proxy).
// This lets TD receive the 5-state blend without wiring directly to the controller.
var sm_vel   = 0;
var sm_var   = 0;
var sm_clust = 10;
var sm_pres  = 0;
var sm_a     = 0.15;

// ─── inlet 0: rigidbody position messages ────────────────────────────────────
// Accepts: /rigidbody <id> position <x> <y> <z>
// (This is the format output by ahfsd_behaviour_sim.js and the OptiTrack pipeline.)
function anything() {
    // ── inlet 1: behavioural score messages ──────────────────────────────
    // v1.2 FIX: [prepend <label>] (e.g. [prepend coherence]) does NOT send a
    // message named "list" — it sends a message whose selector IS the label
    // itself ("coherence 0.82"). Max routes messages by selector name first;
    // since no coherence()/velocity()/etc. functions exist here, every score
    // message actually arrives at this generic anything() handler, on inlet 1.
    // The old code only handled inlet 0 here and returned immediately
    // otherwise, silently dropping every single score/state message before
    // list() (which only fires for genuinely unlabeled numeric lists) ever
    // saw them. Fix: handle inlet 1 right here, treating messagename as the
    // score label.
    if (inlet === 1) {
        handle_score(messagename, arguments[0]);
        return;
    }

    if (inlet !== 0) return;

    var args = arrayfromargs(arguments);
    // args[0] = body_id (int)
    // args[1] = "position"
    // args[2] = x, args[3] = y, args[4] = z
    // (v1.1 fix: do NOT prepend messagename here — arguments already excludes
    // the OSC selector "/rigidbody", which lives in messagename separately.
    // Prepending it shifted every index below by one.)

    // messagename is the OSC address (e.g. "/rigidbody")
    if (messagename !== "/rigidbody") return;
    if (args.length < 5) return;

    if (!send_bodies) return;

    var id = args[0];
    var x  = args[2];
    var y  = args[3];
    var z  = args[4];

    // Re-emit to TD with a clean AHFSD namespace
    // address: /ahfsd/body/<id>/position  x  y  z
    var addr = "/ahfsd/body/" + id + "/position";
    outlet(0, addr, x, y, z);
}

// ─── inlet 1: behavioural score bundles ──────────────────────────────────────
// Accepts: list  <label> <value>
// e.g. from [prepend coherence] → "coherence 0.82"
// Stores value, re-emits to TD, then recomputes state weights.
// list(): fallback for genuinely unlabeled list messages on inlet 1
// (e.g. "coherence 0.82" sent as a raw list rather than via [prepend]).
// Normal [prepend <label>] traffic is handled by anything() -> handle_score(),
// since prepend messages carry the label as their selector, not as "list".
function list() {
    if (inlet !== 1) return;

    var args = arrayfromargs(arguments);
    if (args.length < 2) return;

    handle_score(args[0], args[1]);
}

// handle_score: shared logic for caching + forwarding a single score value,
// regardless of whether it arrived via [prepend <label>] (-> anything()) or
// as a raw list (-> list()).
function handle_score(label, raw_value) {
    var value = parseFloat(raw_value);
    if (isNaN(value)) return;

    if (scores.hasOwnProperty(label)) {
        scores[label] = value;
    } else {
        // unknown label — still forward it with a generic address
        if (send_scores) {
            outlet(0, "/ahfsd/score/" + label, round3(value));
        }
        return;
    }

    if (!send_scores) return;

    // forward the raw score
    outlet(0, "/ahfsd/score/" + label, round3(value));

    // recompute state weights from cached scores and forward them
    emit_states();
}

// ─── state weight computation ─────────────────────────────────────────────────
// Mirrors ahfsd_controller.js compute_states() so TD gets the same 5-state blend.
// Called after every score update (cheap — just arithmetic).
function emit_states() {
    // update smoothed values (single step of exponential smoothing)
    sm_vel   = sm_vel   + sm_a * (scores.velocity   - sm_vel);
    sm_var   = sm_var   + sm_a * (scores.variance   - sm_var);
    sm_clust = sm_clust + sm_a * (scores.clustering - sm_clust);
    sm_pres  = sm_pres  + 0.6  * (scores.presence   - sm_pres);

    var pn = clamp(sm_pres / 20,   0, 1);
    var en = clamp(sm_vel  / 2.5,  0, 1);
    // coherence proxy: tight cluster + low variance = coherent
    var co = (1 - clamp(sm_clust / 10.0, 0, 1)) * (1 - clamp(sm_var / 1.5, 0, 1));

    var mid_shape = 4 * en * (1 - en);  // parabola peak at en=0.5

    var we = (1 - pn) * (1 - pn);
    var ws = pn * (1 - en);
    var wm = pn * mid_shape * co;
    var wc = pn * en * (1 - co);
    var wh = pn * en * co;

    var total = we + ws + wm + wc + wh;
    if (total < 0.001) total = 0.001;

    outlet(0, "/ahfsd/state/empty",      round3(we / total));
    outlet(0, "/ahfsd/state/stillness",  round3(ws / total));
    outlet(0, "/ahfsd/state/mid",        round3(wm / total));
    outlet(0, "/ahfsd/state/hi_chaotic", round3(wc / total));
    outlet(0, "/ahfsd/state/hi_coh",     round3(wh / total));
}

// ─── live tuning messages ─────────────────────────────────────────────────────
function set_td_port(p) {
    TD_PORT = parseInt(p);
    outlet(1, "td_bridge: TD_PORT set to " + TD_PORT + " (rewire [udpsend] to match)\n");
}

function set_body_rate(v) {
    send_bodies = parseInt(v) ? 1 : 0;
    outlet(1, "td_bridge: body position OSC " + (send_bodies ? "ON" : "OFF") + "\n");
}

function set_score_rate(v) {
    send_scores = parseInt(v) ? 1 : 0;
    outlet(1, "td_bridge: score/state OSC " + (send_scores ? "ON" : "OFF") + "\n");
}

function status() {
    outlet(1, "── ahfsd_td_bridge status ──\n");
    outlet(1, "  TD_PORT     : " + TD_PORT + "\n");
    outlet(1, "  send_bodies : " + send_bodies + "\n");
    outlet(1, "  send_scores : " + send_scores + "\n");
    outlet(1, "  scores cache: " + JSON.stringify(scores) + "\n");
}

// ─── helpers ─────────────────────────────────────────────────────────────────
function clamp(v, lo, hi) {
    return v < lo ? lo : v > hi ? hi : v;
}

function round3(v) {
    return Math.round(v * 1000) / 1000;
}