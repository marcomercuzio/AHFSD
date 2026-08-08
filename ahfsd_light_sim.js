// ahfsd_light_sim.js
// v4.1 — 2026-06-20
// AHFSD light parameter simulator
// Plain [js] object — 9 inlets, 4 outlets
//
// VERSION LOG
//   v4.0 (2026-06-19) — initial 4-outlet build for multislider display
//   v4.1 (2026-06-20) — FIXED state logic. Previously w_hi_chaotic was hard-gated
//                        behind val_scatter (the velocity-VARIANCE latch from
//                        ahfsd_scatter.js), so scattered behaviour — which produces
//                        LOW velocity variance but HIGH spatial dispersion — could
//                        never reach the chaotic state and collapsed onto mid_coh.
//                        Chaotic is now driven by velocity x spatial dispersion
//                        (clustering distance, inlet 7); coherent by velocity x
//                        spatial cohesion x coherence; variance is now an ACCENT,
//                        not a gate. Removed temporary debug post() in bang().
//                        Clustering normalization eased 10.0 -> 8.0 (measured:
//                        tight ~1.06, scattered ~7.41 — ADJUST BY EAR IN THE ROOM).
//
// IMPORTANT SEMANTIC NOTE on inlet 2 (val_scatter):
//   This is NOT spatial scatter. It is the output of ahfsd_scatter.js, a LATCHED
//   GATE on velocity variance (trips to 1 when variance stays > 1.0 for 4s; e.g.
//   "onerunner", mixed speeds). Spatial scatter/dispersion is measured by
//   clustering distance on inlet 7 (high = bodies spread out). Do not conflate them.
//
// Inlets (mirror ahfsd_controller.js exactly):
//   0: coherence (0-1)       1: stillness (0-1)      2: velocity-variance latch (0-1)
//   3: disorder (0-1)        4: avg velocity (m/s)   5: presence count (0-20)
//   6: Z variance (0-2)      7: clustering distance (avg pairwise, ~0-12; high = dispersed)
//   8: bang from metro — drives update cycle
//
// Outlets:
//   0: OSC strings → [udpsend localhost 7401]
//   1: state weights list → [multislider] (5 values: empty still mid chaotic hicoh)
//   2: fixture levels list → [multislider] (5 values: ceil_int ceil_warm gal fres_int fres_sat)
//   3: moving head + strobe → [multislider] (4 values: mh_int mh_pan mh_hue strobe)
//
// Display setup in Max:
//   outlet 1 → [multislider] set to 5 sliders, range 0-1  (STATE BLEND)
//   outlet 2 → [multislider] set to 5 sliders, range 0-1  (FIXTURE LEVELS)
//   outlet 3 → [multislider] set to 4 sliders, range 0-1  (MH + STROBE)
//   Add [number] boxes on each multislider outlet for exact values if needed
//
// Message controls (send to inlet 0):
//   init                     — reset all
//   strobe_trigger           — manually fire strobe
//   set_strobe_decay 0.97    — decay speed
//   set_strobe_threshold 2.0 — velocity m/s that fires strobe

autowatch = 1;
inlets = 9;
outlets = 4;

// ─── raw scores ───────────────────────────────────────────────────────────────
var val_coherence  = 0;
var val_stillness  = 0;
var val_scatter    = 0;   // velocity-variance latch (see semantic note above)
var val_disorder   = 0;
var val_velocity   = 0;
var val_presence   = 0;
var val_vertical   = 0;
var val_clustering = 10;  // avg pairwise distance; high = dispersed

// ─── smoothed ─────────────────────────────────────────────────────────────────
var sm_vel   = 0;
var sm_pres  = 0;
var sm_clust = 10;
var sm_coh   = 0;
var sm_a     = 0.12;

// ─── normalization constants (ADJUST BY EAR IN THE ROOM) ───────────────────────
var CLUST_NORM = 8.0;   // divisor for clustering distance (measured scattered ~7.41)
var VEL_NORM   = 3.0;   // divisor for velocity in state calc

// ─── fixture parameters ───────────────────────────────────────────────────────
var ceil_intensity = 0;
var ceil_warm      = 0;
var gal_intensity  = 0;
var fres_intensity = 0;
var fres_sat       = 0;
var mh_intensity   = 0;
var mh_pan_speed   = 0;
var mh_hue         = 0;

// ─── strobe ───────────────────────────────────────────────────────────────────
var strobe_level     = 0;
var strobe_decay     = 0.994;
var strobe_threshold = 2.5;
var strobe_last_vel  = 0;
var strobe_vel_floor = 0.4;

// ─── state weights ────────────────────────────────────────────────────────────
var w_empty      = 0;
var w_stillness  = 0;
var w_mid_coh    = 0;
var w_hi_chaotic = 0;
var w_hi_coh     = 0;

// ─── OSC filter ───────────────────────────────────────────────────────────────
var last_sent = {};


// ═══════════════════════════════════════════════════════════════════════════════
// INLET HANDLERS
// ═══════════════════════════════════════════════════════════════════════════════

function msg_float(val) {
	var n = inlet;
	if      (n === 0) val_coherence  = val;
	else if (n === 1) val_stillness  = val;
	else if (n === 2) val_scatter    = val;
	else if (n === 3) val_disorder   = val;
	else if (n === 4) val_velocity   = val;
	else if (n === 5) val_presence   = val;
	else if (n === 6) val_vertical   = val;
	else if (n === 7) val_clustering = val;
}

function msg_int(val) { msg_float(val); }

function bang() {
	if (inlet === 8) {
		smooth();
		compute_states();
		compute_fixtures();
		update_strobe();
		send_osc_out();
		send_display();
	}
}


// ═══════════════════════════════════════════════════════════════════════════════
// COMPUTATION
// ═══════════════════════════════════════════════════════════════════════════════

function smooth() {
	sm_vel   = sm_vel   + sm_a * (val_velocity   - sm_vel);
	sm_pres  = sm_pres  + sm_a * (val_presence   - sm_pres);
	sm_clust = sm_clust + sm_a * (val_clustering - sm_clust);
	sm_coh   = sm_coh   + sm_a * (val_coherence  - sm_coh);
}

function compute_states() {
	var pn   = clamp(sm_pres / 20.0, 0, 1);            // presence normalized
	var vn   = clamp(sm_vel  / VEL_NORM, 0, 1);        // velocity normalized
	var disp = clamp(sm_clust / CLUST_NORM, 0, 1);     // spatial dispersion (high = spread out)
	var coh  = 1.0 - disp;                             // spatial cohesion (high = clustered)
	var stn  = clamp(val_stillness, 0, 1);
	var varn = clamp(val_scatter, 0, 1);               // velocity-variance latch — ACCENT only

	w_empty      = clamp((1.0 - pn) * 1.2, 0, 1);
	w_stillness  = clamp(pn * (1.0 - vn) * (0.3 + stn * 0.7), 0, 1);
	// mid_coh peaks at moderate movement + moderate spacing (neither tight nor fully dispersed)
	w_mid_coh    = clamp(pn * (0.3 + vn * 0.4) * (1.0 - Math.abs(disp - 0.5) * 1.2), 0, 1);
	// chaotic: many bodies, fast, spatially dispersed — variance accents up to +30%
	w_hi_chaotic = clamp(pn * vn * disp * (0.7 + varn * 0.3), 0, 1);
	// coherent: many bodies, fast, spatially cohesive — coherence score accents up to +50%
	w_hi_coh     = clamp(pn * vn * coh * (0.5 + val_coherence * 0.5), 0, 1);

	var total = w_empty + w_stillness + w_mid_coh + w_hi_chaotic + w_hi_coh;
	if (total > 0.001) {
		w_empty      /= total;
		w_stillness  /= total;
		w_mid_coh    /= total;
		w_hi_chaotic /= total;
		w_hi_coh     /= total;
	}
}

function compute_fixtures() {
	ceil_intensity = clamp(0.15 + sm_pres / 20.0 * 0.5 + val_coherence * 0.35, 0.05, 1.0);
	ceil_warm      = clamp(val_stillness * 0.6 + val_coherence * 0.4 - w_hi_chaotic * 0.5, 0, 1);
	gal_intensity  = clamp(0.05 + sm_pres / 20.0 * 0.4 + val_coherence * 0.3 + val_stillness * 0.2, 0.0, 0.9);
	fres_intensity = clamp(0.1 + sm_vel / 4.0 * 0.5 + sm_pres / 20.0 * 0.3, 0.05, 1.0);
	fres_sat       = clamp(val_coherence * 0.7 + val_stillness * 0.3 - w_hi_chaotic * 0.4, 0, 1);
	mh_intensity   = clamp(0.1 + sm_vel / 5.0 * 0.8, 0.05, 1.0);
	mh_pan_speed   = clamp(val_disorder * 0.5 + w_hi_chaotic * 0.5, 0, 1);
	mh_hue         = clamp(w_hi_chaotic * 0.05 + w_hi_coh * 0.55 + w_stillness * 0.75, 0, 1);
}

function update_strobe() {
	if (sm_vel > strobe_threshold && strobe_last_vel <= strobe_threshold
	    && sm_pres > strobe_vel_floor * 20) {
		strobe_level = 1.0;
	}
	strobe_last_vel = sm_vel;
	if (strobe_level > 0.001) {
		strobe_level *= strobe_decay;
		if (strobe_level < 0.01) strobe_level = 0;
	}
}


// ═══════════════════════════════════════════════════════════════════════════════
// OUTPUTS
// ═══════════════════════════════════════════════════════════════════════════════

function send_display() {
	// outlet 1: state blend — 5 values (empty still mid chaotic hicoh)
	outlet(1, w_empty, w_stillness, w_mid_coh, w_hi_chaotic, w_hi_coh);

	// outlet 2: fixture levels — 5 values (ceil_int ceil_warm gal fres_int fres_sat)
	outlet(2, ceil_intensity, ceil_warm, gal_intensity, fres_intensity, fres_sat);

	// outlet 3: MH + strobe — 4 values (mh_int mh_pan mh_hue strobe)
	outlet(3, mh_intensity, mh_pan_speed, mh_hue, strobe_level);
}

function send_osc_out() {
	osc("/light/ceil/intensity",  r2(ceil_intensity));
	osc("/light/ceil/warm",       r2(ceil_warm));
	osc("/light/gal/intensity",   r2(gal_intensity));
	osc("/light/fres/intensity",  r2(fres_intensity));
	osc("/light/fres/sat",        r2(fres_sat));
	osc("/light/mh/intensity",    r2(mh_intensity));
	osc("/light/mh/pan_speed",    r2(mh_pan_speed));
	osc("/light/mh/hue",          r2(mh_hue));
	osc("/light/strobe/level",    r2(strobe_level));
	osc("/light/state/empty",     r2(w_empty));
	osc("/light/state/stillness", r2(w_stillness));
	osc("/light/state/mid_coh",   r2(w_mid_coh));
	osc("/light/state/chaotic",   r2(w_hi_chaotic));
	osc("/light/state/hi_coh",    r2(w_hi_coh));
}

function osc(address, value) {
	if (last_sent[address] === value) return;
	last_sent[address] = value;
	outlet(0, address + " " + value);
}


// ═══════════════════════════════════════════════════════════════════════════════
// UTILITIES + CONTROLS
// ═══════════════════════════════════════════════════════════════════════════════

function clamp(v, lo, hi) { return Math.max(lo, Math.min(hi, v)); }
function r2(v)            { return Math.round(v * 100) / 100; }

function strobe_trigger() {
	strobe_level = 1.0;
	post("light sim: strobe triggered manually\n");
}

function set_strobe_decay(val) {
	strobe_decay = clamp(val, 0.80, 0.999);
	post("light sim: strobe decay = " + strobe_decay + "\n");
}

function set_strobe_threshold(val) {
	strobe_threshold = clamp(val, 0.5, 5.0);
	post("light sim: strobe threshold = " + strobe_threshold + " m/s\n");
}

function init() {
	sm_vel = 0; sm_pres = 0; sm_clust = 10; sm_coh = 0;
	strobe_level = 0; strobe_last_vel = 0;
	last_sent = {};
	post("light sim: init\n");
}