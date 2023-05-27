// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed May 17 20:07:10 2023
// Host        : ChetPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub ./rv32i_cpu.v
// Design      : rv32i_cpu
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module rv32i_cpu(clk, rst, pc, inst, MemWen, MemAddr, MemWdata, 
  MemRdata)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,pc[31:0],inst[31:0],MemWen,MemAddr[31:0],MemWdata[31:0],MemRdata[31:0]" */;
  input clk;
  input rst;
  output [31:0]pc;
  input [31:0]inst;
  output MemWen;
  output [31:0]MemAddr;
  output [31:0]MemWdata;
  input [31:0]MemRdata;
endmodule
