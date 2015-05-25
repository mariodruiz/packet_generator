############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project pkt.prj
set_top packet_generator
add_files packet_generator.cpp
add_files -tb generator_test.cpp
add_files -tb pkt_field.txt
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./pkt.prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
