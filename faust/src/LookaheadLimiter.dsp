declare guid "AMLa" ;
declare name "Lookahead Limiter";
declare description "Stereo Limiter using a lookahead delay.";
declare version "0.0";

import("stdfaust.lib");

// Lookahead Limiter (Stereo)
// This implementation uses a lookahead delay to prevent clipping
// when the input signal is about to exceed the ceiling.

// (co).limiter_lad_stereo
//
// LD: is the lookahead delay in seconds, known at compile-time
// ceiling: is the linear amplitude output limit
// attack: is the attack time in seconds
// hold: is the hold time in seconds
// release: is the release time in seconds

co = library("compressors.lib");
ceiling = vslider("Ceiling", 0, 0, 100, 0.1);
attack = vslider("Attack", 0, 0, 1, 0.01);
hold = vslider("Hold", 0, 0, 1, 0.01);
release = vslider("Release", 0, 0, 1, 0.01);

process = hgroup("Lookahead Limiter (Stereo)", co.limiter_lad_stereo(0.1, ceiling, attack, hold, release));
