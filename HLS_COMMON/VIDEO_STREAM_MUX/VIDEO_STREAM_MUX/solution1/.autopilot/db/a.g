#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/andrea/Documenti/vision/Ultrascale/hls/VIDEO_STREAM_MUX/VIDEO_STREAM_MUX/solution1/.autopilot/db/a.g.bc ${1+"$@"}
