#!/usr/local/bin/wish8.5
# Yoshihiro's TinyMixer ported to ALSA

wm title . "TinyMixer"

frame .input
scale .input.volume -label "MIC IN" -orient horizontal -command {setvol Capture}
.input.volume set 0
# Little workaround to get Capture muted, as i couldn't get it here using
# mute/unmute or cap/nocap
button .input.mute_on -text OFF -command {mute Capture 0}
button .input.mute_off -text ON -command {mute Capture 90}
frame .output
scale .output.volume -label "PHONE OUT" -orient horizontal -command {setvol Master}
.output.volume set 50
button .output.mute_on -text OFF -command {mute Master mute}
button .output.mute_off -text ON -command {mute Master unmute}
pack .input.volume -side left -fill both -expand yes
pack .input.mute_on .input.mute_off -side left -expand no -fill both

pack .output.volume -side left -fill both -expand yes
pack .output.mute_on .output.mute_off -side left -expand no -fill both
pack .input .output -side top -fill both -expand yes

proc setvol {inout val} {
# No need to divide ${val} by 100 with amixer
    exec amixer "set" "${inout}" "${val}" 
}

proc mute {unit state} {
    exec amixer "set" "${unit}" "${state}"
}
