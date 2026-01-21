import ("stdfaust.lib");

el = library("effect.lib");

ratio = vslider("Ratio", 4, 1, 20, 1);
thresh = vslider("Thresh", -6, -90, 0, 0.1);
attack = vslider("Attack", 20, 20, 800, 0.1)/1000000;
release = vslider("Release", 0.05, 0.05, 1.1, 0.01);
process = hgroup("1176 Limiter (Stereo)", el.compressor_stereo(ratio, thresh, attack, release));
