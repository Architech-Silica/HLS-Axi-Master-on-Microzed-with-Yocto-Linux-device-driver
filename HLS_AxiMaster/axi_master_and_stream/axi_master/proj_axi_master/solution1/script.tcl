############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project proj_axi_master
set_top example
add_files example.cpp
add_files -tb example_test.cpp
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 4ns -name default
source "./proj_axi_master/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog -vendor "taba" -version "6.0" -display_name "stream2aximaster"
