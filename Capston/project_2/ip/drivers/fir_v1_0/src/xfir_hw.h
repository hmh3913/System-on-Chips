// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// AXILiteS
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of y
//        bit 31~0 - y[31:0] (Read)
// 0x14 : Control signal of y
//        bit 0  - y_ap_vld (Read/COR)
//        others - reserved
// 0x80 : Data signal of x
//        bit 31~0 - x[31:0] (Read/Write)
// 0x84 : reserved
// 0x40 ~
// 0x7f : Memory 'c' (11 * 32b)
//        Word n : bit [31:0] - c[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFIR_AXILITES_ADDR_Y_DATA 0x10
#define XFIR_AXILITES_BITS_Y_DATA 32
#define XFIR_AXILITES_ADDR_Y_CTRL 0x14
#define XFIR_AXILITES_ADDR_X_DATA 0x80
#define XFIR_AXILITES_BITS_X_DATA 32
#define XFIR_AXILITES_ADDR_C_BASE 0x40
#define XFIR_AXILITES_ADDR_C_HIGH 0x7f
#define XFIR_AXILITES_WIDTH_C     32
#define XFIR_AXILITES_DEPTH_C     11
