#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /users/deastir/mcaceres/Documents/VIVADO/TP_Vivado_HLS/TP_Vivado_HLS/gaussian/solution1/.autopilot/db/a.g.bc ${1+"$@"}
