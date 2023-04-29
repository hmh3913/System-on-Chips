############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Matrix_Mul
set_top matrixmul
add_files Matrix_Mul/matrixmul.c
add_files Matrix_Mul/matrixmul.h
add_files -tb Matrix_Mul/matrixmul_test.c
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./Matrix_Mul/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
