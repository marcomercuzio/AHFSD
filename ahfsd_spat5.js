// ═══════════════════════════════════════════════════════════════════════════
// AHFSD — SPAT5 spatial controller (ahfsd_spat5.js)
// ───────────────────────────────────────────────────────────────────────────
// // Version log (newest first):
//   v2.2  2026-07-10  Flock attraction: the flock centroid pulls designated
//                     sources (default Details 5-6) toward it, weighted by
//                     attract[n] · sm_flock — the room leans into the wake.
//                     Live tuning: set_attract <src> <0-1>.
//   v2.1  2026-07-10// NaN armour: set_flock_rise/fall reject non-numeric args;
//                     emit_aed/emit_xyz refuse to send NaN to spat5.oper
//                     (warns once instead of flooding the console).  
//					   Flock glide: new sm_flock smoothed weight with asymmetric
//                     FLOCK_RISE / FLOCK_FALL. flock_weight() now returns
//                     sm_flock, so set_flock 0 (or hi_coh fading) GLIDES the
//                     flock home instead of snapping. Live tuning messages:
//                     set_flock_rise <f> / set_flock_fall <f>.
//   v2.0  2026-07-09  Full rebuild for the dict-based patch (002_RB_RoomTestSpat):
//                     — Base positions are CAPTURED from sources_position.json
//                       (tap the o.atomize output of [dict source_pos_import]
//                       into inlet 0). The js never invents positions: it
//                       modulates relative to whatever you drew in the viewer.
//                     — Sends NO speaker config and NO /source/number (the
//                       patch @initwith handles all of that).
//                     — NEW BlackHole/source map (Portal now 15-16, Ret E
//                       21-22, Ret F beds-dup 31-32, Send H boids 23-24).
//                     — Per-source MODE system: static / collapse / details /
//                       impactor / rete / flock. Static sources are never
//                       touched by the js (dict position stands).
//                     — spat5.boids integration: boid xyz arrives on inlet 1
//                       as "boid <i> <x> <y> <z>"; flock sources crossfade
//                       between their dict base and the boid position,
//                       weighted by the hi_coh score (the flock is RELEASED
//                       when the crowd coheres — never engineered).
//                     — Impactor fire now also drives Return E (21-22): the
//                       hit lands as a point from a random azimuth, its tail
//                       blooms wide (±60°) and elevated (+25°) from the same
//                       direction.
//                     — Change-detection on every emit: a source's position
//                       is only re-sent when it actually moved (>0.01), so
//                       this js can coexist with boids and manual edits
//                       without flooding spat5.oper.
//   v1.2  2026-07-08  IAS config, 22 inputs. (obsolete — wrong speaker count)
//   v1.1  2026-06-25  Rama-reference wiring. v1.0 2026-06-25 initial.
//
// ─── MAX PATCH WIRING GUIDE (002_RB_RoomTestSpat) ────────────────────────────
//
// ── CONTROL CHAIN ────────────────────────────────────────────────────────────
//
//   [loadbang] → [deferlow] → nothing needed here: base capture is passive.
//   OPTIONAL   [metro 100] → [js] inlet 0 (bang) — keeps smoothing alive when
//              no scores are flowing. Recommended.
//
//   BASE CAPTURE (required — this replaces the old hardcoded table):
//   [dict source_pos_import ...] → [o.atomize]
//        ├── (existing cord to spat5.oper — keep it)
//        └── NEW cord → [js ahfsd_spat5.js] inlet 0
//   The js stores every /source/<n>/aed (or /xyz) it sees as that source's
//   base. Re-import the JSON any time; the js adopts the new layout.
//   NOTE: o.atomize outputs plain Max messages, so js can read them directly.
//
//   SCORES (same [prepend] chain as ahfsd_td_bridge.js — mult the cords):
//   [js ahfsd_presence.js]   → [prepend presence]   → inlet 1
//   [js ahfsd_velocity.js]   → [prepend velocity]   → inlet 1
//   [js ahfsd_clustering.js] → [prepend clustering] → inlet 1
//   [js ahfsd_variance.js]   → [prepend variance]   → inlet 1
//   [js ahfsd_stillness.js]  → [prepend stillness]  → inlet 1
//   [js ahfsd_coherence.js]  → [prepend coherence]  → inlet 1
//   [js ahfsd_vertical.js]   → [prepend vertical]   → inlet 1
//   [js ahfsd_disorder.js]   → [prepend disorder]   → inlet 1
//   hi_coh state weight (sw_hi_coh from the controller, or a number box
//   0–1 while testing)       → [prepend hicoh]      → inlet 1
//   collapse amount          → [prepend collapse]   → inlet 1
//
//   BOIDS (Send H, sources 23-24):
//   [spat5.boids @initwith "/point/number 2"]
//        ← [metro 33] → [/move(          ← [p controls] (your params bpatcher)
//        outlet 0 (FullPacket, /point/<i>/xyz)
//        → [o.route /point/1/xyz /point/2/xyz]
//             outlet 0 (x y z) → [prepend boid 1] → [js] inlet 1
//             outlet 1 (x y z) → [prepend boid 2] → [js] inlet 1
//   (If o.route refuses the full address in one hop, cascade instead:
//    [o.route /point] → [o.route /1 /2] → [o.route /xyz] per branch.)
//   Set /point/number to match the number of flock sources (default 2).
//   Suggested flyrect for a start: -1 1 1 -1 1 -1 (unit-ish box) and let
//   flock_scale in here map it to metres. Calibrate live in the viewer.
//
//   OUTPUT:
//   [js] outlet 0 → [spat5.oper] inlet 0   (plain /source/N/aed | /xyz msgs)
//   [js] outlet 1 → [print spat5]
//
// ── LIVE TUNING (message boxes → inlet 0) ────────────────────────────────────
//   init                    — re-emit all owned positions now
//   status                  — print state to console
//   bases                   — print all captured base positions
//   reset                   — reset smoothing / impactor / manual overrides
//   impactor_fire           — randomise impactor azimuth (fires Ret E too)
//   set_collapse <0-1>      — manual collapse override
//   set_vertical <0-1>      — manual vertical override
//   set_flock <0-1>         — manual flock weight (testing); set_flock -1 = auto
//   set_flock_sources <n..> — which sources the boids own (default 23 24)
//   set_flock_scale <m>     — metres per boids unit (default 2.5)
//   set_flock_zoffset <m>   — vertical offset added to boid z (default 1.2)
//   set_az_cw <0|1>         — azimuth sign convention for aed→xyz (default 1 =
//                             positive azimuth clockwise/right). If the flock's
//                             resting position appears MIRRORED left-right in
//                             the viewer relative to the dict position, flip it.
//   set_mode <src> <mode>   — mode ∈ static collapse details impactor rete flock
//
// ─── SOURCE INDEX (BlackHole → SPAT5 mono sources, confirmed 2026-07-09) ─────
//   Beds           1-2      collapse      (Ret F duplicates these at 31-32)
//   Textures       3-4      collapse
//   Details        5-6      details       (clustering-driven spread)
//   Melodic        7-8      collapse
//   Impactor       9-10     impactor      (random azimuth per fire)
//   Live/Mercuzio 11-12     static        (performer always locatable)
//   Ret A grain   13-14     collapse
//   Ret B portal  15-16     collapse
//   Ret C hybrid  17-18     collapse
//   Ret D convol  19-20     collapse
//   Ret E imp.ret 21-22     rete          (blooms from impactor azimuth)
//   Send H boids  23-24     flock         (25-28 reserved for flock expansion)
//   Send G sub    29        static        (mono; bypasses HOA at IAS — route
//                                          straight to the sub Dante channel)
//   (spare)       30        static
//   Ret F bedsdup 31-32     collapse      (zenith copy of Beds)
//
// ─── COORDINATES ─────────────────────────────────────────────────────────────
//   AED: azimuth°, elevation°, distance m — as configured in your dict/viewer.
//   XYZ: SPAT5 cartesian, as emitted by spat5.boids. Flock sources are emitted
//   as /source/N/xyz (crossfaded in xyz domain — no angle-wrap artefacts).
// ═══════════════════════════════════════════════════════════════════════════

autowatch = 1;
inlets  = 2;
outlets = 2;

var VERSION = "2.2";
var N_SRC = 32;

// ─── azimuth sign convention for aed↔xyz conversion ──────────────────────────
// az_cw = 1 : positive azimuth clockwise (to the right), x=right y=front z=up
// az_cw = 0 : positive azimuth counterclockwise (to the left)
var az_cw = 1;

// ─── per-source mode ──────────────────────────────────────────────────────────
var M_STATIC = 0, M_COLLAPSE = 1, M_DETAILS = 2, M_IMPACTOR = 3, M_RETE = 4, M_FLOCK = 5;
var MODE_NAMES = ["static", "collapse", "details", "impactor", "rete", "flock"];

var mode = new Array(N_SRC + 1);
function default_modes() {
    var i;
    for (i = 0; i <= N_SRC; i++) mode[i] = M_STATIC;
    mode[1] = mode[2] = M_COLLAPSE;               // Beds
    mode[3] = mode[4] = M_COLLAPSE;               // Textures
    mode[5] = mode[6] = M_DETAILS;                // Details
    mode[7] = mode[8] = M_COLLAPSE;               // Melodic
    mode[9] = mode[10] = M_IMPACTOR;              // Impactor
    // 11-12 Live: static
    mode[13] = mode[14] = M_COLLAPSE;             // Ret A
    mode[15] = mode[16] = M_COLLAPSE;             // Ret B Portal
    mode[17] = mode[18] = M_COLLAPSE;             // Ret C
    mode[19] = mode[20] = M_COLLAPSE;             // Ret D
    mode[21] = mode[22] = M_RETE;                 // Ret E — impactor bloom
    mode[23] = mode[24] = M_FLOCK;                // Send H boids
    // 25-30 static (reserved / sub / spare)
    mode[31] = mode[32] = M_COLLAPSE;             // Ret F beds dup (zenith)
}
default_modes();

// ─── base positions — CAPTURED from the dict, never hardcoded ────────────────
var base = new Array(N_SRC + 1);   // base[n] = {az, el, dist} or undefined
var warned_nobase = {};            // warn once per missing source

// ─── behavioural score cache ──────────────────────────────────────────────────
var scores = {
    presence: 0, velocity: 0, clustering: 10, variance: 0,
    stillness: 0, coherence: 0, vertical: 0, disorder: 0,
    collapse: 0, hicoh: 0
};

// ─── smoothed state ───────────────────────────────────────────────────────────
var SM_A        = 0.1;     // generic smoothing per update
var HICOH_RISE  = 0.06;    // flock emerges gradually...
var HICOH_FALL  = 0.015;   // ...and lingers when coherence fades
var sm_collapse   = 0;
var sm_vertical   = 0;
var sm_clustering = 10;
var sm_hicoh      = 0;

// ─── impactor ─────────────────────────────────────────────────────────────────
var impactor_az = 0;
var IMP_PAIR_SPREAD  = 4;    // impactor L/R half-spread (near-point)
var RETE_SPREAD      = 60;   // Ret E half-spread — the bloom
var RETE_EL_LIFT     = 25;   // Ret E elevation above its dict base

// ─── flock (boids) ───────────────────────────────────────────────────────────
var flock_srcs   = [23, 24];   // boid i → flock_srcs[i-1]
var boid_xyz     = {};         // boid index → [x, y, z] (raw boids units)
var flock_manual = -1;         // -1 = auto (hi_coh driven); 0-1 = manual
var flock_scale  = 2.5;        // metres per boids unit
var flock_zoff   = 1.2;        // metres added to boid z (lift off the floor)
var FLOCK_ON     = 0.25;       // sm_hicoh where the flock starts to release
var FLOCK_FULL   = 0.75;       // sm_hicoh where boids fully own the sources
var sm_flock     = 0;          // v2.1: smoothed flock weight — THE glide
var FLOCK_RISE   = 0.08;       // per update step: flock releases in a few s
var FLOCK_FALL   = 0.03;       // glide home, slower — tune by ear (set_flock_fall)

// ─── flock attraction (v2.2): the flock centroid pulls other sources ────────
var attract = new Array(N_SRC + 1);
for (var _i = 0; _i <= N_SRC; _i++) attract[_i] = 0;
attract[5] = attract[6] = 0.25;   // Details lean into the flock's wake

// ─── emit cache (change detection) ────────────────────────────────────────────
var EPS_EMIT = 0.01;
var last_emit = new Array(N_SRC + 1);   // [fmt, a, b, c]

// ═══════════════════════════════════════════════════════════════════════════
// INLETS
// ═══════════════════════════════════════════════════════════════════════════

function bang() {
    if (inlet !== 0) return;
    update_positions();
}

function anything() {
    var args = arrayfromargs(arguments);

    // ── inlet 1: scores + boids from [prepend <label>] ────────────────────
    if (inlet === 1) {
        if (messagename === "boid") {
            handle_boid(args);
        } else {
            handle_score(messagename, parseFloat(args[0]));
        }
        return;
    }

    // ── inlet 0 ──────────────────────────────────────────────────────────────
    // base capture: /source/<n>/aed  or  /source/<n>/xyz  from the dict tap
    var m = String(messagename).match(/^\/source\/(\d+)\/(aed|xyz)$/);
    if (m) {
        capture_base(parseInt(m[1], 10), m[2], args);
        return;
    }

    // live tuning messages
    switch (messagename) {
        case "init":            update_positions(true);  break;
        case "status":          print_status();          break;
        case "bases":           print_bases();           break;
        case "reset":           do_reset();              break;
        case "impactor_fire":   fire_impactor();         break;
        case "set_collapse":
            scores.collapse = clamp(parseFloat(args[0]), 0, 1);
            post_dbg("collapse set to " + scores.collapse);
            break;
        case "set_vertical":
            scores.vertical = clamp(parseFloat(args[0]), 0, 1);
            post_dbg("vertical set to " + scores.vertical);
            break;
        case "set_flock":
            flock_manual = parseFloat(args[0]);
            if (flock_manual >= 0) flock_manual = clamp(flock_manual, 0, 1);
            post_dbg("flock weight " + (flock_manual < 0 ? "AUTO (hi_coh)" : flock_manual));
            update_positions();
            break;
        case "set_flock_sources":
            flock_srcs = [];
            for (var i = 0; i < args.length; i++) {
                var s = parseInt(args[i], 10);
                if (s >= 1 && s <= N_SRC) { flock_srcs.push(s); mode[s] = M_FLOCK; }
            }
            post_dbg("flock sources: " + flock_srcs.join(" ") +
                     " — remember /point/number " + flock_srcs.length + " on spat5.boids");
            break;
        case "set_flock_scale":
            flock_scale = Math.max(0.01, parseFloat(args[0]));
            post_dbg("flock scale " + flock_scale + " m/unit");
            break;
        case "set_flock_zoffset":
            flock_zoff = parseFloat(args[0]);
            post_dbg("flock z offset " + flock_zoff + " m");
            break;
        case "set_flock_rise":
            var fr = parseFloat(args[0]);
            if (isNaN(fr)) { post_dbg("set_flock_rise needs a number (e.g. set_flock_rise 0.08)"); break; }
            FLOCK_RISE = clamp(fr, 0.001, 1);
            post_dbg("flock rise " + FLOCK_RISE + " /step");
            break;
        case "set_flock_fall":
            var ff = parseFloat(args[0]);
            if (isNaN(ff)) { post_dbg("set_flock_fall needs a number (e.g. set_flock_fall 0.03)"); break; }
            FLOCK_FALL = clamp(ff, 0.001, 1);
            post_dbg("flock fall " + FLOCK_FALL + " /step");
            break;
        case "set_attract":
            var an = parseInt(args[0], 10);
            var aw = parseFloat(args[1]);
            if (isNaN(an) || an < 1 || an > N_SRC || isNaN(aw)) {
                post_dbg("usage: set_attract <1-" + N_SRC + "> <0-1>  (e.g. set_attract 5 0.25)");
                break;
            }
            attract[an] = clamp(aw, 0, 1);
            post_dbg("source " + an + " attract weight " + attract[an]);
            update_positions();
            break;
        case "set_az_cw":
            az_cw = parseInt(args[0], 10) ? 1 : 0;
            post_dbg("azimuth convention: positive = " + (az_cw ? "clockwise/right" : "counterclockwise/left"));
            update_positions(true);
            break;
        case "set_mode":
            set_mode(args);
            break;
        default:
            // ignore other dict traffic (e.g. /source/number) silently
            break;
    }
}

function list() {
    if (inlet !== 1) return;
    var args = arrayfromargs(arguments);
    if (args.length < 2) return;
    handle_score(String(args[0]), parseFloat(args[1]));
}

// ═══════════════════════════════════════════════════════════════════════════
// HANDLERS
// ═══════════════════════════════════════════════════════════════════════════

function capture_base(n, fmt, args) {
    if (n < 1 || n > N_SRC) return;
    if (args.length < 3) return;
    var a = parseFloat(args[0]), b = parseFloat(args[1]), c = parseFloat(args[2]);
    if (isNaN(a) || isNaN(b) || isNaN(c)) return;

    if (fmt === "aed") {
        base[n] = { az: a, el: b, dist: c };
    } else { // xyz → store as aed
        base[n] = xyz2aed(a, b, c);
    }
    delete warned_nobase[n];
}

function handle_score(label, value) {
    if (isNaN(value)) return;
    if (scores.hasOwnProperty(label)) scores[label] = value;
    update_positions();
}

function handle_boid(args) {
    // "boid <i> <x> <y> <z>"
    if (args.length < 4) return;
    var i = parseInt(args[0], 10);
    var x = parseFloat(args[1]), y = parseFloat(args[2]), z = parseFloat(args[3]);
    if (isNaN(i) || isNaN(x) || isNaN(y) || isNaN(z)) return;
    boid_xyz[i] = [x, y, z];
    emit_flock();   // flock sources only — cheap, runs at boids /move rate
}

// ═══════════════════════════════════════════════════════════════════════════
// CORE
// ═══════════════════════════════════════════════════════════════════════════

function smooth_step() {
    sm_collapse   += SM_A * (scores.collapse   - sm_collapse);
    sm_vertical   += SM_A * (scores.vertical   - sm_vertical);
    sm_clustering += SM_A * (scores.clustering - sm_clustering);
    var a = (scores.hicoh > sm_hicoh) ? HICOH_RISE : HICOH_FALL;
    sm_hicoh += a * (scores.hicoh - sm_hicoh);

    var ft = flock_target();
    var fa = (ft > sm_flock) ? FLOCK_RISE : FLOCK_FALL;
    sm_flock += fa * (ft - sm_flock);
}

function flock_target() {
    if (flock_manual >= 0) return flock_manual;
    return clamp((sm_hicoh - FLOCK_ON) / (FLOCK_FULL - FLOCK_ON), 0, 1);
}

function flock_weight() {
    return sm_flock;   // v2.1: always the glided value
}

function flock_centroid() {
    var sx = 0, sy = 0, sz = 0, k = 0;
    for (var i in boid_xyz) {
        var b = boid_xyz[i];
        sx += b[0]; sy += b[1]; sz += b[2]; k++;
    }
    if (k === 0) return null;
    return [ sx / k * flock_scale,
             sy / k * flock_scale,
             sz / k * flock_scale + flock_zoff ];
}

function update_positions(force) {
    smooth_step();

    // collapse compression (same semantics as v1, relative to dict bases)
    var c_az   = 1.0 - sm_collapse * 0.95;   // azimuths compress toward 0°
    var c_el   = 1.0 - sm_collapse * 0.80;   // vertical field flattens
    var c_pull = sm_collapse * 0.3;          // distance pulled toward 1.0
    var vert_bonus = sm_vertical * 20;       // up to +20° elevation opening

    // Details spread factor from clustering: tight → narrow, scattered → wide
    var cluster_norm   = clamp(sm_clustering / 10.0, 0, 1);
    var details_factor = 0.3 + cluster_norm * 1.4;   // 0.3× → 1.7× of dict spread
    var details_mean   = pair_mean_az(5, 6);

    for (var n = 1; n <= N_SRC; n++) {
        var md = mode[n];
        if (md === M_STATIC) continue;                 // dict position stands
        var b = base[n];
        if (!b) { warn_nobase(n); continue; }          // no invented positions

        if (md === M_FLOCK) { emit_flock_source(n, force); continue; }

        var az = b.az, el = b.el, dist = b.dist;

        if (md === M_DETAILS && details_mean !== null) {
            az = details_mean + wrap180(az - details_mean) * details_factor;
        } else if (md === M_IMPACTOR) {
            az = impactor_az + ((n % 2 === 1) ? IMP_PAIR_SPREAD : -IMP_PAIR_SPREAD);
        } else if (md === M_RETE) {
            az = impactor_az + ((n % 2 === 1) ? RETE_SPREAD : -RETE_SPREAD);
            el = b.el + RETE_EL_LIFT;
        }

// collapse + vertical, applied to everything non-static, non-flock
        az   = wrap180(az) * c_az;
        el   = el * c_el + vert_bonus * sign(el + 0.001);
        dist = dist + c_pull * (1.0 - dist);

        az = clamp(az, -180, 180); el = clamp(el, -90, 90); dist = clamp(dist, 0.1, 5.0);

        // v2.2: flock attraction — lean toward the flock centroid
        var aw = attract[n] * sm_flock;
        if (aw > 0.001) {
            var fc = flock_centroid();
            if (fc) {
                var p = aed2xyz(az, el, dist);
                emit_xyz(n,
                    p[0] + aw * (fc[0] - p[0]),
                    p[1] + aw * (fc[1] - p[1]),
                    p[2] + aw * (fc[2] - p[2]),
                    force);
                continue;
            }
        }

        emit_aed(n, az, el, dist, force);
    }
}

// ─── flock emission ───────────────────────────────────────────────────────────
function emit_flock() {
    for (var k = 0; k < flock_srcs.length; k++) emit_flock_source(flock_srcs[k], false);
}

function emit_flock_source(n, force) {
    var b = base[n];
    if (!b) { warn_nobase(n); return; }

    var idx  = flock_srcs.indexOf(n) + 1;      // boid index for this source
    var bird = boid_xyz[idx];
    var w    = flock_weight();

    var bx = aed2xyz(b.az, b.el, b.dist);      // dict base in xyz

    if (!bird || w <= 0.001) {
        emit_xyz(n, bx[0], bx[1], bx[2], force);
        return;
    }

    var tx = bird[0] * flock_scale;
    var ty = bird[1] * flock_scale;
    var tz = bird[2] * flock_scale + flock_zoff;

    emit_xyz(n,
        bx[0] + w * (tx - bx[0]),
        bx[1] + w * (ty - bx[1]),
        bx[2] + w * (tz - bx[2]),
        force);
}

// ─── emit with change detection ───────────────────────────────────────────────
function emit_aed(n, az, el, dist, force) {
    if (isNaN(az) || isNaN(el) || isNaN(dist)) { warn_nan(n); return; }
    var le = last_emit[n];
    if (!force && le && le[0] === "aed" &&
        Math.abs(le[1] - az) < EPS_EMIT && Math.abs(le[2] - el) < EPS_EMIT &&
        Math.abs(le[3] - dist) < EPS_EMIT) return;
    last_emit[n] = ["aed", az, el, dist];
    outlet(0, "/source/" + n + "/aed", round2(az), round2(el), round2(dist));
}

function emit_xyz(n, x, y, z, force) {
    if (isNaN(x) || isNaN(y) || isNaN(z)) { warn_nan(n); return; }
    var le = last_emit[n];
    if (!force && le && le[0] === "xyz" &&
        Math.abs(le[1] - x) < EPS_EMIT && Math.abs(le[2] - y) < EPS_EMIT &&
        Math.abs(le[3] - z) < EPS_EMIT) return;
    last_emit[n] = ["xyz", x, y, z];
    outlet(0, "/source/" + n + "/xyz", round2(x), round2(y), round2(z));
}

// ─── impactor fire ────────────────────────────────────────────────────────────
function fire_impactor() {
    var angle = (Math.random() * 160 + 10) * (Math.random() > 0.5 ? 1 : -1);
    impactor_az = angle;
    post_dbg("impactor fired from az=" + round2(angle) + "° (Ret E blooms with it)");
    update_positions();
}

// ─── mode / reset / status ────────────────────────────────────────────────────
function set_mode(args) {
    var n = parseInt(args[0], 10);
    var name = String(args[1]).toLowerCase();
    var idx = MODE_NAMES.indexOf(name);
    if (n < 1 || n > N_SRC || idx < 0) {
        post_dbg("set_mode: usage set_mode <1-" + N_SRC + "> <" + MODE_NAMES.join("|") + ">");
        return;
    }
    mode[n] = idx;
    post_dbg("source " + n + " mode → " + name);
    update_positions(true);
}

function do_reset() {
    sm_collapse = 0; sm_vertical = 0; sm_hicoh = 0; sm_clustering = 10;
    sm_flock = 0;
    impactor_az = 0; flock_manual = -1; boid_xyz = {};
    for (var key in scores) scores[key] = 0;
    scores.clustering = 10;
    last_emit = new Array(N_SRC + 1);
    post_dbg("reset — smoothing, impactor, flock override cleared");
    update_positions(true);
}

function print_status() {
    outlet(1, "── ahfsd_spat5 v" + VERSION + " status ──\n");
    outlet(1, "  sm_collapse  : " + round2(sm_collapse) + "\n");
    outlet(1, "  sm_vertical  : " + round2(sm_vertical) + "\n");
    outlet(1, "  sm_clustering: " + round2(sm_clustering) + "\n");
    outlet(1, "  sm_hicoh     : " + round2(sm_hicoh) + "  target " + round2(flock_target()) +
              (flock_manual >= 0 ? " (MANUAL)" : " (auto)") +
              "  → sm_flock " + round2(sm_flock) + "\n");
    outlet(1, "  impactor_az  : " + round2(impactor_az) + "°\n");
    outlet(1, "  flock srcs   : " + flock_srcs.join(" ") +
              "  scale " + flock_scale + " m  zoff " + flock_zoff + " m\n");
    var at = [];
    for (var a = 1; a <= N_SRC; a++) if (attract[a] > 0) at.push(a + ":" + attract[a]);
    outlet(1, "  attract      : " + (at.length ? at.join("  ") : "none") + "\n");
    var nb = 0; for (var i = 1; i <= N_SRC; i++) if (base[i]) nb++;
    outlet(1, "  bases        : " + nb + "/" + N_SRC + " captured (send 'bases' to list)\n");
    outlet(1, "  scores       : " + JSON.stringify(scores) + "\n");
}

function print_bases() {
    outlet(1, "── captured bases ──\n");
    for (var n = 1; n <= N_SRC; n++) {
        if (base[n]) {
            outlet(1, "  src " + n + " [" + MODE_NAMES[mode[n]] + "]  az " +
                round2(base[n].az) + "  el " + round2(base[n].el) +
                "  dist " + round2(base[n].dist) + "\n");
        } else {
            outlet(1, "  src " + n + " [" + MODE_NAMES[mode[n]] + "]  — not captured\n");
        }
    }
}

// ═══════════════════════════════════════════════════════════════════════════
// HELPERS
// ═══════════════════════════════════════════════════════════════════════════

var DEG = Math.PI / 180;

// SPAT5 cartesian: x = right, y = front, z = up.
// az_cw = 1: positive azimuth to the right (clockwise from above).
function aed2xyz(az, el, dist) {
    var a = az * DEG * (az_cw ? 1 : -1);
    var e = el * DEG;
    return [ dist * Math.cos(e) * Math.sin(a),
             dist * Math.cos(e) * Math.cos(a),
             dist * Math.sin(e) ];
}

function xyz2aed(x, y, z) {
    var dist = Math.sqrt(x*x + y*y + z*z);
    if (dist < 0.0001) return { az: 0, el: 0, dist: 0 };
    var az = Math.atan2(x, y) / DEG * (az_cw ? 1 : -1);
    var el = Math.asin(clamp(z / dist, -1, 1)) / DEG;
    return { az: az, el: el, dist: dist };
}

function pair_mean_az(a, b) {
    if (!base[a] || !base[b]) return null;
    return base[a].az + wrap180(base[b].az - base[a].az) * 0.5;
}

function wrap180(a) {
    while (a >  180) a -= 360;
    while (a < -180) a += 360;
    return a;
}

var warned_nan = {};
function warn_nan(n) {
    if (warned_nan[n]) return;
    warned_nan[n] = true;
    outlet(1, "spat5: NaN blocked for source " + n + " — send 'reset' to clear state\n");
}

function warn_nobase(n) {
    if (warned_nobase[n]) return;
    warned_nobase[n] = true;
    outlet(1, "spat5: no base captured for source " + n +
              " — re-import sources_position.json with the js tap connected\n");
}

function clamp(v, lo, hi) { return v < lo ? lo : v > hi ? hi : v; }
function round2(v) { return Math.round(v * 100) / 100; }
function sign(v)  { return v >= 0 ? 1 : -1; }
function post_dbg(s) { outlet(1, "spat5: " + s + "\n"); }