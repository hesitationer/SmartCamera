#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/andrea/Documenti/vision/Ultrascale/hls/OV7670_LUMA_CHROMA/OV7670_LUMA_CHROMA_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
