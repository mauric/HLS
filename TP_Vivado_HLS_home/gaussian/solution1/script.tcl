############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project gaussian
set_top gaussian
add_files src/gaussian.cpp
add_files src/gaussian_1line.cpp
add_files src/gaussian_3x3.cpp
add_files src/gaussian_caching.cpp
add_files src/gaussian_fixedPoint.cpp
add_files src/gaussian_loopFusion.cpp
add_files src/gaussian_scalarized.cpp
add_files src/gaussian_sep.cpp
add_files src/globals.h
add_files -tb test/test.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./gaussian/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog