// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrixmul,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.380000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=1,HLS_SYN_FF=733,HLS_SYN_LUT=1120,HLS_VERSION=2018_2}" *)

module matrixmul (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_TDATA,
        A_TVALID,
        A_TREADY,
        B_TDATA,
        B_TVALID,
        B_TREADY,
        AB_TDATA,
        AB_TVALID,
        AB_TREADY,
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;
parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] A_TDATA;
input   A_TVALID;
output   A_TREADY;
input  [7:0] B_TDATA;
input   B_TVALID;
output   B_TREADY;
output  [31:0] AB_TDATA;
output   AB_TVALID;
input   AB_TREADY;
input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1:0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] lm;
wire   [31:0] ln;
wire   [31:0] lp;
reg   [7:0] A_0_data_out;
wire    A_0_vld_in;
wire    A_0_vld_out;
wire    A_0_ack_in;
reg    A_0_ack_out;
reg   [7:0] A_0_payload_A;
reg   [7:0] A_0_payload_B;
reg    A_0_sel_rd;
reg    A_0_sel_wr;
wire    A_0_sel;
wire    A_0_load_A;
wire    A_0_load_B;
reg   [1:0] A_0_state;
wire    A_0_state_cmp_full;
reg   [7:0] B_0_data_out;
wire    B_0_vld_in;
wire    B_0_vld_out;
wire    B_0_ack_in;
reg    B_0_ack_out;
reg   [7:0] B_0_payload_A;
reg   [7:0] B_0_payload_B;
reg    B_0_sel_rd;
reg    B_0_sel_wr;
wire    B_0_sel;
wire    B_0_load_A;
wire    B_0_load_B;
reg   [1:0] B_0_state;
wire    B_0_state_cmp_full;
reg   [31:0] AB_1_data_in;
reg   [31:0] AB_1_data_out;
reg    AB_1_vld_in;
wire    AB_1_vld_out;
wire    AB_1_ack_in;
wire    AB_1_ack_out;
reg   [31:0] AB_1_payload_A;
reg   [31:0] AB_1_payload_B;
reg    AB_1_sel_rd;
reg    AB_1_sel_wr;
wire    AB_1_sel;
wire    AB_1_load_A;
wire    AB_1_load_B;
reg   [1:0] AB_1_state;
wire    AB_1_state_cmp_full;
reg    A_TDATA_blk_n;
wire    ap_CS_fsm_state8;
reg    B_TDATA_blk_n;
reg    AB_TDATA_blk_n;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond3_fu_203_p2;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state9;
wire   [31:0] m_fu_162_p2;
reg   [31:0] m_reg_304;
wire   [31:0] n_fu_168_p2;
reg   [31:0] n_reg_309;
wire   [31:0] p_fu_174_p2;
reg   [31:0] p_reg_315;
wire   [31:0] i_1_fu_185_p2;
reg   [31:0] i_1_reg_324;
wire    ap_CS_fsm_state2;
wire   [11:0] tmp_2_cast_fu_195_p3;
reg   [11:0] tmp_2_cast_reg_329;
wire   [0:0] exitcond4_fu_180_p2;
wire   [31:0] j_fu_208_p2;
reg   [31:0] j_reg_337;
reg    ap_block_state3_io;
wire   [31:0] i_2_fu_233_p2;
reg   [31:0] i_2_reg_345;
wire    ap_CS_fsm_state5;
wire   [11:0] tmp_8_cast_fu_243_p3;
reg   [11:0] tmp_8_cast_reg_350;
wire   [0:0] exitcond2_fu_228_p2;
wire   [31:0] j_1_fu_256_p2;
reg   [31:0] j_1_reg_358;
wire    ap_CS_fsm_state6;
reg   [9:0] tmp_addr_1_reg_363;
wire   [0:0] exitcond1_fu_251_p2;
wire   [31:0] k_1_fu_281_p2;
reg   [31:0] k_1_reg_371;
wire    ap_CS_fsm_state7;
wire   [31:0] grp_fu_295_p3;
reg   [31:0] tmp_6_reg_376;
reg    ap_block_state8;
reg   [9:0] tmp_address0;
reg    tmp_ce0;
reg    tmp_we0;
reg   [31:0] tmp_d0;
wire   [31:0] tmp_q0;
reg   [31:0] i1_reg_107;
reg   [31:0] j2_reg_118;
reg   [31:0] i_reg_129;
reg   [31:0] j1_reg_140;
wire   [0:0] exitcond_fu_276_p2;
reg   [31:0] k_reg_151;
wire  signed [63:0] tmp_9_cast_fu_223_p1;
wire  signed [63:0] tmp_10_cast_fu_271_p1;
wire   [6:0] tmp_1_fu_191_p1;
wire   [11:0] tmp_3_fu_214_p1;
wire   [11:0] tmp_9_fu_218_p2;
wire   [6:0] tmp_2_fu_239_p1;
wire   [11:0] tmp_4_fu_262_p1;
wire   [11:0] tmp_s_fu_266_p2;
wire   [7:0] grp_fu_295_p0;
wire   [7:0] grp_fu_295_p1;
reg   [8:0] ap_NS_fsm;
wire   [15:0] grp_fu_295_p00;
wire   [15:0] grp_fu_295_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 A_0_sel_rd = 1'b0;
#0 A_0_sel_wr = 1'b0;
#0 A_0_state = 2'd0;
#0 B_0_sel_rd = 1'b0;
#0 B_0_sel_wr = 1'b0;
#0 B_0_state = 2'd0;
#0 AB_1_sel_rd = 1'b0;
#0 AB_1_sel_wr = 1'b0;
#0 AB_1_state = 2'd0;
end

matrixmul_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
matrixmul_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .lm(lm),
    .ln(ln),
    .lp(lp)
);

matrixmul_tmp #(
    .DataWidth( 32 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
tmp_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(tmp_address0),
    .ce0(tmp_ce0),
    .we0(tmp_we0),
    .d0(tmp_d0),
    .q0(tmp_q0)
);

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
matrixmul_mac_mulbkb_U1(
    .din0(grp_fu_295_p0),
    .din1(grp_fu_295_p1),
    .din2(tmp_q0),
    .dout(grp_fu_295_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        AB_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == AB_1_ack_out) & (1'b1 == AB_1_vld_out))) begin
            AB_1_sel_rd <= ~AB_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        AB_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == AB_1_ack_in) & (1'b1 == AB_1_vld_in))) begin
            AB_1_sel_wr <= ~AB_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        AB_1_state <= 2'd0;
    end else begin
        if ((((2'd2 == AB_1_state) & (1'b0 == AB_1_vld_in)) | ((2'd3 == AB_1_state) & (1'b0 == AB_1_vld_in) & (1'b1 == AB_1_ack_out)))) begin
            AB_1_state <= 2'd2;
        end else if ((((2'd1 == AB_1_state) & (1'b0 == AB_1_ack_out)) | ((2'd3 == AB_1_state) & (1'b0 == AB_1_ack_out) & (1'b1 == AB_1_vld_in)))) begin
            AB_1_state <= 2'd1;
        end else if (((~((1'b0 == AB_1_vld_in) & (1'b1 == AB_1_ack_out)) & ~((1'b0 == AB_1_ack_out) & (1'b1 == AB_1_vld_in)) & (2'd3 == AB_1_state)) | ((2'd1 == AB_1_state) & (1'b1 == AB_1_ack_out)) | ((2'd2 == AB_1_state) & (1'b1 == AB_1_vld_in)))) begin
            AB_1_state <= 2'd3;
        end else begin
            AB_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        A_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == A_0_ack_out) & (1'b1 == A_0_vld_out))) begin
            A_0_sel_rd <= ~A_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        A_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == A_0_ack_in) & (1'b1 == A_0_vld_in))) begin
            A_0_sel_wr <= ~A_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        A_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == A_0_state) & (1'b0 == A_0_vld_in)) | ((2'd3 == A_0_state) & (1'b0 == A_0_vld_in) & (1'b1 == A_0_ack_out)))) begin
            A_0_state <= 2'd2;
        end else if ((((2'd1 == A_0_state) & (1'b0 == A_0_ack_out)) | ((2'd3 == A_0_state) & (1'b0 == A_0_ack_out) & (1'b1 == A_0_vld_in)))) begin
            A_0_state <= 2'd1;
        end else if (((~((1'b0 == A_0_vld_in) & (1'b1 == A_0_ack_out)) & ~((1'b0 == A_0_ack_out) & (1'b1 == A_0_vld_in)) & (2'd3 == A_0_state)) | ((2'd1 == A_0_state) & (1'b1 == A_0_ack_out)) | ((2'd2 == A_0_state) & (1'b1 == A_0_vld_in)))) begin
            A_0_state <= 2'd3;
        end else begin
            A_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        B_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == B_0_ack_out) & (1'b1 == B_0_vld_out))) begin
            B_0_sel_rd <= ~B_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        B_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == B_0_ack_in) & (1'b1 == B_0_vld_in))) begin
            B_0_sel_wr <= ~B_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        B_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == B_0_state) & (1'b0 == B_0_vld_in)) | ((2'd3 == B_0_state) & (1'b0 == B_0_vld_in) & (1'b1 == B_0_ack_out)))) begin
            B_0_state <= 2'd2;
        end else if ((((2'd1 == B_0_state) & (1'b0 == B_0_ack_out)) | ((2'd3 == B_0_state) & (1'b0 == B_0_ack_out) & (1'b1 == B_0_vld_in)))) begin
            B_0_state <= 2'd1;
        end else if (((~((1'b0 == B_0_vld_in) & (1'b1 == B_0_ack_out)) & ~((1'b0 == B_0_ack_out) & (1'b1 == B_0_vld_in)) & (2'd3 == B_0_state)) | ((2'd1 == B_0_state) & (1'b1 == B_0_ack_out)) | ((2'd2 == B_0_state) & (1'b1 == B_0_vld_in)))) begin
            B_0_state <= 2'd3;
        end else begin
            B_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_203_p2 == 1'd1) & (1'b0 == ap_block_state3_io) & (1'b1 == ap_CS_fsm_state3))) begin
        i1_reg_107 <= i_1_reg_324;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i1_reg_107 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_180_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_129 <= 32'd0;
    end else if (((exitcond1_fu_251_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        i_reg_129 <= i_2_reg_345;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_276_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        j1_reg_140 <= j_1_reg_358;
    end else if (((exitcond2_fu_228_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (1'b1 == AB_1_ack_in))) begin
        j1_reg_140 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_180_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j2_reg_118 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) & (1'b1 == AB_1_ack_in))) begin
        j2_reg_118 <= j_reg_337;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_251_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        k_reg_151 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state9) & (1'b1 == AB_1_ack_in))) begin
        k_reg_151 <= k_1_reg_371;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AB_1_load_A)) begin
        AB_1_payload_A <= AB_1_data_in;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AB_1_load_B)) begin
        AB_1_payload_B <= AB_1_data_in;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == A_0_load_A)) begin
        A_0_payload_A <= A_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == A_0_load_B)) begin
        A_0_payload_B <= A_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == B_0_load_A)) begin
        B_0_payload_A <= B_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == B_0_load_B)) begin
        B_0_payload_B <= B_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_324 <= i_1_fu_185_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'b1 == AB_1_ack_in))) begin
        i_2_reg_345 <= i_2_fu_233_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        j_1_reg_358 <= j_1_fu_256_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state3_io) & (1'b1 == ap_CS_fsm_state3))) begin
        j_reg_337 <= j_fu_208_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        k_1_reg_371 <= k_1_fu_281_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        m_reg_304 <= m_fu_162_p2;
        n_reg_309 <= n_fu_168_p2;
        p_reg_315 <= p_fu_174_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_180_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_2_cast_reg_329[11 : 5] <= tmp_2_cast_fu_195_p3[11 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b0 == A_0_vld_out) | (1'b0 == AB_1_ack_in) | (1'b0 == B_0_vld_out)) & (1'b1 == ap_CS_fsm_state8))) begin
        tmp_6_reg_376 <= grp_fu_295_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_228_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (1'b1 == AB_1_ack_in))) begin
        tmp_8_cast_reg_350[11 : 5] <= tmp_8_cast_fu_243_p3[11 : 5];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_251_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_addr_1_reg_363 <= tmp_10_cast_fu_271_p1;
    end
end

always @ (*) begin
    if ((~((1'b0 == A_0_vld_out) | (1'b0 == B_0_vld_out)) & (1'b1 == ap_CS_fsm_state8))) begin
        AB_1_data_in = grp_fu_295_p3;
    end else if (((exitcond3_fu_203_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        AB_1_data_in = 32'd0;
    end else begin
        AB_1_data_in = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == AB_1_sel)) begin
        AB_1_data_out = AB_1_payload_B;
    end else begin
        AB_1_data_out = AB_1_payload_A;
    end
end

always @ (*) begin
    if ((((exitcond3_fu_203_p2 == 1'd0) & (1'b0 == ap_block_state3_io) & (1'b1 == ap_CS_fsm_state3)) | (~((1'b0 == A_0_vld_out) | (1'b0 == AB_1_ack_in) | (1'b0 == B_0_vld_out)) & (1'b1 == ap_CS_fsm_state8)))) begin
        AB_1_vld_in = 1'b1;
    end else begin
        AB_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state8) | ((exitcond3_fu_203_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        AB_TDATA_blk_n = AB_1_state[1'd1];
    end else begin
        AB_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == A_0_vld_out) | (1'b0 == AB_1_ack_in) | (1'b0 == B_0_vld_out)) & (1'b1 == ap_CS_fsm_state8))) begin
        A_0_ack_out = 1'b1;
    end else begin
        A_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == A_0_sel)) begin
        A_0_data_out = A_0_payload_B;
    end else begin
        A_0_data_out = A_0_payload_A;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        A_TDATA_blk_n = A_0_state[1'd0];
    end else begin
        A_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == A_0_vld_out) | (1'b0 == AB_1_ack_in) | (1'b0 == B_0_vld_out)) & (1'b1 == ap_CS_fsm_state8))) begin
        B_0_ack_out = 1'b1;
    end else begin
        B_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == B_0_sel)) begin
        B_0_data_out = B_0_payload_B;
    end else begin
        B_0_data_out = B_0_payload_A;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        B_TDATA_blk_n = B_0_state[1'd0];
    end else begin
        B_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond2_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b1 == AB_1_ack_in))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond2_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b1 == AB_1_ack_in))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state9))) begin
        tmp_address0 = tmp_addr_1_reg_363;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_address0 = tmp_9_cast_fu_223_p1;
    end else begin
        tmp_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state9) & (1'b1 == AB_1_ack_in)) | ((1'b0 == ap_block_state3_io) & (1'b1 == ap_CS_fsm_state3)))) begin
        tmp_ce0 = 1'b1;
    end else begin
        tmp_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_d0 = tmp_6_reg_376;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_d0 = 32'd0;
    end else begin
        tmp_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (1'b1 == AB_1_ack_in)) | ((exitcond3_fu_203_p2 == 1'd0) & (1'b0 == ap_block_state3_io) & (1'b1 == ap_CS_fsm_state3)))) begin
        tmp_we0 = 1'b1;
    end else begin
        tmp_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond4_fu_180_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond3_fu_203_p2 == 1'd1) & (1'b0 == ap_block_state3_io) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((exitcond3_fu_203_p2 == 1'd0) & (1'b0 == ap_block_state3_io) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'b1 == AB_1_ack_in))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((exitcond2_fu_228_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (1'b1 == AB_1_ack_in))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((exitcond2_fu_228_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (1'b1 == AB_1_ack_in))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((exitcond1_fu_251_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((exitcond_fu_276_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if ((~((1'b0 == A_0_vld_out) | (1'b0 == AB_1_ack_in) | (1'b0 == B_0_vld_out)) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (1'b1 == AB_1_ack_in))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign AB_1_ack_in = AB_1_state[1'd1];

assign AB_1_ack_out = AB_TREADY;

assign AB_1_load_A = (~AB_1_sel_wr & AB_1_state_cmp_full);

assign AB_1_load_B = (AB_1_state_cmp_full & AB_1_sel_wr);

assign AB_1_sel = AB_1_sel_rd;

assign AB_1_state_cmp_full = ((AB_1_state != 2'd1) ? 1'b1 : 1'b0);

assign AB_1_vld_out = AB_1_state[1'd0];

assign AB_TDATA = AB_1_data_out;

assign AB_TVALID = AB_1_state[1'd0];

assign A_0_ack_in = A_0_state[1'd1];

assign A_0_load_A = (~A_0_sel_wr & A_0_state_cmp_full);

assign A_0_load_B = (A_0_state_cmp_full & A_0_sel_wr);

assign A_0_sel = A_0_sel_rd;

assign A_0_state_cmp_full = ((A_0_state != 2'd1) ? 1'b1 : 1'b0);

assign A_0_vld_in = A_TVALID;

assign A_0_vld_out = A_0_state[1'd0];

assign A_TREADY = A_0_state[1'd1];

assign B_0_ack_in = B_0_state[1'd1];

assign B_0_load_A = (~B_0_sel_wr & B_0_state_cmp_full);

assign B_0_load_B = (B_0_state_cmp_full & B_0_sel_wr);

assign B_0_sel = B_0_sel_rd;

assign B_0_state_cmp_full = ((B_0_state != 2'd1) ? 1'b1 : 1'b0);

assign B_0_vld_in = B_TVALID;

assign B_0_vld_out = B_0_state[1'd0];

assign B_TREADY = B_0_state[1'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state3_io = ((exitcond3_fu_203_p2 == 1'd0) & (1'b0 == AB_1_ack_in));
end

always @ (*) begin
    ap_block_state8 = ((1'b0 == A_0_vld_out) | (1'b0 == B_0_vld_out));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign exitcond1_fu_251_p2 = ((j1_reg_140 == p_reg_315) ? 1'b1 : 1'b0);

assign exitcond2_fu_228_p2 = ((i_reg_129 == n_reg_309) ? 1'b1 : 1'b0);

assign exitcond3_fu_203_p2 = ((j2_reg_118 == p_reg_315) ? 1'b1 : 1'b0);

assign exitcond4_fu_180_p2 = ((i1_reg_107 == n_reg_309) ? 1'b1 : 1'b0);

assign exitcond_fu_276_p2 = ((k_reg_151 == m_reg_304) ? 1'b1 : 1'b0);

assign grp_fu_295_p0 = grp_fu_295_p00;

assign grp_fu_295_p00 = B_0_data_out;

assign grp_fu_295_p1 = grp_fu_295_p10;

assign grp_fu_295_p10 = A_0_data_out;

assign i_1_fu_185_p2 = (i1_reg_107 + 32'd1);

assign i_2_fu_233_p2 = (i_reg_129 + 32'd1);

assign j_1_fu_256_p2 = (j1_reg_140 + 32'd1);

assign j_fu_208_p2 = (j2_reg_118 + 32'd1);

assign k_1_fu_281_p2 = (k_reg_151 + 32'd1);

assign m_fu_162_p2 = 32'd1 << lm;

assign n_fu_168_p2 = 32'd1 << ln;

assign p_fu_174_p2 = 32'd1 << lp;

assign tmp_10_cast_fu_271_p1 = $signed(tmp_s_fu_266_p2);

assign tmp_1_fu_191_p1 = i1_reg_107[6:0];

assign tmp_2_cast_fu_195_p3 = {{tmp_1_fu_191_p1}, {5'd0}};

assign tmp_2_fu_239_p1 = i_reg_129[6:0];

assign tmp_3_fu_214_p1 = j2_reg_118[11:0];

assign tmp_4_fu_262_p1 = j1_reg_140[11:0];

assign tmp_8_cast_fu_243_p3 = {{tmp_2_fu_239_p1}, {5'd0}};

assign tmp_9_cast_fu_223_p1 = $signed(tmp_9_fu_218_p2);

assign tmp_9_fu_218_p2 = (tmp_2_cast_reg_329 + tmp_3_fu_214_p1);

assign tmp_s_fu_266_p2 = (tmp_8_cast_reg_350 + tmp_4_fu_262_p1);

always @ (posedge ap_clk) begin
    tmp_2_cast_reg_329[4:0] <= 5'b00000;
    tmp_8_cast_reg_350[4:0] <= 5'b00000;
end

endmodule //matrixmul
