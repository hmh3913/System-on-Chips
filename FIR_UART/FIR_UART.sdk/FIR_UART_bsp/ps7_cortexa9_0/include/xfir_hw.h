// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// AXILiteS
// 0x000 : reserved
// 0x004 : reserved
// 0x008 : reserved
// 0x00c : reserved
// 0x010 : Data signal of y
//         bit 31~0 - y[31:0] (Read)
// 0x014 : Control signal of y
//         bit 0  - y_ap_vld (Read/COR)
//         others - reserved
// 0x400 : Data signal of x
//         bit 31~0 - x[31:0] (Read/Write)
// 0x404 : reserved
// 0x200 ~
// 0x3ff : Memory 'c' (41 * 64b)
//         Word 2n   : bit [31:0] - c[n][31: 0]
//         Word 2n+1 : bit [31:0] - c[n][63:32]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFIR_AXILITES_ADDR_Y_DATA 0x010
#define XFIR_AXILITES_BITS_Y_DATA 32
#define XFIR_AXILITES_ADDR_Y_CTRL 0x014
#define XFIR_AXILITES_ADDR_X_DATA 0x400
#define XFIR_AXILITES_BITS_X_DATA 32
#define XFIR_AXILITES_ADDR_C_BASE 0x200
#define XFIR_AXILITES_ADDR_C_HIGH 0x3ff
#define XFIR_AXILITES_WIDTH_C     64
#define XFIR_AXILITES_DEPTH_C     41

