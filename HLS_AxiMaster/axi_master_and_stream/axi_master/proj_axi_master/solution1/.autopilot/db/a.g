#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/user/utils/HLS_AxiMaster/axi_master_and_stream/axi_master/proj_axi_master/solution1/.autopilot/db/a.g.bc ${1+"$@"}
