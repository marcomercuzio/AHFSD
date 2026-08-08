// ═══════════════════════════════════════════════════════════════════════════
// AHFSD — central controller (ahfsd_controller.js)
// ───────────────────────────────────────────────────────────────────────────
// Version log (newest first):
//   v2.9  2026-08-01  DISP_EROSION_GATE promoted from a function-local var
//                     inside update_tools() to the top-level constants block,
//                     plus set_disp_erosion_gate(v) (clamped 0–0.9). It was
//                     marked "ADJUST BY EAR" since v2.5 but had no setter, so
//                     adjusting it meant editing the file and reloading the js
//                     mid-session — not viable during a residency calibration
//                     pass. No behavioural change: same default 0.30, same
//                     formula. It drives Erosion on Beds (track 1, device 3).
//   v2.8  2026-07-28  Naming only, no behavioural change. val_scatter ->
//                     val_variance: the variable has carried velocity variance
//                     since the v1.9 patch-level rewire (which deliberately made
//                     no code changes), while sm_var, hp_var and the CLOG labels
//                     were already correct. Also corrected the stale weight table
//                     in the compute_states() comment block — Details HiCoh has
//                     read 0.60 in code since v2.5, the table still said 0.10.
//                     Found during the Chapter 3 naming trace.
//   v2.7  2026-07-24  Flock coherence link. The compensated coherence value
//                     (coherence_raw + sm_collapse lift) that melodic + live
//                     already computed locally is now lifted to one tick-level
//                     var (g_coherence), computed in compute_states() reusing
//                     the `co` it already had. Melodic + live read the shared
//                     value (identical behaviour, one source of truth). New
//                     send: /flock/coherence <g_coherence> on outlet 0, feeding
//                     ahfsd_spat5.js hicoh (flock release) via
//                     [route /flock] -> [route coherence] -> [prepend hicoh]
//                     -> [js] inlet 1. Eye (flock tightening) and ear (melodic
//                     bloom) now locked through collapse — both follow the same
//                     compensated coherence. Sent via send_tool (deduplicated).
//   v2.6  2026-07-23  Crowd-size scaling made live-settable. Five hard-coded
//                     body-count references (three /20 incl. the log() mirror,
//                     one /10, one /5) that silently assumed a 20-body room
//                     replaced by three named constants: MAX_BODIES (capacity —
//                     state pn + Beds pf), COLLAPSE_FULL (bodies at which EQ
//                     collapse fully lifts), LOW_PRES_FLOOR (mix-hold floor).
//                     Defaults 20/10/5 = prior behaviour exactly, no change on
//                     install. set_max_bodies / set_collapse_full /
//                     set_low_pres_floor added for per-show re-scaling. NOTE:
//                     CLUST_NORM is NOT auto-scaled — re-tune BY EAR per crowd
//                     size. All per-body-averaged metrics (velocity, variance,
//                     clustering distance) are scale-invariant and untouched.
//   v2.5  2026-07-23  Details HiCoherent weight 0.10 -> 0.60. Dramaturgical
//                     correction: Details (the intimate/fine-grain voice)
//                     previously receded almost to silence exactly when the
//                     collective cohered, so the "arrival" read as grand/
//                     enveloping (Beds/Melodic/Live) but not close. Raising it
//                     to 0.60 lets the fine grain persist UNDERNEATH the
//                     communal voices at high coherence — the awakening moment
//                     becomes full *and* intimate, not one or the other.
//                     Still below Beds(0.85)/Melodic(0.80)/Live(0.90) so it
//                     reads as texture-within-fullness, not competition.
//                     Send C reverb behaviour left unchanged — hold for
//                     ear-calibration in the room.
//   v2.4  2026-07-08  FX-layer recalibration to the v2.3 room scales. The state
//                     layer was fixed in v2.3 but every character device still
//                     used pre-calibration divisors, leaving most of them
//                     mathematically dead (Freeze toggle needed sm_vel>=1.55,
//                     impactor BURST needed hp_vel>1.5, HEAVY sm_vel>1.5,
//                     excitation hp_vel>0.8 — all unreachable; observed maxima:
//                     sm_vel 0.91, hp_vel ~0.6, sm_var 1.1).
//                     - update_tools: dispersion/variance now use CLUST_NORM /
//                       VAR_NORM; new "energy" driver (sm_vel/VEL_NORM).
//                     - Spectral Resonator: variance-led + sw_hi_chaotic
//                       support (state weights are calibrated and smooth, so
//                       they now double as FX drivers).
//                     - Beat Repeat: sw_hi_chaotic*0.5 + variance*0.3 — becomes
//                       a chaos-state signature instead of unreachable.
//                     - Freeze: (energy-0.7)/0.25 — toggle engages at en~0.83,
//                       i.e. sustained dispersal-level movement.
//                     - Textures->Portal send: variance 0.5 + energy 0.3 +
//                       dispersion 0.2.
//                     - Impactor: p_spike (hp_vel-0.15)/0.6, p_base
//                       (sm_vel-0.6)/1.5, chaos sm_var/VAR_NORM, BURST at
//                       hp_vel>0.35 & chaos>0.4, HEAVY at sm_vel>0.75,
//                       SINGLE intensity /0.6. Excitation trigger hp_vel>0.35.
//                       All three firing modes reachable again; every fire
//                       seeds the freq-shifter aftershock.
//                     Left untouched by design: Glitch (transition-driven,
//                     confirmed firing on dispersal onsets), Erosion (rescaled
//                     implicitly via CLUST_NORM), update_scene (disabled).
//                     Companion change in ahfsd_behaviour_sim.js: per-body
//                     speed_personality (0.5-1.7x) so the sim produces
//                     realistic velocity variance. After updating the sim,
//                     re-log scattered/dispersal and adjust set_var_norm to
//                     the new observed sm_var max.
//   v2.3  2026-07-08  Axis normalisation calibrated from first in-room logging
//                     session (IAS, 20 simulated RBs). Observed: sm_vel
//                     0.03-0.91, sm_clust 0.42-9.3, sm_var 0.02-1.1. With the
//                     old en divisor (2.5) en never exceeded 0.36, making
//                     hi_chaotic / hi_coh unreachable — scattered and dispersal
//                     were classified majority-stillness (the root cause of
//                     "behaviour switches are imperceptible").
//                     - New live-tunable constants: VEL_NORM 1.0 (was 2.5),
//                       CLUST_NORM 10.0 (confirmed), VAR_NORM 1.2 (was 1.5),
//                       via set_vel_norm / set_clust_norm / set_var_norm.
//                     - compute_states, update_textures (sn was /15 ->
//                       CLUST_NORM), update_details (vn was /3.0 -> VEL_NORM,
//                       details now genuinely duck during movement),
//                       update_melodic, update_live all use the constants.
//                     - Calibration logger added: log / log_reset / log_range /
//                       mark <name> / set_log_verbose, driven by
//                       [metro 1000] -> [message log(]. Prints CLOG lines and
//                       tracked min/max ranges via post().
//   v2.2  2026-07-07  Glitch (Beds, device 2) — removed the unconditioned
//                     sm_var*0.2 term (Option 2). Same root cause as the v2.1
//                     Erosion fix: an ungated term that never rested at true
//                     zero, so the beds carried a permanent faint glitch even
//                     when the layout was stable. Now purely spatial-
//                     reorganisation-driven (clust_delta/3.0). The Granulator
//                     already carries the variance->texture mapping, so nothing
//                     is lost conceptually and the beds get a clean rest state.
//                     Made more audible by this session's inlet-2 rewire (below):
//                     sm_var now reaches its true 0-4+ range, so the old floor
//                     could climb toward the 0.6 ceiling.
//                     Also removed the duplicate FADER_FLOOR_DEFAULT /
//                     FADER_FLOOR_BEDS declarations (were declared at both the
//                     top of file and again near the fader-curve section; the
//                     later pair silently won, so edits to the top pair did
//                     nothing). Top-of-file declarations are now the single
//                     source of truth.
//                     PATCH-LEVEL (no code change here): inlet 1 rewired from
//                     raw variance -> stillness progress (ahfsd_stillness.js
//                     progress outlet); inlet 2 now raw variance
//                     (ahfsd_variance.js). val_stillness finally receives true
//                     stillness — the intimate reverbs (Details Send C, Live
//                     Send C, Details stillness bonus) now open in stillness,
//                     not chaos. sm_var receives true continuous variance as
//                     v1.9 intended.
// 	 v2.1  2026-07-05  Portal moved from Beds insert (device 5) to Return B
//                     as a parallel send, now feeding both Beds and Textures.
//                     Rationale: as an always-on insert on the one group that's
//                     always present, Portal's wet level (though already
//                     dispersion/variance-driven) read as a constant tint over
//                     a multi-hour format rather than a distinct gesture, and
//                     serial insert wet was replacing dry Beds content at
//                     higher values. Moving it to a return preserves the dry
//                     signal at all times and lets the effect be shared.
//                       - Removed Portal from Beds device chain (was device 5).
//                         Beds bus reindexed below it: Spectral Time D7→D6,
//                         collapse EQ Eight D8→D7 (init(), update_tools(),
//                         update_collapse() all updated accordingly).
//                       - Portal now sole device on Return B. Device wet
//                         (param 5) fixed at 1.0 in init() — blend is now
//                         controlled entirely by each group's Send B fader,
//                         not the device itself.
//                       - New smoothed sends: portal_send_beds (dispersion*0.7
//                         + variance*0.3, same curve/ceiling shape as the old
//                         insert-wet, now capped 0.80 instead of 0.85) and
//                         portal_send_textures (variance*0.7 + dispersion*0.3
//                         — mirrored weighting so it doesn't just swell in
//                         lockstep with Beds; leans into velocity scatter to
//                         match Textures' own Granulator character).
//                       - Portal macro1/macro2 (params 3/4) stay driven by the
//                         same room-wide variance/dispersion regardless of
//                         which group feeds the return — one shared "portal
//                         character", per-group send amount is the only
//                         per-group variable.
//                       - Details and Melodic left off Send B for now —
//                         Portal's spectral-scatter character works against
//                         Details' "slowness reveals detail" identity and
//                         Melodic's rare/precious framing. Revisit after
//                         testing if it seems worth trying.
//                     Erosion (Beds, device 3) fixed for the same underlying
//                     reason as Portal — it was never resting at true 0.
//                     Root cause different though: dispersion*0.15 in the
//                     erosion formula had no gate, and real-room average
//                     pairwise distance (dispersion's source) never sits near
//                     zero even when the crowd is "together" — so Erosion
//                     carried a permanent low-level floor regardless of
//                     presence. Fix: added DISP_EROSION_GATE (0.30, ADJUST BY
//                     EAR) — dispersion below the gate now contributes
//                     nothing; dispersion above it remaps 0-1 and scales by
//                     0.35 (raised from 0.15 now that it's gated, so the
//                     ceiling is still reachable). Glitch (device 2, sm_var*0.2
//                     term) has the same unconditioned-baseline pattern and
//                     may need the same fix — not yet applied, flagged for a
//                     listening check.
//                     (Same session: Glue Compressor sidechain ducking on all
//                     group buses retuned in Live — Auto Makeup was adding a
//                     constant gain boost since sidechain triggers only fire
//                     intermittently; switched to manual makeup ~0dB, 100%
//                     wet, fast attack, Auto release. No code changes.)
//	v2.0  2026-06-25  Acoustic Collapse Phase 1 migrated from Ableton master
//                     to per-track/per-return EQ Eight instances (master output
//                     is now BlackHole, so master chain is bypassed).
//                     update_collapse() now sends HP/LP sweep to 10 EQ instances:
//                       Groups (full depth):  Beds (T1 D8), Textures (T8 D3),
//                         Details (T15 D2), Melodic (T22 D2),
//                         Impactor (T29 D3), Live (T31 D4)
//                       Returns (70% depth — acoustic memory outlasts sources):
//                         Return A (D3), Return C (D3), Return D (D3), Return E (D2)
//                     init() updated to reset all 10 EQ instances.
//                     Old master EQ lines removed.
//   v1.9  2026-06-22  WIRING FIX — inlet 2 rewired in Max from ahfsd_scatter.js
//                     outlet 1 (0–1 ramp) to ahfsd_variance.js outlet 0 (raw
//                     continuous variance, 0–4+). val_scatter / sm_var now receive
//                     true velocity variance as intended. Beat Repeat threshold,
//                     Spectral Resonator grain depth, per-track variance offsets,
//                     and scene chaos (all keyed on sm_var > ~0.8–2.0) were
//                     previously capped to a max of 1.0 and largely dormant.
//                     ahfsd_scatter.js remains wired in patch as a potential
//                     accent/trigger source. No code changes — patch-level fix only.
//   v1.8  2026-06-14  Fixed Melodic (23-28) and Live (32/33) faders dropping
//                     to -inf at low presence (4 RB). Root cause: level=0.15
//                     (the per-track floor) is already -41dB on Live's fader
//                     curve, so any gm attenuation on top sends it off the
//                     bottom. Empty-weight nudges and gm-floor tweaks were
//                     not sufficient. Fix: added FADER_FLOOR_DEFAULT (0.26,
//                     ~-27dB) and FADER_FLOOR_BEDS (0.18, ~-38dB) as hard
//                     minimum output floors inside apply_group_space(), which
//                     now takes a 4th `floor` argument. All 5 groups pass
//                     their floor: Beds uses FADER_FLOOR_BEDS (can sit lower
//                     as the foundation), all others FADER_FLOOR_DEFAULT.
//                     Also gave all non-Beds groups a small non-zero empty
//                     weight (Textures/Details 0.05, Melodic/Live 0.08) as
//                     a secondary improvement.
//   v1.7  2026-06-14  Live group scatter + Send A + Impact_return clarified.
//                     Instead of hard mute, chaos now scatters the voice:
//                     Send A (grain delay on bus 31) opens 0→0.70 as
//                     sw_hi_chaotic rises. Bus fader floor raised — mute
//                     mechanic now rides to 0.6 attenuation max (was 1.0),
//                     so floor sits at 0.85*0.4 ≈ 0.34 (~-28dB). Voice
//                     stays present as grains, never fully disappears.
//                     Send A reset to 0 in init().
//                     Send E (Impact_return): static parallel FX return for
//                     the impactor — set manually in Live, not controller-
//                     driven. Reset to 0 in init() for clean session start.
//   v1.6  2026-06-14  Added send C + D to Live group bus (track 31).
//                     Send C (Hybrid Reverb): driven by val_stillness —
//                     stillness opens an intimate room around the voice.
//                     Floor at 0.10 so there's always a touch of space.
//                     Send D (Convolution Reverb Pro): driven by val_coherence
//                     — group alignment opens the architectural space, same
//                     mapping as Melodic's send D. Starts dry, reaches 0.65
//                     at full coherence (slightly under Melodic's 0.75 so
//                     the live voice doesn't overwhelm the composed layer).
//                     Both computed at end of update_live() via send_tool.
//   v1.5  2026-06-14  Added Live group (voice + guitar) to the controller.
//                     live_tracks = [32, 33] (children): coherence-driven
//                     level logic via apply_group_space, state weights
//                     (0.00, 0.40, 0.70, 0.05, 0.90) — emerges when group
//                     aligns, nearly absent in high chaos.
//                     live_group = 31 (bus): mute mechanic — when
//                     sw_hi_chaotic > 0.6, sm_live_mute ramps bus fader
//                     toward 0 (~3s fade, alpha 0.04); recovers when chaos
//                     drops. Acoustic bleed remains during mute — the human
//                     is still there, just unamplified. Collapse EQ on
//                     master affects Live group like everything else (no
//                     bypass). init() resets sm_live_mute and opens bus.
//   v1.4  2026-06-13  Added live-tunable GLOBAL_LEVEL_TRIM_DB.
//                     settable live via "set_global_trim <dB>" message box.
//                     Applied inside apply_group_space() as a dB offset on
//                     all 24 children (beds/textures/details/melodic) —
//                     lets the whole mix be dialed up/down in the room
//                     without redeploying code. Defaults to 0 (no change).
//                     Range clamped to -24..+12 dB. Once a value is found
//                     during room testing, fold it into the per-group
//                     ceilings/GROUP_ATTEN_DB_RANGE properly rather than
//                     leaving it as a standing offset.
//   v1.3  2026-06-13  Fixed faders still landing at -40 to -inf dB after v1.2.
//                     Cause: target_levels[t] = level * gm multiplies in
//                     FADER space, but Live's mixer volume parameter is a
//                     steep, non-linear fader->dB curve (measured: 0.5≈-14dB,
//                     0.3≈-24dB, 0.15≈-41dB, 0.1≈-48.6dB, 0.85=0dB, 1.0=+6dB).
//                     A level/gm combo that "should" read as a moderate cut
//                     instead landed in the -40..-inf dB cliff at the bottom
//                     of the curve.
//                     Fix: added fader_to_db()/db_to_fader() built from the
//                     measured curve, plus apply_group_space(level, gm,
//                     ceiling) which converts level to dB, subtracts
//                     (1-gm)*GROUP_ATTEN_DB_RANGE dB, converts back to a
//                     fader value, and clamps. All four layer functions now
//                     call this instead of `level * gm`. gm=1 -> 0dB cut;
//                     gm=0 -> GROUP_ATTEN_DB_RANGE dB cut (default 30dB) —
//                     audible reduction, not a cliff into -inf.
//                     NOTE: send C/D (Hybrid/Convolution Reverb) and device
//                     dry/wet & EQ freq macros are NOT on this curve and are
//                     unaffected — only mixer volume/sends use it.
//   v1.2  2026-06-13  Fixed remaining near-(-inf) drop on RB count decrease.
//                     Cause: v1.1's group_mult floor was tied to sm_collapse,
//                     which smooths at alpha 0.03 (~15s). But sm_pres (and
//                     therefore sw_empty/gm) reacts almost instantly (alpha
//                     0.6). So for the first ~15s after an RB drop, gm
//                     crashed toward 0 with no compensation yet — only
//                     catching up once sm_collapse ramped in.
//                     Fix: new instant, unsmoothed g_low_presence factor
//                     (1 - clamp(val_presence/5, 0, 1)) feeds group_mult
//                     immediately. group_mult now floors gm using
//                     max(g_low_presence, sm_collapse), so the volume floor
//                     responds instantly to presence while sm_collapse keeps
//                     driving the slow master-EQ narrowing as a separate,
//                     independently-timed dramaturgical layer.
//   v1.1  2026-06-13  Fixed child tracks collapsing to ~-60dB at low presence.
//                     Cause: at low body count sw_empty dominates the state
//                     blend, so group_mult() returned each group's near-zero
//                     "empty" weight and multiplied the per-track levels down
//                     to silence — undoing the collapse compensation already
//                     applied inside update_beds/textures/details/melodic.
//                     Fix: group_mult() now holds toward a 0.5 floor as
//                     sm_collapse rises, the same pattern used for pf/sn/df/
//                     coherence. Acoustic Collapse now reads as the master-EQ
//                     narrowing (intended), not a second silent volume drop.
//   v1.0  (prior)     Five-state dominance + collapse + bloom system.
// ═══════════════════════════════════════════════════════════════════════════

autowatch = 1;
inlets = 9;
outlets = 2;

// ─── track mapping ───────────────────────────────────────────────────────────
// tracks are 1-indexed in OSC; bridge handles the 0-index offset for Live API
var beds_tracks     = [2, 3, 4, 5, 6, 7];
var textures_tracks = [9, 10, 11, 12, 13, 14];
var details_tracks  = [16, 17, 18, 19, 20, 21];
var melodic_tracks  = [23, 24, 25, 26, 27, 28];
var live_tracks     = [32, 33];   // Voice, Instrum — level set per-child
var live_group      = 31;         // Live bus — mute mechanic lands here

// ─── scene ───────────────────────────────────────────────────────────────────
var current_scene     = 1;
var scene_cooldown_ms = 999999999;  // disabled until all 8 scenes have clip content
var scene_last_change = 0;

// ─── track state ─────────────────────────────────────────────────────────────
var track_levels   = {};    // current fader positions (interpolated toward target)
var target_levels  = {};    // target fader positions, set each tick
var fade_speed     = 0.008; // fader interpolation speed per tick
var last_sent      = {};    // last OSC values sent (suppresses redundant sends)
var send_threshold = 0.01;  // minimum delta before re-sending a fader value
var freq_shift_level = 0;   // Freq Shifter wet — peaked by impactor, decays x0.5/tick
var portal_send_beds     = 0;   // Beds → Send B (Portal return), smoothed
var portal_send_textures = 0;   // Textures → Send B (Portal return), smoothed   // Portal wet — smoothly tracked toward target each tick

// ─── collapse + bloom state ──────────────────────────────────────────────────
var sm_collapse   = 0;    // smoothed acoustic collapse: 0 = open, 1 = full collapse (~15s convergence)
var sm_bloom      = 0;    // smoothed bloom amount: 0 = no bloom, 1 = full bloom

// sm_live_mute (v1.5): smoothed mute state for the Live group bus (track 31).
// 0 = bus fully open (fader at 0.85 / unity), 1 = bus fully muted (fader → 0).
// Ramps toward 1 when sw_hi_chaotic > 0.6 (group is loud/scattered —
// musician gets swallowed); recovers toward 0 when chaos drops back.
// Alpha 0.04 → ~3 second fade in each direction.
var sm_live_mute  = 0;

// ─── tool state ──────────────────────────────────────────────────────────────
var last_tool_sent = {};    // deduplication cache for device parameter OSC sends

// ─── impactor ────────────────────────────────────────────────────────────────
var impactor_last_fire       = 0;
var impactor_min_cooldown_ms = 400;

// ─── raw score values (received via inlets from score calculator JS files) ───
var val_coherence  = 0;   // inlet 0
var val_stillness  = 0;   // inlet 1
var val_variance   = 0;   // inlet 2 — velocity variance (see v1.9)
var val_disorder   = 0;   // inlet 3
var val_velocity   = 0;   // inlet 4
var val_presence   = 0;   // inlet 5 — raw body count (integer, 0 to ~20)
var val_vertical   = 0;   // inlet 6
var val_clustering = 10;  // inlet 7

// ─── smoothed / filtered signal values ───────────────────────────────────────
// LP (low-pass): exponential moving average, tracks sustained group behaviour
// HP (high-pass): raw minus LP = impulsive/fast-changing component only
// sm_a = 0.15 → ~6 tick lag for velocity/variance/clustering
// sm_pres uses 0.6 → fast response since body count changes are discrete events
var sm_vel   = 0;
var sm_var   = 0;
var sm_clust = 10;
var sm_pres  = 0;
var sm_a     = 0.15;
var hp_vel   = 0;  // HP velocity  — sudden jolts, behavioural transitions
var hp_var   = 0;  // HP variance  — sudden chaos spikes

// ─── axis normalisation (v2.3, calibrated 2026-07-08, IAS sim, 20 RBs) ───────
// Observed ranges: sm_vel 0.03–0.91 | sm_clust 0.42–9.3 | sm_var 0.02–1.1
// Live-tunable via set_vel_norm / set_clust_norm / set_var_norm.
var VEL_NORM   = 1.15;   // was 2.5 — en never exceeded 0.36, hi states unreachable
var CLUST_NORM = 10.0;  // confirmed correct by calibration log
var VAR_NORM   = 1.2;   // was 1.5 — onerunner peaks sm_var at ~1.1

// ─── crowd-size scaling (v2.6) — live-settable per show from entrance headcount ─
// Three DISTINCT dials, deliberately not one number:
//   MAX_BODIES     — capacity. What "a full room" means. Drives state (pn) and
//                    Beds (pf) normalisation. Set to the actual booking size.
//   COLLAPSE_FULL  — bodies at which the room fully OPENS (EQ collapse lifts).
//                    Set ~75% of MAX so the last person isn't required.
//   LOW_PRES_FLOOR — below this many ACTUAL bodies, hold the mix up so a near-
//                    empty room doesn't fall off the bottom of the fader curve.
// All three are absolute body counts. Set via set_max_bodies / set_collapse_full
// / set_low_pres_floor. Defaults 20/10/5 = previous behaviour exactly.
var MAX_BODIES     = 20;
var COLLAPSE_FULL  = 10;
var LOW_PRES_FLOOR = 5;

// ─── erosion dispersion gate (v2.9) ─────────────────────────────────
// Resting dispersion of a "calm, together" room. Below this, dispersion reads
// as togetherness and contributes NOTHING to Erosion on Beds; above it, the
// remainder is rescaled to 0..1. Raise it if a normally-spread room already
// sounds degraded; lower it if genuine scattering fails to bite.
// ADJUST BY EAR at the residency — set via set_disp_erosion_gate.
var DISP_EROSION_GATE = 0.30;

// excitation window: set to 1.0 on a velocity spike, decays 0.75/tick (~6 ticks / ~3s)
// gives impactor elevated firing probability for several ticks after a transition
var excitation = 0;

// ─── cross-group state weights ───────────────────────────────────────────────
// Five dramaturgical states, blended continuously based on energy and coherence.
// Computed once per tick in compute_states(), used by all four layer functions.
//
//   EMPTY:       very low presence — room is bare
//   STILLNESS:   people present but barely moving
//   MID:         moderate energy, relatively coherent — the equilibrium state
//   HI_CHAOTIC:  high energy, low coherence — disorder, scatter, movement
//   HI_COH:      high energy, high coherence — group moves together
//
// Weight table (how loud each group is in each state):
//              Empty  Still  Mid   HiCha  HiCoh
//   Beds:      0.10   0.50   0.70   0.90   0.85
//   Textures:  0.05   0.20   0.60   0.75   0.35
//   Details:   0.05   0.75   0.45   0.15   0.60
//   Melodic:   0.08   0.30   0.75   0.12   0.80
//   Live:      0.08   0.40   0.70   0.05   0.90
// Non-zero empty weights on all groups (v1.8) prevent gm bottoming out at
// low presence and sending apply_group_space off the bottom of the fader curve.
var sw_empty      = 0;
var sw_stillness  = 0;
var sw_mid        = 0;
var sw_hi_chaotic = 0;
var sw_hi_coh     = 0;

// g_low_presence (v1.2): instant, unsmoothed "low presence" factor.
// 0 when val_presence >= 5 (no floor needed), 1 when val_presence == 0.
// Unlike sm_collapse (alpha 0.03, ~15s), this reacts the same tick the RB
// count drops — closes the gap before sm_collapse has ramped in.
var g_low_presence = 0;

// g_coherence (v2.7): the compensated coherence value — coherence_raw (cn·vn)
// lifted by sm_collapse toward 0.5 so the coherent layers don't vanish during
// collapse. Computed once in compute_states(), read by melodic, live, AND the
// flock send (/flock/coherence). Single source of truth keeps eye (flock
// tightening) and ear (melodic bloom) locked to the same value through collapse.
var g_coherence = 0;

// ─── level constants ──────────────────────────────────────────────────────────
var GROUP_ATTEN_DB_RANGE  = 30;    // v1.3: max dB cut when gm=0 in apply_group_space()
var GLOBAL_LEVEL_TRIM_DB  = 0;     // v1.4: live-tunable master trim, set via set_global_trim

// ─── init ────────────────────────────────────────────────────────────────────
// Must be sent (message "init") after every reload of this js object.
// Resets track-level dictionaries, all bed effects, the collapse EQ,
// the return sends, and the collapse/bloom smoothing state.
function init() {
    var all = beds_tracks.concat(textures_tracks).concat(details_tracks).concat(melodic_tracks).concat(live_tracks);
    for (var i = 0; i < all.length; i++) {
        track_levels[all[i]]  = 0.0;
        target_levels[all[i]] = 0.0;
        last_sent[all[i]]     = -1;
    }
    // reset smoothed dramaturgical state so a mid-session reload starts clean
    sm_collapse      = 0;
    sm_bloom         = 0;
	portal_send_beds     = 0;
	portal_send_textures = 0;
    // v1.5: reset mute smoother and open Live group bus
    sm_live_mute     = 0;
    GLOBAL_LEVEL_TRIM_DB = 0;
    // reset all bed effects to dry state
    send_osc("/track/1/device/1/2",  "0");  // Beat Repeat chance
    send_osc("/track/1/device/2/9",  "0");  // Glitch dry/wet
    send_osc("/track/1/device/3/2",  "0");  // Erosion amount
    send_osc("/track/1/device/4/6",  "0");  // Freq Shifter dry/wet
    send_osc("/return/B/device/1/1", "1");    // Portal (now on Return B) — on
	send_osc("/return/B/device/1/5", "1.0");  // wet fixed at 100% — send fader is the amount now
	send_osc("/track/1/send/B",      "0");    // Beds → Portal, starts dry
	send_osc("/track/8/send/B",      "0");    // Textures → Portal, starts dry
    send_osc("/track/1/device/6/27", "0");  // Spectral Time dry/wet
    send_osc("/track/1/device/6/3",  "0");  // Spectral Time freeze off
    // ── Acoustic Collapse — EQ Eight on each group, impactor, live, returns ──
    // band 1 = HP (param 7), band 8 = LP (param 77)
    // param 1 = device on, param 5 = band 1 on, param 75 = band 8 on
    // All start fully open (no collapse) on init.
    // Groups + Impactor + Live (full collapse depth at runtime):
    send_osc("/track/1/device/7/1",   "1");    // Beds EQ on
    send_osc("/track/1/device/7/5",   "1");    // HP band on
    send_osc("/track/1/device/7/75",  "1");    // LP band on
    send_osc("/track/1/device/7/7",   "0.0");  // HP freq: 20Hz
    send_osc("/track/1/device/7/77",  "0.99"); // LP freq: ~18kHz
    send_osc("/track/8/device/3/1",   "1");    // Textures EQ on
    send_osc("/track/8/device/3/5",   "1");
    send_osc("/track/8/device/3/75",  "1");
    send_osc("/track/8/device/3/7",   "0.0");
    send_osc("/track/8/device/3/77",  "0.99");
    send_osc("/track/15/device/2/1",  "1");    // Details EQ on
    send_osc("/track/15/device/2/5",  "1");
    send_osc("/track/15/device/2/75", "1");
    send_osc("/track/15/device/2/7",  "0.0");
    send_osc("/track/15/device/2/77", "0.99");
    send_osc("/track/22/device/2/1",  "1");    // Melodic EQ on
    send_osc("/track/22/device/2/5",  "1");
    send_osc("/track/22/device/2/75", "1");
    send_osc("/track/22/device/2/7",  "0.0");
    send_osc("/track/22/device/2/77", "0.99");
    send_osc("/track/29/device/3/1",  "1");    // Impactor EQ on
    send_osc("/track/29/device/3/5",  "1");
    send_osc("/track/29/device/3/75", "1");
    send_osc("/track/29/device/3/7",  "0.0");
    send_osc("/track/29/device/3/77", "0.99");
    send_osc("/track/31/device/4/1",  "1");    // Live EQ on
    send_osc("/track/31/device/4/5",  "1");
    send_osc("/track/31/device/4/75", "1");
    send_osc("/track/31/device/4/7",  "0.0");
    send_osc("/track/31/device/4/77", "0.99");
    // Returns (70% collapse depth at runtime):
    send_osc("/return/A/device/3/1",  "1");    // Return A EQ on
    send_osc("/return/A/device/3/5",  "1");
    send_osc("/return/A/device/3/75", "1");
    send_osc("/return/A/device/3/7",  "0.0");
    send_osc("/return/A/device/3/77", "0.99");
    send_osc("/return/C/device/3/1",  "1");    // Return C EQ on
    send_osc("/return/C/device/3/5",  "1");
    send_osc("/return/C/device/3/75", "1");
    send_osc("/return/C/device/3/7",  "0.0");
    send_osc("/return/C/device/3/77", "0.99");
    send_osc("/return/D/device/3/1",  "1");    // Return D EQ on
    send_osc("/return/D/device/3/5",  "1");
    send_osc("/return/D/device/3/75", "1");
    send_osc("/return/D/device/3/7",  "0.0");
    send_osc("/return/D/device/3/77", "0.99");
    send_osc("/return/E/device/2/1",  "1");    // Return E EQ on
    send_osc("/return/E/device/2/5",  "1");
    send_osc("/return/E/device/2/75", "1");
    send_osc("/return/E/device/2/7",  "0.0");
    send_osc("/return/E/device/2/77", "0.99");
    // Return sends — dramaturgical space for the composed layers
    send_osc("/track/15/send/C", "0.15");  // Details → Hybrid Reverb: small non-zero floor
    send_osc("/track/22/send/D", "0.0");   // Melodic → Convolution Reverb Pro: starts dry
    // Live group sends — reset to floor values on init
    send_osc("/track/31/send/A", "0.0");   // Live → Grain Delay: starts dry (chaos-driven)
    send_osc("/track/31/send/C", "0.10");  // Live → Hybrid Reverb: stillness floor
    send_osc("/track/31/send/D", "0.0");   // Live → Convolution Reverb Pro: starts dry
    // Send E (Impact_return): parallel FX return for the impactor — set manually
    // in Live to taste (reverb tail, spatial crush, etc). Not controller-driven.
    // Reset to 0 here so a reload doesn't leave a stale level from a previous session.
    send_osc("/track/29/send/E", "0.0");   // Impactor → Impact_return: manual level
}

function loadbang() {
    var all = beds_tracks.concat(textures_tracks).concat(details_tracks).concat(melodic_tracks).concat(live_tracks);
    for (var i = 0; i < all.length; i++) {
        track_levels[all[i]]  = 0.0;
        target_levels[all[i]] = 0.0;
        last_sent[all[i]]     = -1;
    }
}


// ─── main tick (inlet 8: bang from 500ms metro) ──────────────────────────────
// The heartbeat of the system. Every 500ms, in strict order:
// smooth the incoming scores, compute the dramaturgical states,
// update each layer's targets, update tools/collapse/impactor/scene,
// then interpolate the actual fader positions one step toward their targets.
function bang() {
    if (inlet === 8) {
        smooth();
        compute_states();   // must run before any update_ function
        update_beds();
        update_textures();
        update_details();
        update_melodic();
        update_live();
        update_tools();
        update_collapse();
        update_impactor();
        update_scene();
        apply_levels();
    }
}

// ─── score input (inlets 0–7) ────────────────────────────────────────────────
function msg_float(val) {
    var n = inlet;
    if      (n === 0) val_coherence  = val;
    else if (n === 1) val_stillness  = val;
    else if (n === 2) val_variance   = val;
    else if (n === 3) val_disorder   = val;
    else if (n === 4) val_velocity   = val;
    else if (n === 5) val_presence   = val;
    else if (n === 6) val_vertical   = val;
    else if (n === 7) val_clustering = val;
}

function msg_int(val) { msg_float(val); }


// ─── signal processing ───────────────────────────────────────────────────────
// LP via exponential smoothing — presence uses faster coefficient (0.6) because
// body count changes are discrete events, not gradual drifts.
// HP = raw minus LP: the impulsive component, only non-zero during transitions.
// Excitation decays at 0.75/tick — ~6 tick elevated window after a velocity spike.
function smooth() {
    sm_vel   = sm_vel   + sm_a * (val_velocity   - sm_vel);
    sm_var   = sm_var   + sm_a * (val_variance   - sm_var);
    sm_clust = sm_clust + sm_a * (val_clustering - sm_clust);
    sm_pres  = sm_pres  + 0.6  * (val_presence   - sm_pres);  // fast: body count is discrete

    hp_vel = val_velocity - sm_vel;  // impulsive velocity: jolts, transitions
    hp_var = val_variance - sm_var;  // impulsive variance: sudden chaos changes

    if (hp_vel > 0.35) excitation = 1.0;
    else              excitation = excitation * 0.75;
}


// ─── state blending ──────────────────────────────────────────────────────────
// Computes five continuous state weights summing to 1.0.
// These are blended, not discrete — the system is always between states.
//
// Axes:
//   pn  = presence normalised (0–1, based on up to 20 bodies)
//   en  = energy normalised (0–1, based on sm_vel up to 2.5 m/s)
//   co  = coherence: 0 = chaotic/dispersed, 1 = aligned/together
//
// mid_shape: parabola peaking at en=0.5, zero at en=0 and en=1
//   → only the moderate-energy band qualifies for the mid state
//
// Weights are normalised after computation so they always sum to 1.
// This means transitions between states are always crossfades, never hard cuts.
function compute_states() {
    var pn = clamp(sm_pres / MAX_BODIES, 0, 1);
    var en = clamp(sm_vel  / VEL_NORM, 0, 1);
    var co = (1 - clamp(sm_clust / CLUST_NORM, 0, 1)) * (1 - clamp(sm_var / VAR_NORM, 0, 1));
    var mid_shape = 4 * en * (1 - en);  // parabola: 0 at en=0, peak 1 at en=0.5, 0 at en=1

    var we = (1 - pn) * (1 - pn);          // empty: falls off quickly as presence grows
    var ws = pn * (1 - en);                 // stillness: present but low energy
    var wm = pn * mid_shape * co;           // mid: moderate energy + coherent
    var wc = pn * en * (1 - co);            // hi_chaotic: high energy + incoherent
    var wh = pn * en * co;                  // hi_coh: high energy + coherent

    var total = we + ws + wm + wc + wh;
    if (total < 0.001) total = 0.001;       // prevent division by zero

    sw_empty      = we / total;
    sw_stillness  = ws / total;
    sw_mid        = wm / total;
    sw_hi_chaotic = wc / total;
    sw_hi_coh     = wh / total;

    // instant low-presence factor (v1.2) — see declaration comment above.
    // Uses raw val_presence, not sm_pres, so it tracks the actual body
    // count this tick with zero smoothing lag.
    g_low_presence = 1.0 - clamp(val_presence / LOW_PRES_FLOOR, 0, 1);

    // compensated coherence (v2.7): raw co (== cn·vn above) lifted by collapse,
    // exactly the formula melodic/live used locally. One source of truth for the
    // coherent layers and the flock send. co is already computed above.
    g_coherence = co + sm_collapse * (0.5 - co);
}

// group_mult: dot product of state weights with per-group weight table
// returns a single multiplier (0–1) controlling how much space a group occupies
// args: weight for each state (empty, stillness, mid, hi_chaotic, hi_coh)
//
// COLLAPSE / LOW-PRESENCE COMPENSATION (v1.1 + v1.2):
// At low presence sw_empty dominates the blend, so the raw dot product collapses
// toward each group's near-zero "empty" weight. Multiplying the per-track levels
// by that crushes every child fader toward silence — and undoes the collapse
// compensation already applied to pf/sn/df/coherence inside the layer functions.
//
// Two floors feed this, taking whichever is stronger:
//   - g_low_presence: instant (unsmoothed), reacts the same tick val_presence
//     drops. Prevents the near-(-inf) plunge in the seconds before sm_collapse
//     has ramped in.
//   - sm_collapse: slow (~15s), the dramaturgical collapse state — keeps the
//     floor held as the master EQ narrows the band over time.
//
// Both are 0 in the "full room" case, so this lerp is a no-op at normal
// presence and normal mixing behaviour is unchanged.
function group_mult(we, ws, wm, wc, wh) {
    var gm = sw_empty * we + sw_stillness * ws + sw_mid * wm + sw_hi_chaotic * wc + sw_hi_coh * wh;
    var floor_amount = Math.max(g_low_presence, sm_collapse);
    return gm + floor_amount * (0.5 - gm);
}


// ─── layer level functions ───────────────────────────────────────────────────
// Each function computes a raw per-track level from its behavioural dimension,
// then multiplies by the group's state multiplier (gm).
// This separates "internal character of the group" from "how much space it gets."

// BEDS: presence-driven — more bodies = more bed layers open
// Per-track sine offset creates individual variance response within the group.
// Collapse compensation holds presence factor up so the master EQ has signal to filter.
// Bloom pulls all tracks toward 0.88 during high coherence — foundation of the full bloom.
function update_beds() {
    var gm = group_mult(0.10, 0.50, 0.70, 0.90, 0.85);
    // collapse compensation: at full collapse, hold pf toward 0.6 regardless of presence
    var pf_raw = clamp(sm_pres / MAX_BODIES, 0.15, 1.0);
    var pf     = pf_raw + sm_collapse * (0.6 - pf_raw);
    for (var i = 0; i < beds_tracks.length; i++) {
        var spread     = i / beds_tracks.length;
        var threshold  = spread * 0.5;
        var var_offset = Math.sin(i * 1.7 + sm_var * 3.0) * 0.2 * sm_var;
        var level;
        if (pf > threshold) {
            level = 0.3 + (pf - threshold) * 0.55;
        } else {
            level = 0.15;
        }
        level = level + var_offset;
        level = clamp(level, 0.05, 0.85);           // floor before bloom — prevents bad base values
        level = level + sm_bloom * (0.88 - level);  // bloom: pulls toward 0.88 at full coherence
        target_levels[beds_tracks[i]] = apply_group_space(level, gm, 0.85, FADER_FLOOR_BEDS);
    }
}

// TEXTURES: clustering-driven — dispersed group = more texture
// Alternates wide/narrow spread across even/odd tracks.
// Collapse compensation holds sn up so granular texture stays audible during collapse.
// Bloom pulls toward 0.85.
function update_textures() {
    var gm = group_mult(0.05, 0.20, 0.60, 0.75, 0.35);
    // collapse compensation: at full collapse, hold sn toward 0.5
    var sn_raw = clamp(sm_clust / CLUST_NORM, 0, 1);
    var sn     = sn_raw + sm_collapse * (0.5 - sn_raw);
    for (var i = 0; i < textures_tracks.length; i++) {
        var tight    = 0.55;
        var spread_l = (i % 2 === 0) ? 0.7 : 0.2;
        var level    = tight + sn * (spread_l - tight);
        level = clamp(level, 0.1, 0.85);            // floor before bloom — prevents bad base values
        level = level + sm_bloom * (0.85 - level);  // bloom: pulls toward 0.85 at full coherence
        target_levels[textures_tracks[i]] = apply_group_space(level, gm, 0.85, FADER_FLOOR_DEFAULT);
    }
}

// DETAILS: inverse velocity + stillness bonus — quiet/slow group = more detail
// These are the intimate sounds that reward stillness and attention.
// Ceiling pulled to 0.60 — details has a leaner chain and was dominating the mix.
// Collapse compensation holds df up so detail layer stays audible during acoustic collapse.
// Send C (Hybrid Reverb) opens with stillness — computed once per tick, after the loop.
function update_details() {
    var gm = group_mult(0.05, 0.75, 0.45, 0.15, 0.60);
    var vn     = clamp(sm_vel / VEL_NORM, 0, 1);
    var df_raw = 1.0 - vn;
    var df     = df_raw + sm_collapse * (0.5 - df_raw);  // collapse holds level up
    var sb     = val_stillness * 0.3;                     // stillness adds a small bonus
    for (var i = 0; i < details_tracks.length; i++) {
        var spread    = i / details_tracks.length;
        var threshold = spread * 0.4;
        var level;
        if (df > threshold) {
            level = 0.15 + (df - threshold + sb) * 0.7;
        } else {
            level = 0.15;
        }
        level = clamp(level, 0.08, 0.60);           // floor before bloom — prevents bad base values
        level = level + sm_bloom * (0.60 - level);  // bloom: low ceiling, leaner chain
        target_levels[details_tracks[i]] = apply_group_space(level, gm, 0.60, FADER_FLOOR_DEFAULT);
    }
    // send C (Hybrid Reverb): stillness opens the room around detail material
    // floor at 0.15 so details always has a touch of space even at rest
    var details_send_c = 0.15 + clamp(val_stillness, 0, 1) * 0.65;
    send_tool("/track/15/send/C", round2(details_send_c));
}

// MELODIC: coherence-driven — emerges when group moves together with low chaos
// Doubly filtered: internal logic + state weights both require alignment.
// The rarest, most fragile layer — only fully audible when group achieves something together.
// Bloom ceiling 0.85 with raised floor 0.10 — melodic needs room to breathe in the mix.
// Collapse compensation holds coherence up so melodic layer doesn't vanish during collapse.
// Send D (Convolution Reverb Pro) opens with coherence — computed once per tick, after the loop.
function update_melodic() {
    var gm = group_mult(0.08, 0.30, 0.75, 0.12, 0.80);
    var coherence     = g_coherence;   // v2.7: shared value from compute_states()
    var sb            = val_coherence * 0.3;
    for (var i = 0; i < melodic_tracks.length; i++) {
        var spread    = i / melodic_tracks.length;
        var threshold = 0.1 + spread * 0.3;   // first track opens at 0.1, last at 0.4
        var level;
        if (coherence > threshold) {
            level = 0.15 + (coherence - threshold + sb) * 0.8;
        } else {
            level = 0.08 + coherence * 0.3;
        }
        level = clamp(level, 0.10, 0.85);           // floor before bloom — prevents bad base values
        level = level + sm_bloom * (0.85 - level);  // bloom: pulls toward 0.85 at full coherence
        target_levels[melodic_tracks[i]] = apply_group_space(level, gm, 0.85, FADER_FLOOR_DEFAULT);
    }
    // send D (Convolution Reverb Pro): coherence opens the architectural space
    // starts dry, reaches 0.75 at full coherence — the room becomes the instrument
    var melodic_send_d = clamp(val_coherence, 0, 1) * 0.75;
    send_tool("/track/22/send/D", round2(melodic_send_d));
}


// LIVE (voice + guitar): coherence-driven — the musician emerges when the
// group aligns and gets swallowed when chaos dominates.
//
// State weights:
//   Empty 0.00 — room is bare, no need to amplify
//   Still 0.40 — intimate context, quiet presence
//   Mid   0.70 — active equilibrium, musician is present
//   HiCha 0.05 — group is loud/scattered, musician swallowed (mute territory)
//   HiCoh 0.90 — group coheres, musician emerges fully
//
// Per-child level logic mirrors Melodic: coherence-driven threshold stagger
// across the two tracks (Voice first, Instrum slightly behind).
//
// MUTE MECHANIC (track 31 bus):
//   When sw_hi_chaotic > 0.6, sm_live_mute ramps toward 1 (~3s, alpha 0.04)
//   → bus fader rides from 0.85 down toward 0 (acoustic bleed only remains).
//   When chaos drops, sm_live_mute ramps back toward 0 → bus reopens.
//   The mute is applied directly to the group bus via send_osc (not through
//   apply_levels / target_levels) so it doesn't interfere with child routing.
function update_live() {
    var gm = group_mult(0.08, 0.40, 0.70, 0.05, 0.90);

    // coherence signal: shared compensated value (v2.7), same as update_melodic
    var coherence     = g_coherence;   // v2.7: shared value from compute_states()
    var sb            = val_coherence * 0.3;

    for (var i = 0; i < live_tracks.length; i++) {
        var spread    = i / live_tracks.length;
        var threshold = 0.1 + spread * 0.2;   // Voice opens at 0.1, Instrum at 0.3
        var level;
        if (coherence > threshold) {
            level = 0.15 + (coherence - threshold + sb) * 0.8;
        } else {
            level = 0.08 + coherence * 0.3;
        }
        level = clamp(level, 0.10, 0.85);
        target_levels[live_tracks[i]] = apply_group_space(level, gm, 0.85, FADER_FLOOR_DEFAULT);
    }

    // mute mechanic — rides the group bus (track 31), not the children
    // v1.7: no longer goes to hard mute. sm_live_mute ramps toward 0.6 max
    // attenuation (not 1.0), so bus floor is 0.85 * 0.4 ≈ 0.34 (~-28dB).
    // Voice stays present but loses definition — Send A carries the rest
    // as scattered grains.
    var mute_target  = sw_hi_chaotic > 0.6 ? 0.6 : 0.0;
    sm_live_mute     = sm_live_mute + 0.04 * (mute_target - sm_live_mute);
    var bus_fader    = round2(0.85 * (1.0 - sm_live_mute));
    send_tool("/track/" + live_group + "/volume", bus_fader);

    // Send A (Grain Delay): opens as chaos rises — voice scatters into grains.
    // 0 at no chaos, 0.70 at full chaos. Inverse of the level logic:
    // when coherence is high the voice is clear and direct; when chaos
    // dominates it dissolves spatially while staying audible.
    var live_send_a = clamp(sw_hi_chaotic, 0, 1) * 0.70;
    send_tool("/track/" + live_group + "/send/A", round2(live_send_a));

    // send C (Hybrid Reverb): stillness opens an intimate room around the voice
    // floor at 0.10 — always a touch of space even when the room is active
    var live_send_c = 0.10 + clamp(val_stillness, 0, 1) * 0.60;
    send_tool("/track/" + live_group + "/send/C", round2(live_send_c));

    // send D (Convolution Reverb Pro): coherence opens the architectural space
    // slightly under Melodic's 0.75 ceiling so the live voice doesn't
    // overwhelm the composed layer when both are fully open
    var live_send_d = clamp(val_coherence, 0, 1) * 0.65;
    send_tool("/track/" + live_group + "/send/D", round2(live_send_d));
}

// ─── effects / tools ─────────────────────────────────────────────────────────
// These shape the quality/character of the sound, not the volume.
// Mostly affect the Beds group bus (track 1) and Textures group bus (track 8).
function update_tools() {
    // v2.7: flock coherence → ahfsd_spat5.js hicoh (flock release).
    // Same compensated g_coherence the melodic/live layers hear, so the boids
    // tighten in lock with the melodic bloom — eye and ear together, including
    // through collapse. Patch: [route /flock] → [route coherence] → [prepend
    // hicoh] → [js ahfsd_spat5.js] inlet 1.
    send_tool("/flock/coherence", round2(g_coherence));

    // bloom: kicks in above coherence 0.3, fully active at 0.6
    // slow attack (~25 ticks), faster release (~10 ticks) —
    // bloom builds gently as the group sustains coherence, drops with intention
    var bloom_raw = clamp((val_coherence - 0.3) / 0.3, 0, 1);
    sm_bloom = bloom_raw > sm_bloom
        ? sm_bloom + 0.02 * (bloom_raw - sm_bloom)   // attack
        : sm_bloom + 0.06 * (bloom_raw - sm_bloom);  // release

    var dispersion = clamp(sm_clust / CLUST_NORM, 0, 1);
    var variance   = clamp(sm_var   / VAR_NORM,   0, 1);
    var presence   = clamp(sm_pres  / MAX_BODIES, 0, 1);
    var energy     = clamp(sm_vel   / VEL_NORM,   0, 1);

    // Spectral Resonator on Textures (track 8, device 2)
    // sm_var drives sustained grain texture; hp_var adds sudden scatter bursts
    var gd       = clamp(0.1 + variance * 0.5 + sw_hi_chaotic * 0.3, 0.1, 0.8);
    var gd_hp    = clamp(hp_var / 0.6, 0, 0.3);
    var gd_total = clamp(gd + gd_hp, 0.1, 0.9);
    send_tool("/track/8/device/2/19", round2(gd_total * 0.8));       // dry/wet
    send_tool("/track/8/device/2/14", round2(gd_total * 0.6));       // pitch mod
    send_tool("/track/8/device/2/13", round2(gd_total));              // mod rate
    send_tool("/track/8/device/2/8",  round2(0.3 + gd_total * 0.5)); // stretch

    // Beat Repeat on Beds (track 1, device 1) — engages only at high variance + dispersion
    var br_chance = clamp(sw_hi_chaotic * 0.5 + variance * 0.3, 0, 0.7);
    send_tool("/track/1/device/1/2", round2(br_chance));

    // Glitch on Beds (track 1, device 2) — fires during spatial reorganisation
    var clust_delta  = Math.abs(sm_clust - val_clustering);
    var glitch_depth = clamp(clust_delta / 3.0, 0, 0.6);   // v2.2: dropped unconditioned sm_var*0.2 floor
    send_tool("/track/1/device/2/9", round2(glitch_depth));

    // Erosion on Beds (track 1, device 3) — low presence + genuine spatial
	// fragmentation = degradation. Dispersion below DISP_EROSION_GATE reads as
	// "together enough" and contributes nothing.
	var dispersion_gated  = clamp((dispersion - DISP_EROSION_GATE) / (1.0 - DISP_EROSION_GATE), 0, 1);
	var erosion = clamp((1.0 - presence) * 0.3 + dispersion_gated * 0.35, 0, 0.35);
	send_tool("/track/1/device/3/2", round2(erosion));

    // Frequency Shifter on Beds (track 1, device 4)
    // Peaked by impactor firing, decays x0.5 each tick — sympathetic aftershock
    if (freq_shift_level > 0.01) {
        freq_shift_level = freq_shift_level * 0.5;
        send_tool("/track/1/device/4/6", round2(freq_shift_level));
    } else if (freq_shift_level > 0) {
        freq_shift_level = 0;
        send_tool("/track/1/device/4/6", "0");
    }

    // add:
// Portal, now living once on Return B. Macros stay driven by the same
// room-wide dispersion/variance regardless of who's sending into it —
// one shared "portal character"; each group's send amount decides how
// much of that group passes through it.
send_tool("/return/B/device/1/3", round2(variance));    // macro1
send_tool("/return/B/device/1/4", round2(dispersion));  // macro2

// Beds → Send B: same curve/character it had as an insert, just retargeted
var beds_portal_target = clamp(dispersion * 0.7 + variance * 0.3, 0, 0.80);
portal_send_beds = beds_portal_target > portal_send_beds
    ? portal_send_beds + 0.05
    : portal_send_beds - 0.02;
portal_send_beds = clamp(portal_send_beds, 0, 0.80);
send_tool("/track/1/send/B", round2(portal_send_beds));

// Textures → Send B: variance-led instead of dispersion-led, so it leans
// into velocity scatter (matching its own Granulator character) rather
// than just mirroring Beds' curve
var textures_portal_target = clamp(variance * 0.5 + energy * 0.3 + dispersion * 0.2, 0, 0.80);
portal_send_textures = textures_portal_target > portal_send_textures
    ? portal_send_textures + 0.05
    : portal_send_textures - 0.02;
portal_send_textures = clamp(portal_send_textures, 0, 0.80);
send_tool("/track/8/send/B", round2(portal_send_textures));

    // Spectral Time / Freeze on Beds (track 1, device 7)
    // Freeze = memory of energy: captures high-energy moments and holds them.
    // Driven by high velocity, not stillness — it freezes the peak, not the silence.
    var freeze_score = clamp((energy - 0.7) / 0.25, 0, 1);
    send_tool("/track/1/device/6/27", round2(freeze_score * 0.85));  // dry/wet
    send_tool("/track/1/device/6/3",  freeze_score > 0.5 ? 1 : 0);  // freeze toggle
}

// ─── acoustic collapse ───────────────────────────────────────────────────────
// Triggered when presence drops below 5 people.
// EQ Eight on master (device 1) squeezes the band from both ends:
//   band 1 (HP) sweeps up from 20Hz → ~372Hz at full collapse
//   band 8 (LP) sweeps down from ~18kHz → ~638Hz at full collapse
// Leaves a thin mid band (372–638Hz) — roughly the range of a human voice,
// like the room remembering that people were there.
// Also emits /collapse/amount for Phase 2 (SPAT~ spatial compression in Max).
//
// NOTE (v1.1): sm_collapse is also read by group_mult() and by the per-layer
// pf/sn/df/coherence compensations. As collapse deepens, those keep the groups
// audible so the EQ narrowing always has signal to filter — collapse is heard
// as a tightening of the band, never as the mix going silent.
function update_collapse() {
    // presence threshold: ≥5 people = no collapse, 0 people = full collapse
    var raw_collapse = 1.0 - clamp(val_presence / COLLAPSE_FULL, 0, 1);

    // very slow smoothing — collapse should creep in, not snap
    // alpha 0.03 ≈ 30 ticks (~15 seconds) to converge
    sm_collapse = sm_collapse + 0.03 * (raw_collapse - sm_collapse);

    // deduplicate — only send OSC when meaningfully changed
    var ca = round2(sm_collapse);
    if (last_tool_sent["collapse"] === ca) return;
    last_tool_sent["collapse"] = ca;

    // EQ Eight band parameter mapping (same on all instances):
    //   band 1 (HP): param 7 = freq  →  0.0 (20Hz) → 0.47 (~372Hz) at full collapse
    //   band 8 (LP): param 77 = freq →  0.99 (~18kHz) → 0.54 (~638Hz) at full collapse
    //
    // Two collapse depths:
    //   ca_full   — groups + impactor + live: full collapse depth
    //   ca_return — returns: 70% of full (acoustic memory outlasts the sources)
    var ca_full   = ca;
    var ca_return = ca * 0.70;

    var hp_full   = round2(ca_full   * 0.47);
    var lp_full   = round2(0.99 - ca_full   * 0.45);
    var hp_return = round2(ca_return * 0.47);
    var lp_return = round2(0.99 - ca_return * 0.45);

    // ── groups + impactor + live (full collapse depth) ────────────────────────
    // Group A (Beds)       track 1  device 8
    send_osc("/track/1/device/7/7",   hp_full);
    send_osc("/track/1/device/7/77",  lp_full);
    // Group B (Textures)   track 8  device 3
    send_osc("/track/8/device/3/7",   hp_full);
    send_osc("/track/8/device/3/77",  lp_full);
    // Group C (Details)    track 15 device 2
    send_osc("/track/15/device/2/7",  hp_full);
    send_osc("/track/15/device/2/77", lp_full);
    // Group D (Melodic)    track 22 device 2
    send_osc("/track/22/device/2/7",  hp_full);
    send_osc("/track/22/device/2/77", lp_full);
    // Impactor             track 29 device 3
    send_osc("/track/29/device/3/7",  hp_full);
    send_osc("/track/29/device/3/77", lp_full);
    // Group E (Live)       track 31 device 4
    send_osc("/track/31/device/4/7",  hp_full);
    send_osc("/track/31/device/4/77", lp_full);

    // ── returns (70% collapse depth — acoustic memory outlasts sources) ────────
    // Return A (Grain Delay)        device 3
    send_osc("/return/A/device/3/7",   hp_return);
    send_osc("/return/A/device/3/77",  lp_return);
    // Return C (Hybrid Reverb)      device 3
    send_osc("/return/C/device/3/7",   hp_return);
    send_osc("/return/C/device/3/77",  lp_return);
    // Return D (Convolution Reverb) device 3
    send_osc("/return/D/device/3/7",   hp_return);
    send_osc("/return/D/device/3/77",  lp_return);
    // Return E (Impactor Return)    device 2
    send_osc("/return/E/device/2/7",   hp_return);
    send_osc("/return/E/device/2/77",  lp_return);

    // Phase 2 hook: Max receives /collapse/amount → SPAT5 spatial compression
    send_osc("/collapse/amount", ca);
}


// ─── impactor ────────────────────────────────────────────────────────────────
// Three firing modes selected by behavioural context:
//
//   BURST   — hp_vel spike + high chaos
//             rapid scattered hits, notes 40-42 (3 to 1 layer), very short
//
//   HEAVY   — sustained high velocity + low chaos (coherent group movement)
//             one full hit, note 36 (all 7 layers), loud, long natural tail
//
//   SINGLE  — all other conditions
//             medium hit, notes 36-38, intensity-scaled
//
// Note layer map:
//   C1=36 (7L), C#1=37 (6L), D1=38 (5L), D#1=39 (4L),
//   E1=40 (3L), F1=41 (2L), F#1=42 (1L), above F#1 = silence
//
// State gating (impactor_gate):
//   Suppressed during empty and stillness states.
//   Minimal during mid state (equilibrium — few surprises).
//   Full probability during high chaotic.
//   Moderate during high coherent (heavy mode naturally dominates here).
function update_impactor() {
    var now = new Date().getTime();
    if (now - impactor_last_fire < impactor_min_cooldown_ms) return;

    // state gate: suppresses impactor in calm/empty states
    var impactor_gate = sw_mid * 0.1 + sw_hi_chaotic * 1.0 + sw_hi_coh * 0.6;

    var p_spike  = clamp((hp_vel - 0.15) / 0.6, 0, 0.4);
    var p_excite = excitation * 0.15;
    var p_base   = clamp((sm_vel - 0.6) / 1.5, 0, 0.2);
    var tp       = (p_spike + p_excite + p_base) * 0.25 * impactor_gate;

    if (Math.random() >= tp) return;

    var chaos = clamp(sm_var / VAR_NORM, 0, 1);

    if (hp_vel > 0.35 && chaos > 0.4) {
        // BURST: 3-5 rapid scattered hits, short notes, fewer layers
        impactor_min_cooldown_ms = 300;
        var num_hits = 3 + Math.floor(Math.random() * 3);
        for (var i = 0; i < num_hits; i++) {
            schedule_trigger(
                i * 80,
                40 + Math.floor(Math.random() * 3),
                Math.round(50  + Math.random() * 60),
                Math.round(30  + Math.random() * 50)
            );
        }
        impactor_last_fire = now;
        freq_shift_level = 0.9;

    } else if (sm_vel > 0.75 && chaos < 0.3) {
        // HEAVY: full 7 layers, loud, long natural tail
        impactor_min_cooldown_ms = 2000;
        var vel = Math.round(100 + Math.random() * 27);
        var dur = Math.round(800 + Math.random() * 600);
        outlet(1, "/impactor/trigger 36 " + vel + " " + dur);
        impactor_last_fire = now;
        freq_shift_level = 1.0;

    } else {
        // SINGLE: medium hit, note and intensity scaled to current energy
        impactor_min_cooldown_ms = 600;
        var note      = 36 + Math.floor(Math.random() * 3);
        var intensity = clamp(Math.max(hp_vel, sm_vel * 0.5) / 0.6, 0.2, 1.0);
        var vel       = Math.round(50 + intensity * 77);
        var dur       = Math.round(200 + intensity * 400);
        outlet(1, "/impactor/trigger " + note + " " + vel + " " + dur);
        impactor_last_fire = now;
        freq_shift_level = 0.6;
    }
}

// schedule_trigger: fires one /impactor/trigger message after delay_ms
// used by burst mode to space hits 80ms apart via Max Tasks
function schedule_trigger(delay_ms, note, vel, dur) {
    if (delay_ms <= 0) {
        outlet(1, "/impactor/trigger " + note + " " + vel + " " + dur);
    } else {
        var t = new Task(function() {
            outlet(1, "/impactor/trigger " + this.note + " " + this.vel + " " + this.dur);
        }, this);
        t.note = note;
        t.vel  = vel;
        t.dur  = dur;
        t.schedule(delay_ms);
    }
}


// ─── scene switching ─────────────────────────────────────────────────────────
// Maps energy / chaos / spread to 8 Ableton scene slots.
// Currently disabled via scene_cooldown_ms = 999999999.
// Enable once all 8 scenes have clip content.
function update_scene() {
    var now = new Date().getTime();
    if (now - scene_last_change < scene_cooldown_ms) return;

    var energy = clamp(sm_vel   / 3.0,  0, 1);
    var chaos  = clamp(sm_var   / 2.0,  0, 1);
    var spread = clamp(sm_clust / 12.0, 0, 1);

    var ns;
    if      (energy < 0.3  && chaos < 0.3  && spread < 0.4)  ns = 1;
    else if (energy < 0.3  && chaos < 0.3  && spread >= 0.4) ns = 2;
    else if (energy < 0.3  && chaos >= 0.3 && spread < 0.4)  ns = 3;
    else if (energy < 0.3  && chaos >= 0.3 && spread >= 0.4) ns = 4;
    else if (energy >= 0.3 && chaos < 0.3  && spread < 0.4)  ns = 5;
    else if (energy >= 0.3 && chaos < 0.3  && spread >= 0.4) ns = 6;
    else if (energy >= 0.3 && chaos >= 0.3 && spread < 0.4)  ns = 7;
    else                                                       ns = 8;

    if (ns !== current_scene) {
        scene_last_change = now;
        send_osc("/scene/launch", ns);
        current_scene = ns;
    }
}


// ─── fader interpolation ─────────────────────────────────────────────────────
// Moves track_levels toward target_levels at fade_speed per tick.
// Only sends OSC when change exceeds send_threshold — reduces UDP traffic.
function apply_levels() {
    var all = beds_tracks.concat(textures_tracks).concat(details_tracks).concat(melodic_tracks).concat(live_tracks);
    for (var i = 0; i < all.length; i++) {
        var t       = all[i];
        var current = track_levels[t];
        var target  = target_levels[t];

        if (Math.abs(current - target) < 0.003) {
            track_levels[t] = target;
        } else if (current < target) {
            track_levels[t] = current + fade_speed;
            if (track_levels[t] > target) track_levels[t] = target;
        } else {
            track_levels[t] = current - fade_speed;
            if (track_levels[t] < target) track_levels[t] = target;
        }

        var rounded = round2(track_levels[t]);
        if (last_sent[t] === -1 || Math.abs(rounded - last_sent[t]) >= send_threshold) {
            send_osc("/track/" + t + "/volume", rounded);
            last_sent[t] = rounded;
        }
    }
}


// ─── OSC output helpers ───────────────────────────────────────────────────────
function send_osc(address, value) {
    outlet(0, address + " " + value);
}

// send_tool: like send_osc but skips if value unchanged since last tick
function send_tool(address, value) {
    if (last_tool_sent[address] === value) return;
    last_tool_sent[address] = value;
    outlet(0, address + " " + value);
}


// ─── utility ─────────────────────────────────────────────────────────────────
function clamp(val, lo, hi) { return Math.max(lo, Math.min(hi, val)); }
function round2(val)         { return Math.round(val * 100) / 100; }

// ─── fader <-> dB curve (v1.3) ───────────────────────────────────────────────
// Live's mixer_device "volume" parameter (the 0-1 float we send over OSC) is
// NOT linear in dB. Measured on the AHFSD session:
//   fader  dB
//   0.00  -70   (practical silence floor — Live shows -inf below ~0.02)
//   0.10  -48.6
//   0.15  -41.0
//   0.30  -24.2
//   0.40  -18.0
//   0.50  -14.0
//   0.60  -10.0
//   0.85    0.0  (documented unity point)
//   1.00   +6.0  (documented top of range)
// FADER_DB_CURVE pairs these for piecewise-linear interpolation in both
// directions. Only used for parameters on this curve: track/return volume
// and sends. Device dry/wet, macros, and EQ frequency are on their own
// (often intentionally logarithmic) parameter ranges and do NOT use this.
var FADER_DB_CURVE = [
    [0.00, -70.0],
    [0.10, -48.6],
    [0.15, -41.0],
    [0.30, -24.2],
    [0.40, -18.0],
    [0.50, -14.0],
    [0.60, -10.0],
    [0.85,   0.0],
    [1.00,   6.0]
];

// fader_to_db: piecewise-linear lookup, fader (0-1) -> dB
function fader_to_db(fader) {
    fader = clamp(fader, 0.0, 1.0);
    var curve = FADER_DB_CURVE;
    for (var i = 0; i < curve.length - 1; i++) {
        var lo = curve[i], hi = curve[i + 1];
        if (fader <= hi[0]) {
            var t = (fader - lo[0]) / (hi[0] - lo[0]);
            return lo[1] + t * (hi[1] - lo[1]);
        }
    }
    return curve[curve.length - 1][1];
}

// db_to_fader: piecewise-linear lookup, dB -> fader (0-1)
// curve is monotonically increasing in both fader and dB, so we can walk
// the same table the other way round.
function db_to_fader(db) {
    var curve = FADER_DB_CURVE;
    db = clamp(db, curve[0][1], curve[curve.length - 1][1]);
    for (var i = 0; i < curve.length - 1; i++) {
        var lo = curve[i], hi = curve[i + 1];
        if (db <= hi[1]) {
            var t = (db - lo[1]) / (hi[1] - lo[1]);
            return lo[0] + t * (hi[0] - lo[0]);
        }
    }
    return curve[curve.length - 1][0];
}

// FADER_FLOOR: the minimum fader value any child track can reach through
// apply_group_space, regardless of gm or level. Prevents the combination of
// a quiet per-track level and a low gm from falling off the bottom of the
// fader->dB curve into effective silence.
// 0.26 ≈ -27dB — present but clearly receded. Beds uses a lower floor (0.18
// ≈ -38dB) since it anchors the entire mix and can sit quieter safely.
var FADER_FLOOR_DEFAULT = 0.26;  // ~-27dB — Textures, Details, Melodic, Live > ADJUST BY EAR IN THE ROOM
var FADER_FLOOR_BEDS    = 0.18;  // ~-38dB — Beds can sit lower as the foundation > ADJUST BY EAR IN THE ROOM

// apply_group_space: converts a layer's intended level (fader 0-1) into the
// actual track fader, applying gm as a dB-domain cut. Also enforces a minimum
// output floor so low presence + low gm never push a track into silence.
//   level   - intended fader value before group-space attenuation (0-1)
//   gm      - group_mult() output (0-1)
//   ceiling - per-group fader ceiling
//   floor   - minimum output fader (use FADER_FLOOR_BEDS or FADER_FLOOR_DEFAULT)
function apply_group_space(level, gm, ceiling, floor) {
    var atten_db = (1.0 - gm) * GROUP_ATTEN_DB_RANGE;
    var db = fader_to_db(level) - atten_db + GLOBAL_LEVEL_TRIM_DB;
    return clamp(db_to_fader(db), floor, ceiling);
}


// ─── external control (callable from Max message boxes) ──────────────────────
function set_fade_speed(val)        { fade_speed = val; }
function set_cooldown(val)          { scene_cooldown_ms = val; }
function set_impactor_cooldown(val) { impactor_min_cooldown_ms = val; }
function set_smooth(val)            { sm_a = clamp(val, 0.01, 1.0); }

// set_global_trim (v1.4): live dB trim on all 24 children, for room testing.
// e.g. "set_global_trim -6" pulls the whole mix down 6dB,
//      "set_global_trim 0" resets to no trim.
function set_global_trim(val) {
    GLOBAL_LEVEL_TRIM_DB = clamp(val, -24, 12);
    post("AHFSD: global trim set to " + GLOBAL_LEVEL_TRIM_DB + " dB\n");
}
function set_vel_norm(v)   { VEL_NORM   = Math.max(0.1, v); post("AHFSD: VEL_NORM = "   + VEL_NORM   + "\n"); }
function set_clust_norm(v) { CLUST_NORM = Math.max(0.5, v); post("AHFSD: CLUST_NORM = " + CLUST_NORM + "\n"); }
function set_var_norm(v)   { VAR_NORM   = Math.max(0.1, v); post("AHFSD: VAR_NORM = "   + VAR_NORM   + "\n"); }
function set_max_bodies(v)     { MAX_BODIES     = Math.max(1, v); post("AHFSD: MAX_BODIES = "     + MAX_BODIES     + "\n"); }
function set_collapse_full(v)  { COLLAPSE_FULL  = Math.max(1, v); post("AHFSD: COLLAPSE_FULL = "  + COLLAPSE_FULL  + "\n"); }
function set_low_pres_floor(v) { LOW_PRES_FLOOR = Math.max(1, v); post("AHFSD: LOW_PRES_FLOOR = " + LOW_PRES_FLOOR + "\n"); }
function set_disp_erosion_gate(v) { DISP_EROSION_GATE = clamp(v, 0, 0.9); post("AHFSD: DISP_EROSION_GATE = " + DISP_EROSION_GATE + "\n"); }


// ─── calibration logger (v2.3) ────────────────────────────────────────────────
// Driven by [metro 1000] → [message log(] → any inlet.
// Tracks observed min/max of all raw scores, smoothed values, and derived
// axes (en/co/pn, mirroring compute_states) since the last log_reset.
// Messages:
//   log             — sample + (if verbose) print one console line
//   log_reset       — clear the range trackers (send before each behaviour run)
//   log_range       — print the observed min→max summary
//   mark <name>     — stamp a label in the console (e.g. "mark scattered")
//   set_log_verbose 0/1 — per-second lines on/off (default on)

var g_log_verbose = 1;
var lr = {};

function log_reset() {
    lr = {};
    post("CLOG: ranges reset\n");
}

function lr_track(label, v) {
    if (!lr[label]) { lr[label] = { min: v, max: v }; return; }
    if (v < lr[label].min) lr[label].min = v;
    if (v > lr[label].max) lr[label].max = v;
}

function log() {
    // derived axes — must mirror compute_states()
    var pn = clamp(sm_pres / MAX_BODIES, 0, 1);
    var en = clamp(sm_vel  / VEL_NORM, 0, 1);
    var co = (1 - clamp(sm_clust / CLUST_NORM, 0, 1)) * (1 - clamp(sm_var / VAR_NORM, 0, 1));

    lr_track("raw_vel",   val_velocity);
    lr_track("raw_var",   val_variance);
    lr_track("raw_clust", val_clustering);
    lr_track("raw_coh",   val_coherence);
    lr_track("raw_still", val_stillness);
    lr_track("raw_vert",  val_vertical);
    lr_track("raw_dis",   val_disorder);
    lr_track("raw_pres",  val_presence);
    lr_track("sm_vel",    sm_vel);
    lr_track("sm_var",    sm_var);
    lr_track("sm_clust",  sm_clust);
    lr_track("axis_en",   en);
    lr_track("axis_co",   co);
    lr_track("axis_pn",   pn);

    if (g_log_verbose) {
        post("CLOG raw v=" + round2(val_velocity)
           + " var=" + round2(val_variance)
           + " cl="  + round2(val_clustering)
           + " | sm v=" + round2(sm_vel)
           + " var="    + round2(sm_var)
           + " cl="     + round2(sm_clust)
           + " | en=" + round2(en) + " co=" + round2(co) + " pn=" + round2(pn)
           + " | E/S/M/HC/HCo "
           + round2(sw_empty) + "/" + round2(sw_stillness) + "/"
           + round2(sw_mid)   + "/" + round2(sw_hi_chaotic) + "/"
           + round2(sw_hi_coh) + "\n");
    }
}

function log_range() {
    post("CLOG ── observed ranges ──\n");
    for (var k in lr) {
        post("  " + k + ": " + round2(lr[k].min) + " -> " + round2(lr[k].max) + "\n");
    }
}

function mark() {
    var args = arrayfromargs(arguments);
    post("CLOG ── MARK: " + args.join(" ") + " ──\n");
}

function set_log_verbose(v) {
    g_log_verbose = (v > 0) ? 1 : 0;
    post("CLOG: verbose " + (g_log_verbose ? "on" : "off") + "\n");
}