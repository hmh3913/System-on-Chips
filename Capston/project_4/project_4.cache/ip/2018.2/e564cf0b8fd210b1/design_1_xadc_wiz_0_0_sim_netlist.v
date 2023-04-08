// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Apr  7 15:33:13 2021
// Host        : hmhlaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_xadc_wiz_0_0_sim_netlist.v
// Design      : design_1_xadc_wiz_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    s_axis_aclk,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tid,
    m_axis_tready,
    channel_out,
    busy_out,
    eoc_out,
    eos_out,
    alarm_out,
    vp_in,
    vn_in);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output ip2intc_irpt;
  input s_axis_aclk;
  output [15:0]m_axis_tdata;
  output m_axis_tvalid;
  output [4:0]m_axis_tid;
  input m_axis_tready;
  output [4:0]channel_out;
  output busy_out;
  output eoc_out;
  output eos_out;
  output alarm_out;
  input vp_in;
  input vn_in;

  wire alarm_out;
  wire busy_out;
  wire [4:0]channel_out;
  wire eoc_out;
  wire eos_out;
  wire ip2intc_irpt;
  wire [15:0]m_axis_tdata;
  wire [4:0]m_axis_tid;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire s_axis_aclk;
  wire vn_in;
  wire vp_in;
  wire [6:0]NLW_inst_alarm_out_UNCONNECTED;

  (* C_FAMILY = "virtex7" *) 
  (* C_INCLUDE_INTR = "1" *) 
  (* C_INSTANCE = "design_1_xadc_wiz_0_0_axi_xadc" *) 
  (* C_SIM_MONITOR_FILE = "design.txt" *) 
  (* C_S_AXI_ADDR_WIDTH = "11" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* hdl = "VHDL" *) 
  (* ip_group = "LOGICORE" *) 
  (* iptype = "PERIPHERAL" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_axi_xadc inst
       (.alarm_out({alarm_out,NLW_inst_alarm_out_UNCONNECTED[6:0]}),
        .busy_out(busy_out),
        .channel_out(channel_out),
        .eoc_out(eoc_out),
        .eos_out(eos_out),
        .ip2intc_irpt(ip2intc_irpt),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_aclk(s_axis_aclk),
        .vn_in(vn_in),
        .vp_in(vp_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_address_decoder
   (drdy_wr_ack_i_d1_reg,
    hard_macro_rst_reg_reg,
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ,
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ,
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ,
    local_rdce_or_reduce,
    local_reg_rdack0,
    convst_rst_wrce_or_reduce,
    local_reg_wrack0,
    bus2ip_wrce,
    mode_change0,
    dwe_d1_reg,
    p_7_in,
    status_reg_rdack0,
    bus2ip_rdce,
    ip2bus_error_int1,
    ip2bus_wrack_int1,
    reset_trig0,
    sw_rst_cond,
    D,
    Intr2Bus_RdAck0,
    irpt_rdack,
    p_48_out__0,
    irpt_wrack,
    interrupt_wrce_strb,
    E,
    dummy_bus2ip_rdce_intr,
    p_5_out,
    dummy_bus2ip_wrce_intr,
    p_3_out,
    dummy_local_reg_rdack_d10,
    dummy_local_reg_rdack0,
    dummy_local_reg_wrack_d10,
    dummy_local_reg_wrack0,
    rst_ip2bus_rdack0,
    hard_macro_rst_reg_reg_0,
    ipif_glbl_irpt_enable_reg_reg,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_awaddr,
    \s_axi_awaddr[8] ,
    out,
    s_axi_awvalid,
    s_axi_wvalid,
    ip2bus_rdack,
    Q,
    ip2bus_wrack,
    s_axi_aresetn,
    local_reg_rdack_d1,
    local_reg_wrack_d1,
    s_axi_araddr_5_sp_1,
    den_B,
    s_axi_araddr_4_sp_1,
    jtaglocked_i,
    status_reg_rdack_d1,
    bus2ip_be,
    data_is_non_reset_match__3,
    p_0_out,
    s_axi_arvalid_0,
    local_reg_wrack_reg,
    intr_ip2bus_wrack,
    wrack,
    sw_rst_cond_d1,
    \ip_irpt_enable_reg_reg[16] ,
    \do_reg_reg[15] ,
    \status_reg_reg[10] ,
    p_1_in14_in,
    p_1_in11_in,
    p_1_in8_in,
    p_1_in5_in,
    p_1_in2_in,
    p_1_in,
    s_axi_wstrb,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \alarm_reg_reg[8] ,
    p_1_in44_in,
    p_1_in41_in,
    p_1_in38_in,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in20_in,
    p_1_in17_in,
    irpt_wrack_d1,
    dummy_intr_reg_rdack_d1,
    dummy_intr_reg_wrack_d1,
    dummy_local_reg_rdack_d1,
    dummy_local_reg_wrack_d1,
    rst_ip2bus_rdack_d1,
    jtagmodified_d1,
    jtagmodified_i,
    s_axi_wdata,
    hard_macro_rst_reg);
  output drdy_wr_ack_i_d1_reg;
  output hard_macro_rst_reg_reg;
  output \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ;
  output \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ;
  output \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ;
  output local_rdce_or_reduce;
  output local_reg_rdack0;
  output convst_rst_wrce_or_reduce;
  output local_reg_wrack0;
  output [0:0]bus2ip_wrce;
  output mode_change0;
  output dwe_d1_reg;
  output p_7_in;
  output status_reg_rdack0;
  output [2:0]bus2ip_rdce;
  output ip2bus_error_int1;
  output ip2bus_wrack_int1;
  output reset_trig0;
  output sw_rst_cond;
  output [18:0]D;
  output Intr2Bus_RdAck0;
  output irpt_rdack;
  output p_48_out__0;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output [0:0]E;
  output dummy_bus2ip_rdce_intr;
  output p_5_out;
  output dummy_bus2ip_wrce_intr;
  output p_3_out;
  output dummy_local_reg_rdack_d10;
  output dummy_local_reg_rdack0;
  output dummy_local_reg_wrack_d10;
  output dummy_local_reg_wrack0;
  output rst_ip2bus_rdack0;
  output hard_macro_rst_reg_reg_0;
  output ipif_glbl_irpt_enable_reg_reg;
  input s_axi_aclk;
  input [7:0]s_axi_araddr;
  input s_axi_arvalid;
  input [7:0]s_axi_awaddr;
  input [0:0]\s_axi_awaddr[8] ;
  input [0:0]out;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input ip2bus_rdack;
  input [0:0]Q;
  input ip2bus_wrack;
  input s_axi_aresetn;
  input local_reg_rdack_d1;
  input local_reg_wrack_d1;
  input s_axi_araddr_5_sp_1;
  input den_B;
  input s_axi_araddr_4_sp_1;
  input jtaglocked_i;
  input status_reg_rdack_d1;
  input [0:0]bus2ip_be;
  input data_is_non_reset_match__3;
  input p_0_out;
  input s_axi_arvalid_0;
  input local_reg_wrack_reg;
  input intr_ip2bus_wrack;
  input wrack;
  input sw_rst_cond_d1;
  input [16:0]\ip_irpt_enable_reg_reg[16] ;
  input [15:0]\do_reg_reg[15] ;
  input [10:0]\status_reg_reg[10] ;
  input p_1_in14_in;
  input p_1_in11_in;
  input p_1_in8_in;
  input p_1_in5_in;
  input p_1_in2_in;
  input p_1_in;
  input [0:0]s_axi_wstrb;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input [8:0]\alarm_reg_reg[8] ;
  input p_1_in44_in;
  input p_1_in41_in;
  input p_1_in38_in;
  input p_1_in35_in;
  input p_1_in32_in;
  input p_1_in29_in;
  input p_1_in26_in;
  input p_1_in23_in;
  input p_1_in20_in;
  input p_1_in17_in;
  input irpt_wrack_d1;
  input dummy_intr_reg_rdack_d1;
  input dummy_intr_reg_wrack_d1;
  input dummy_local_reg_rdack_d1;
  input dummy_local_reg_wrack_d1;
  input rst_ip2bus_rdack_d1;
  input jtagmodified_d1;
  input jtagmodified_i;
  input [1:0]s_axi_wdata;
  input hard_macro_rst_reg;

  wire Bus_RNW_reg_i_1_n_0;
  wire [18:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_7_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ;
  wire \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3_n_0 ;
  wire \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_4_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_3_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_3_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2_n_0 ;
  wire Intr2Bus_RdAck0;
  wire [0:0]Q;
  wire [8:0]\alarm_reg_reg[8] ;
  wire [7:7]bus2ip_addr;
  wire [0:0]bus2ip_be;
  wire [2:0]bus2ip_rdce;
  wire [0:0]bus2ip_wrce;
  wire convst_rst_wrce_or_reduce;
  wire cs_ce_clr;
  wire data_is_non_reset_match__3;
  wire den_B;
  wire [15:0]\do_reg_reg[15] ;
  wire drdy_wr_ack_i_d1_reg;
  wire dummy_bus2ip_rdce_intr;
  wire dummy_bus2ip_wrce_intr;
  wire dummy_intr_reg_rdack_d1;
  wire dummy_intr_reg_wrack_d1;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire dwe_d1_reg;
  wire hard_macro_rst_reg;
  wire hard_macro_rst_reg_reg;
  wire hard_macro_rst_reg_reg_0;
  wire interrupt_wrce_strb;
  wire intr_ip2bus_wrack;
  wire ip2bus_error_int1;
  wire ip2bus_rdack;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire [16:0]\ip_irpt_enable_reg_reg[16] ;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire jtaglocked_i;
  wire jtagmodified_d1;
  wire jtagmodified_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire local_reg_wrack_reg;
  wire mode_change0;
  wire [0:0]out;
  wire p_0_out;
  wire p_10_in;
  wire p_10_out;
  wire p_11_in;
  wire p_11_out;
  wire p_12_in;
  wire p_12_out;
  wire p_13_in;
  wire p_13_out;
  wire p_14_in;
  wire p_14_out;
  wire p_15_in;
  wire p_15_out;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in2_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in38_in;
  wire p_1_in41_in;
  wire p_1_in44_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_1_out;
  wire p_20_in;
  wire p_21_in;
  wire p_22_in;
  wire p_23_in;
  wire p_23_out;
  wire p_24_in;
  wire p_25_in;
  wire p_2_in;
  wire p_2_out;
  wire p_3_in;
  wire p_3_out;
  wire p_3_out_1;
  wire p_48_out__0;
  wire p_4_in;
  wire p_4_out;
  wire p_5_in;
  wire p_5_out;
  wire p_5_out_2;
  wire p_6_in;
  wire p_6_out;
  wire p_7_in;
  wire p_7_in_0;
  wire p_7_out;
  wire p_8_in;
  wire p_8_out;
  wire p_9_in;
  wire p_9_out;
  wire pselect_hit_i_0;
  wire pselect_hit_i_2;
  wire reset_trig0;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire [7:0]s_axi_araddr;
  wire s_axi_araddr_4_sn_1;
  wire s_axi_araddr_5_sn_1;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire s_axi_arvalid_0;
  wire [7:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[8] ;
  wire s_axi_awvalid;
  wire [1:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire start;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire [10:0]\status_reg_reg[10] ;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;

  assign s_axi_araddr_4_sn_1 = s_axi_araddr_4_sp_1;
  assign s_axi_araddr_5_sn_1 = s_axi_araddr_5_sp_1;
  LUT5 #(
    .INIT(32'hDFFF8888)) 
    Bus_RNW_reg_i_1
       (.I0(out),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(hard_macro_rst_reg_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(hard_macro_rst_reg_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h47000000)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .I3(pselect_hit_i_2),
        .I4(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_2_n_0 ),
        .O(p_7_out));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_7_out),
        .Q(p_25_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(bus2ip_addr),
        .I4(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I5(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0 ),
        .O(p_13_out));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_13_out),
        .Q(p_15_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(bus2ip_addr),
        .I4(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I5(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_7_n_0 ),
        .O(p_12_out));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_12_out),
        .Q(p_14_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I4(bus2ip_addr),
        .I5(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_2_n_0 ),
        .O(p_11_out));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_11_out),
        .Q(p_13_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I4(bus2ip_addr),
        .I5(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0 ),
        .O(p_10_out));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_10_out),
        .Q(p_12_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I4(bus2ip_addr),
        .I5(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0 ),
        .O(p_9_out));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_9_out),
        .Q(p_11_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I4(bus2ip_addr),
        .I5(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_7_n_0 ),
        .O(p_8_out));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_8_out),
        .Q(p_10_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(bus2ip_addr),
        .I4(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I5(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_2_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0 ),
        .Q(p_9_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(bus2ip_addr),
        .I4(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I5(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0 ),
        .Q(p_8_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(bus2ip_addr),
        .I4(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I5(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0 ),
        .Q(p_7_in_0),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(bus2ip_addr),
        .I4(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I5(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_7_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0 ),
        .Q(p_6_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h47000000)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .I3(pselect_hit_i_2),
        .I4(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0 ),
        .O(p_6_out));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_6_out),
        .Q(p_24_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I4(bus2ip_addr),
        .I5(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_2_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_2 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[1]),
        .O(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0 ),
        .Q(p_5_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I4(bus2ip_addr),
        .I5(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[1]),
        .O(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0 ),
        .Q(p_4_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I4(bus2ip_addr),
        .I5(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[0]),
        .O(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0 ),
        .Q(p_3_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I4(bus2ip_addr),
        .I5(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_7_n_0 ),
        .O(p_15_out));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[3]),
        .O(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3 
       (.I0(start),
        .I1(s_axi_araddr[7]),
        .I2(s_axi_arvalid),
        .I3(s_axi_awaddr[7]),
        .I4(s_axi_araddr[6]),
        .I5(s_axi_awaddr[6]),
        .O(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_4 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[4]),
        .O(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_5 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_6 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[5]),
        .O(bus2ip_addr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_7 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[1]),
        .O(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_7_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_15_out),
        .Q(p_2_in),
        .R(cs_ce_clr));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 
       (.I0(ip2bus_rdack),
        .I1(Q),
        .I2(ip2bus_wrack),
        .I3(s_axi_aresetn),
        .O(cs_ce_clr));
  LUT4 #(
    .INIT(16'hA888)) 
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_2 
       (.I0(out),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(start));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFF800080)) 
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_3 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_awaddr[7]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[7]),
        .O(pselect_hit_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(pselect_hit_i_0),
        .Q(drdy_wr_ack_i_d1_reg),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h47000000)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .I3(pselect_hit_i_2),
        .I4(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0 ),
        .O(p_5_out_2));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_5_out_2),
        .Q(p_23_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h47000000)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .I3(pselect_hit_i_2),
        .I4(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_7_n_0 ),
        .O(p_4_out));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_4_out),
        .Q(p_22_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8000000)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .I3(pselect_hit_i_2),
        .I4(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_2_n_0 ),
        .O(p_3_out_1));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_3_out_1),
        .Q(p_21_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8000000)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .I3(pselect_hit_i_2),
        .I4(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0 ),
        .O(p_2_out));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_2_out),
        .Q(p_20_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8000000)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .I3(pselect_hit_i_2),
        .I4(\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0 ),
        .O(p_1_out));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_1_out),
        .Q(p_19_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8000000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .I3(pselect_hit_i_2),
        .I4(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_7_n_0 ),
        .O(p_23_out));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0 ),
        .I2(start),
        .I3(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I4(bus2ip_addr),
        .I5(\s_axi_awaddr[8] ),
        .O(pselect_hit_i_2));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[7]),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_23_out),
        .Q(p_18_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(bus2ip_addr),
        .I4(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I5(\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_2_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1_n_0 ),
        .Q(p_17_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_3_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I3(bus2ip_addr),
        .I4(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 ),
        .I5(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0 ),
        .O(p_14_out));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_14_out),
        .Q(p_16_in),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'h04040400)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(irpt_wrack_d1),
        .I1(p_9_in),
        .I2(hard_macro_rst_reg_reg),
        .I3(s_axi_arvalid),
        .I4(s_axi_wstrb),
        .O(p_48_out__0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_d1_i_1 
       (.I0(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ),
        .I1(hard_macro_rst_reg_reg),
        .O(dummy_bus2ip_rdce_intr));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_i_1 
       (.I0(dummy_intr_reg_rdack_d1),
        .I1(hard_macro_rst_reg_reg),
        .I2(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ),
        .O(p_5_out));
  LUT2 #(
    .INIT(4'h2)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_1 
       (.I0(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ),
        .I1(hard_macro_rst_reg_reg),
        .O(dummy_bus2ip_wrce_intr));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2 
       (.I0(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3_n_0 ),
        .I1(p_11_in),
        .I2(p_12_in),
        .I3(p_13_in),
        .I4(p_14_in),
        .I5(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_4_n_0 ),
        .O(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3 
       (.I0(p_15_in),
        .I1(p_16_in),
        .I2(p_17_in),
        .I3(p_2_in),
        .O(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_4 
       (.I0(p_6_in),
        .I1(p_4_in),
        .I2(p_3_in),
        .I3(p_8_in),
        .I4(p_5_in),
        .O(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_i_1 
       (.I0(hard_macro_rst_reg_reg),
        .I1(dummy_intr_reg_wrack_d1),
        .I2(\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0 ),
        .O(p_3_out));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[0]_i_1 
       (.I0(p_10_in),
        .I1(ipif_glbl_irpt_enable_reg),
        .I2(p_7_in_0),
        .I3(bus2ip_be),
        .I4(p_9_in),
        .I5(hard_macro_rst_reg_reg),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h000E000000000000)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_1 
       (.I0(jtagmodified_d1),
        .I1(jtagmodified_i),
        .I2(p_24_in),
        .I3(p_23_in),
        .I4(drdy_wr_ack_i_d1_reg),
        .I5(hard_macro_rst_reg_reg),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(jtaglocked_i),
        .I2(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I3(p_1_in),
        .I4(\ip_irpt_enable_reg_reg[16] [16]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2 
       (.I0(hard_macro_rst_reg_reg),
        .I1(drdy_wr_ack_i_d1_reg),
        .I2(p_23_in),
        .I3(p_24_in),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_3 
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_9_in),
        .I2(s_axi_wstrb),
        .I3(s_axi_arvalid),
        .O(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00A80000)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4 
       (.I0(p_7_in_0),
        .I1(s_axi_arvalid),
        .I2(s_axi_wstrb),
        .I3(p_9_in),
        .I4(hard_macro_rst_reg_reg),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[16]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [15]),
        .I2(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I3(p_1_in2_in),
        .I4(\ip_irpt_enable_reg_reg[16] [15]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [14]),
        .I2(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I3(p_1_in5_in),
        .I4(\ip_irpt_enable_reg_reg[16] [14]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [13]),
        .I2(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I3(p_1_in8_in),
        .I4(\ip_irpt_enable_reg_reg[16] [13]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [12]),
        .I2(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I3(p_1_in11_in),
        .I4(\ip_irpt_enable_reg_reg[16] [12]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [11]),
        .I2(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I3(p_1_in14_in),
        .I4(\ip_irpt_enable_reg_reg[16] [11]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .I1(\ip_irpt_enable_reg_reg[16] [10]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .I3(\status_reg_reg[10] [10]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_3_n_0 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2 
       (.I0(p_23_in),
        .I1(p_24_in),
        .I2(drdy_wr_ack_i_d1_reg),
        .I3(hard_macro_rst_reg_reg),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_3 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [10]),
        .I2(p_1_in17_in),
        .I3(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .I1(\ip_irpt_enable_reg_reg[16] [9]),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .I3(\status_reg_reg[10] [9]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2_n_0 ),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .I1(\do_reg_reg[15] [9]),
        .I2(p_1_in20_in),
        .I3(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[16] [8]),
        .I3(\do_reg_reg[15] [8]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I1(p_1_in23_in),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_3_n_0 ),
        .I3(\alarm_reg_reg[8] [8]),
        .I4(\status_reg_reg[10] [8]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_3 
       (.I0(p_24_in),
        .I1(p_23_in),
        .I2(drdy_wr_ack_i_d1_reg),
        .I3(hard_macro_rst_reg_reg),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[16] [7]),
        .I3(\do_reg_reg[15] [7]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I1(p_1_in26_in),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_3_n_0 ),
        .I3(\alarm_reg_reg[8] [7]),
        .I4(\status_reg_reg[10] [7]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[16] [6]),
        .I3(\do_reg_reg[15] [6]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I1(p_1_in29_in),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_3_n_0 ),
        .I3(\alarm_reg_reg[8] [6]),
        .I4(\status_reg_reg[10] [6]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[16] [5]),
        .I3(\do_reg_reg[15] [5]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I1(p_1_in32_in),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_3_n_0 ),
        .I3(\alarm_reg_reg[8] [5]),
        .I4(\status_reg_reg[10] [5]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[16] [4]),
        .I3(\do_reg_reg[15] [4]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I1(p_1_in35_in),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_3_n_0 ),
        .I3(\alarm_reg_reg[8] [4]),
        .I4(\status_reg_reg[10] [4]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[16] [3]),
        .I3(\do_reg_reg[15] [3]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I1(p_1_in38_in),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_3_n_0 ),
        .I3(\alarm_reg_reg[8] [3]),
        .I4(\status_reg_reg[10] [3]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[16] [2]),
        .I3(\do_reg_reg[15] [2]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I1(p_1_in41_in),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_3_n_0 ),
        .I3(\alarm_reg_reg[8] [2]),
        .I4(\status_reg_reg[10] [2]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[16] [1]),
        .I3(\do_reg_reg[15] [1]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I1(p_1_in44_in),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_3_n_0 ),
        .I3(\alarm_reg_reg[8] [1]),
        .I4(\status_reg_reg[10] [1]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_1 
       (.I0(\INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2_n_0 ),
        .I1(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_4_n_0 ),
        .I2(\ip_irpt_enable_reg_reg[16] [0]),
        .I3(\do_reg_reg[15] [0]),
        .I4(\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2 
       (.I0(\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I/irpt_rdack186_out ),
        .I1(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_3_n_0 ),
        .I3(\alarm_reg_reg[8] [0]),
        .I4(\status_reg_reg[10] [0]),
        .I5(\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0 ),
        .O(\INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF300075553000)) 
    \INTR_CTRLR_GEN_I.ip2bus_error_i_1 
       (.I0(bus2ip_be),
        .I1(hard_macro_rst_reg_reg),
        .I2(p_25_in),
        .I3(data_is_non_reset_match__3),
        .I4(p_0_out),
        .I5(s_axi_arvalid_0),
        .O(ip2bus_error_int1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBAAA)) 
    \INTR_CTRLR_GEN_I.ip2bus_wrack_i_1 
       (.I0(local_reg_wrack_reg),
        .I1(hard_macro_rst_reg_reg),
        .I2(p_25_in),
        .I3(data_is_non_reset_match__3),
        .I4(intr_ip2bus_wrack),
        .I5(wrack),
        .O(ip2bus_wrack_int1));
  LUT6 #(
    .INIT(64'h00000000A0A0A080)) 
    Intr2Bus_RdAck_i_1
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_9_in),
        .I2(bus2ip_be),
        .I3(p_7_in_0),
        .I4(p_10_in),
        .I5(irpt_rdack_d1),
        .O(Intr2Bus_RdAck0));
  LUT6 #(
    .INIT(64'h0404040404040400)) 
    Intr2Bus_WrAck_i_1
       (.I0(irpt_wrack_d1),
        .I1(bus2ip_be),
        .I2(hard_macro_rst_reg_reg),
        .I3(p_9_in),
        .I4(p_10_in),
        .I5(p_7_in_0),
        .O(interrupt_wrce_strb));
  LUT2 #(
    .INIT(4'h2)) 
    den_d1_i_1
       (.I0(drdy_wr_ack_i_d1_reg),
        .I1(jtaglocked_i),
        .O(p_7_in));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    drdy_rd_ack_i_d1_i_1
       (.I0(drdy_wr_ack_i_d1_reg),
        .I1(hard_macro_rst_reg_reg),
        .O(bus2ip_rdce[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    drdy_wr_ack_i_d1_i_1
       (.I0(drdy_wr_ack_i_d1_reg),
        .I1(hard_macro_rst_reg_reg),
        .O(bus2ip_wrce));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    dummy_local_reg_rdack_d1_i_1
       (.I0(p_20_in),
        .I1(p_19_in),
        .I2(p_18_in),
        .I3(hard_macro_rst_reg_reg),
        .O(dummy_local_reg_rdack_d10));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    dummy_local_reg_rdack_i_1
       (.I0(dummy_local_reg_rdack_d1),
        .I1(hard_macro_rst_reg_reg),
        .I2(p_20_in),
        .I3(p_19_in),
        .I4(p_18_in),
        .O(dummy_local_reg_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    dummy_local_reg_wrack_d1_i_1
       (.I0(p_20_in),
        .I1(p_19_in),
        .I2(p_18_in),
        .I3(hard_macro_rst_reg_reg),
        .O(dummy_local_reg_wrack_d10));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h11111110)) 
    dummy_local_reg_wrack_i_1
       (.I0(hard_macro_rst_reg_reg),
        .I1(dummy_local_reg_wrack_d1),
        .I2(p_20_in),
        .I3(p_19_in),
        .I4(p_18_in),
        .O(dummy_local_reg_wrack0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    dwe_d1_i_1
       (.I0(jtaglocked_i),
        .I1(drdy_wr_ack_i_d1_reg),
        .I2(hard_macro_rst_reg_reg),
        .O(dwe_d1_reg));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    hard_macro_rst_reg_i_1
       (.I0(s_axi_wdata[0]),
        .I1(p_22_in),
        .I2(p_21_in),
        .I3(hard_macro_rst_reg_reg),
        .I4(hard_macro_rst_reg),
        .O(hard_macro_rst_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \ip_irpt_enable_reg[16]_i_1 
       (.I0(hard_macro_rst_reg_reg),
        .I1(s_axi_arvalid),
        .I2(s_axi_wstrb),
        .I3(p_7_in_0),
        .O(E));
  LUT6 #(
    .INIT(64'hEEEFFFFF22200000)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata[1]),
        .I1(hard_macro_rst_reg_reg),
        .I2(s_axi_arvalid),
        .I3(s_axi_wstrb),
        .I4(p_10_in),
        .I5(ipif_glbl_irpt_enable_reg),
        .O(ipif_glbl_irpt_enable_reg_reg));
  LUT6 #(
    .INIT(64'hFFF0EEE000000000)) 
    irpt_rdack_d1_i_1
       (.I0(p_10_in),
        .I1(p_7_in_0),
        .I2(s_axi_arvalid),
        .I3(s_axi_wstrb),
        .I4(p_9_in),
        .I5(hard_macro_rst_reg_reg),
        .O(irpt_rdack));
  LUT6 #(
    .INIT(64'h5454545454545400)) 
    irpt_wrack_d1_i_1
       (.I0(hard_macro_rst_reg_reg),
        .I1(s_axi_arvalid),
        .I2(s_axi_wstrb),
        .I3(p_9_in),
        .I4(p_10_in),
        .I5(p_7_in_0),
        .O(irpt_wrack));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    local_reg_rdack_d1_i_1
       (.I0(p_23_in),
        .I1(p_21_in),
        .I2(p_22_in),
        .I3(hard_macro_rst_reg_reg),
        .O(local_rdce_or_reduce));
  LUT5 #(
    .INIT(32'h44444440)) 
    local_reg_rdack_i_1
       (.I0(local_reg_rdack_d1),
        .I1(hard_macro_rst_reg_reg),
        .I2(p_23_in),
        .I3(p_21_in),
        .I4(p_22_in),
        .O(local_reg_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    local_reg_wrack_d1_i_1
       (.I0(p_24_in),
        .I1(p_22_in),
        .I2(p_21_in),
        .I3(p_23_in),
        .I4(hard_macro_rst_reg_reg),
        .O(convst_rst_wrce_or_reduce));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    local_reg_wrack_i_1
       (.I0(local_reg_wrack_d1),
        .I1(hard_macro_rst_reg_reg),
        .I2(p_24_in),
        .I3(p_22_in),
        .I4(p_21_in),
        .I5(p_23_in),
        .O(local_reg_wrack0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    mode_change_i_2
       (.I0(dwe_d1_reg),
        .I1(s_axi_araddr_5_sn_1),
        .I2(\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0 ),
        .I3(den_B),
        .I4(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .I5(s_axi_araddr_4_sn_1),
        .O(mode_change0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    reset_trig_i_1
       (.I0(sw_rst_cond_d1),
        .I1(p_25_in),
        .I2(hard_macro_rst_reg_reg),
        .I3(data_is_non_reset_match__3),
        .O(reset_trig0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rst_ip2bus_rdack_d1_i_1
       (.I0(p_25_in),
        .I1(hard_macro_rst_reg_reg),
        .O(bus2ip_rdce[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    rst_ip2bus_rdack_i_1
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_25_in),
        .I2(rst_ip2bus_rdack_d1),
        .O(rst_ip2bus_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    status_reg_rdack_d1_i_1
       (.I0(p_24_in),
        .I1(hard_macro_rst_reg_reg),
        .O(bus2ip_rdce[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    status_reg_rdack_i_1
       (.I0(p_24_in),
        .I1(hard_macro_rst_reg_reg),
        .I2(status_reg_rdack_d1),
        .O(status_reg_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    sw_rst_cond_d1_i_1
       (.I0(hard_macro_rst_reg_reg),
        .I1(p_25_in),
        .I2(data_is_non_reset_match__3),
        .O(sw_rst_cond));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_axi_lite_ipif
   (drdy_wr_ack_i_d1_reg,
    bus2ip_reset_active_high,
    s_axi_rresp,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ,
    s_axi_arready,
    s_axi_awready,
    local_rdce_or_reduce,
    local_reg_rdack0,
    convst_rst_wrce_or_reduce,
    local_reg_wrack0,
    bus2ip_wrce,
    mode_change0,
    dwe_d1_reg,
    p_7_in,
    status_reg_rdack0,
    bus2ip_rdce,
    reset2ip_reset,
    ip2bus_error_int1,
    ip2bus_wrack_int1,
    reset_trig0,
    sw_rst_cond,
    D,
    Intr2Bus_RdAck0,
    irpt_rdack,
    p_48_out__0,
    irpt_wrack,
    interrupt_wrce_strb,
    E,
    dummy_bus2ip_rdce_intr,
    p_5_out,
    dummy_bus2ip_wrce_intr,
    p_3_out,
    dummy_local_reg_rdack_d10,
    dummy_local_reg_rdack0,
    dummy_local_reg_wrack_d10,
    dummy_local_reg_wrack0,
    rst_ip2bus_rdack0,
    hard_macro_rst_reg_reg,
    ipif_glbl_irpt_enable_reg_reg,
    AR,
    SR,
    s_axi_rdata,
    s_axi_aclk,
    ip2bus_error,
    \s_axi_awaddr[8] ,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awvalid,
    ip2bus_rdack,
    ip2bus_wrack,
    s_axi_aresetn,
    local_reg_rdack_d1,
    local_reg_wrack_d1,
    s_axi_araddr_5_sp_1,
    den_B,
    s_axi_araddr_4_sp_1,
    jtaglocked_i,
    status_reg_rdack_d1,
    \RESET_FLOPS[15].RST_FLOPS ,
    bus2ip_be,
    data_is_non_reset_match__3,
    p_0_out,
    s_axi_arvalid_0,
    local_reg_wrack_reg,
    intr_ip2bus_wrack,
    wrack,
    sw_rst_cond_d1,
    Q,
    \do_reg_reg[15] ,
    \status_reg_reg[10] ,
    p_1_in14_in,
    p_1_in11_in,
    p_1_in8_in,
    p_1_in5_in,
    p_1_in2_in,
    p_1_in,
    s_axi_wstrb,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \alarm_reg_reg[8] ,
    p_1_in44_in,
    p_1_in41_in,
    p_1_in38_in,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in20_in,
    p_1_in17_in,
    irpt_wrack_d1,
    dummy_intr_reg_rdack_d1,
    dummy_intr_reg_wrack_d1,
    dummy_local_reg_rdack_d1,
    dummy_local_reg_wrack_d1,
    rst_ip2bus_rdack_d1,
    s_axi_bready,
    s_axi_rready,
    jtagmodified_d1,
    jtagmodified_i,
    s_axi_wdata,
    hard_macro_rst_reg,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] );
  output drdy_wr_ack_i_d1_reg;
  output bus2ip_reset_active_high;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output [2:0]\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ;
  output s_axi_arready;
  output s_axi_awready;
  output local_rdce_or_reduce;
  output local_reg_rdack0;
  output convst_rst_wrce_or_reduce;
  output local_reg_wrack0;
  output [0:0]bus2ip_wrce;
  output mode_change0;
  output dwe_d1_reg;
  output p_7_in;
  output status_reg_rdack0;
  output [2:0]bus2ip_rdce;
  output reset2ip_reset;
  output ip2bus_error_int1;
  output ip2bus_wrack_int1;
  output reset_trig0;
  output sw_rst_cond;
  output [18:0]D;
  output Intr2Bus_RdAck0;
  output irpt_rdack;
  output p_48_out__0;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output [0:0]E;
  output dummy_bus2ip_rdce_intr;
  output p_5_out;
  output dummy_bus2ip_wrce_intr;
  output p_3_out;
  output dummy_local_reg_rdack_d10;
  output dummy_local_reg_rdack0;
  output dummy_local_reg_wrack_d10;
  output dummy_local_reg_wrack0;
  output rst_ip2bus_rdack0;
  output hard_macro_rst_reg_reg;
  output ipif_glbl_irpt_enable_reg_reg;
  output [0:0]AR;
  output [0:0]SR;
  output [18:0]s_axi_rdata;
  input s_axi_aclk;
  input ip2bus_error;
  input [0:0]\s_axi_awaddr[8] ;
  input [7:0]s_axi_araddr;
  input s_axi_arvalid;
  input [7:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input ip2bus_rdack;
  input ip2bus_wrack;
  input s_axi_aresetn;
  input local_reg_rdack_d1;
  input local_reg_wrack_d1;
  input s_axi_araddr_5_sp_1;
  input den_B;
  input s_axi_araddr_4_sp_1;
  input jtaglocked_i;
  input status_reg_rdack_d1;
  input \RESET_FLOPS[15].RST_FLOPS ;
  input [0:0]bus2ip_be;
  input data_is_non_reset_match__3;
  input p_0_out;
  input s_axi_arvalid_0;
  input local_reg_wrack_reg;
  input intr_ip2bus_wrack;
  input wrack;
  input sw_rst_cond_d1;
  input [16:0]Q;
  input [15:0]\do_reg_reg[15] ;
  input [10:0]\status_reg_reg[10] ;
  input p_1_in14_in;
  input p_1_in11_in;
  input p_1_in8_in;
  input p_1_in5_in;
  input p_1_in2_in;
  input p_1_in;
  input [0:0]s_axi_wstrb;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input [8:0]\alarm_reg_reg[8] ;
  input p_1_in44_in;
  input p_1_in41_in;
  input p_1_in38_in;
  input p_1_in35_in;
  input p_1_in32_in;
  input p_1_in29_in;
  input p_1_in26_in;
  input p_1_in23_in;
  input p_1_in20_in;
  input p_1_in17_in;
  input irpt_wrack_d1;
  input dummy_intr_reg_rdack_d1;
  input dummy_intr_reg_wrack_d1;
  input dummy_local_reg_rdack_d1;
  input dummy_local_reg_wrack_d1;
  input rst_ip2bus_rdack_d1;
  input s_axi_bready;
  input s_axi_rready;
  input jtagmodified_d1;
  input jtagmodified_i;
  input [1:0]s_axi_wdata;
  input hard_macro_rst_reg;
  input [18:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] ;

  wire [0:0]AR;
  wire Bus_RNW_reg;
  wire [18:0]D;
  wire [0:0]E;
  wire [2:0]\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire [18:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] ;
  wire Intr2Bus_RdAck0;
  wire [16:0]Q;
  wire \RESET_FLOPS[15].RST_FLOPS ;
  wire [0:0]SR;
  wire [8:0]\alarm_reg_reg[8] ;
  wire [0:0]bus2ip_be;
  wire [2:0]bus2ip_rdce;
  wire bus2ip_reset_active_high;
  wire [0:0]bus2ip_wrce;
  wire convst_rst_wrce_or_reduce;
  wire data_is_non_reset_match__3;
  wire den_B;
  wire [15:0]\do_reg_reg[15] ;
  wire drdy_wr_ack_i_d1_reg;
  wire dummy_bus2ip_rdce_intr;
  wire dummy_bus2ip_wrce_intr;
  wire dummy_intr_reg_rdack_d1;
  wire dummy_intr_reg_wrack_d1;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire dwe_d1_reg;
  wire hard_macro_rst_reg;
  wire hard_macro_rst_reg_reg;
  wire interrupt_wrce_strb;
  wire intr_ip2bus_wrack;
  wire ip2bus_error;
  wire ip2bus_error_int1;
  wire ip2bus_rdack;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire jtaglocked_i;
  wire jtagmodified_d1;
  wire jtagmodified_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire local_reg_wrack_reg;
  wire mode_change0;
  wire p_0_out;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in2_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in38_in;
  wire p_1_in41_in;
  wire p_1_in44_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_3_out;
  wire p_48_out__0;
  wire p_5_out;
  wire p_7_in;
  wire reset2ip_reset;
  wire reset_trig0;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire [7:0]s_axi_araddr;
  wire s_axi_araddr_4_sn_1;
  wire s_axi_araddr_5_sn_1;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_arvalid_0;
  wire [7:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[8] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [18:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [1:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire [10:0]\status_reg_reg[10] ;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;

  assign s_axi_araddr_4_sn_1 = s_axi_araddr_4_sp_1;
  assign s_axi_araddr_5_sn_1 = s_axi_araddr_5_sp_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.AR(AR),
        .D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] (\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] [1]),
        .\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 (\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] [2]),
        .\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 (\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] [0]),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] (\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] ),
        .Intr2Bus_RdAck0(Intr2Bus_RdAck0),
        .Q(Q),
        .\RESET_FLOPS[15].RST_FLOPS (\RESET_FLOPS[15].RST_FLOPS ),
        .SR(bus2ip_reset_active_high),
        .\alarm_reg_reg[8] (\alarm_reg_reg[8] ),
        .bus2ip_be(bus2ip_be),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_wrce(bus2ip_wrce),
        .convst_rst_wrce_or_reduce(convst_rst_wrce_or_reduce),
        .data_is_non_reset_match__3(data_is_non_reset_match__3),
        .den_B(den_B),
        .\do_reg_reg[15] (SR),
        .\do_reg_reg[15]_0 (\do_reg_reg[15] ),
        .drdy_wr_ack_i_d1_reg(drdy_wr_ack_i_d1_reg),
        .dummy_bus2ip_rdce_intr(dummy_bus2ip_rdce_intr),
        .dummy_bus2ip_wrce_intr(dummy_bus2ip_wrce_intr),
        .dummy_intr_reg_rdack_d1(dummy_intr_reg_rdack_d1),
        .dummy_intr_reg_wrack_d1(dummy_intr_reg_wrack_d1),
        .dummy_local_reg_rdack0(dummy_local_reg_rdack0),
        .dummy_local_reg_rdack_d1(dummy_local_reg_rdack_d1),
        .dummy_local_reg_rdack_d10(dummy_local_reg_rdack_d10),
        .dummy_local_reg_wrack0(dummy_local_reg_wrack0),
        .dummy_local_reg_wrack_d1(dummy_local_reg_wrack_d1),
        .dummy_local_reg_wrack_d10(dummy_local_reg_wrack_d10),
        .dwe_d1_reg(dwe_d1_reg),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .hard_macro_rst_reg_reg(Bus_RNW_reg),
        .hard_macro_rst_reg_reg_0(hard_macro_rst_reg_reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr_ip2bus_wrack(intr_ip2bus_wrack),
        .ip2bus_error(ip2bus_error),
        .ip2bus_error_int1(ip2bus_error_int1),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int1(ip2bus_wrack_int1),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .jtaglocked_i(jtaglocked_i),
        .jtagmodified_d1(jtagmodified_d1),
        .jtagmodified_i(jtagmodified_i),
        .local_rdce_or_reduce(local_rdce_or_reduce),
        .local_reg_rdack0(local_reg_rdack0),
        .local_reg_rdack_d1(local_reg_rdack_d1),
        .local_reg_wrack0(local_reg_wrack0),
        .local_reg_wrack_d1(local_reg_wrack_d1),
        .local_reg_wrack_reg(local_reg_wrack_reg),
        .mode_change0(mode_change0),
        .p_0_out(p_0_out),
        .p_1_in(p_1_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in20_in(p_1_in20_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_1_in38_in(p_1_in38_in),
        .p_1_in41_in(p_1_in41_in),
        .p_1_in44_in(p_1_in44_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_3_out(p_3_out),
        .p_48_out__0(p_48_out__0),
        .p_5_out(p_5_out),
        .p_7_in(p_7_in),
        .reset2ip_reset(reset2ip_reset),
        .reset_trig0(reset_trig0),
        .rst_ip2bus_rdack0(rst_ip2bus_rdack0),
        .rst_ip2bus_rdack_d1(rst_ip2bus_rdack_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_araddr_4_sp_1(s_axi_araddr_4_sn_1),
        .s_axi_araddr_5_sp_1(s_axi_araddr_5_sn_1),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(s_axi_arvalid_0),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[8] (\s_axi_awaddr[8] ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .status_reg_rdack0(status_reg_rdack0),
        .status_reg_rdack_d1(status_reg_rdack_d1),
        .\status_reg_reg[10] (\status_reg_reg[10] ),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack));
endmodule

(* C_FAMILY = "virtex7" *) (* C_INCLUDE_INTR = "1" *) (* C_INSTANCE = "design_1_xadc_wiz_0_0_axi_xadc" *) 
(* C_SIM_MONITOR_FILE = "design.txt" *) (* C_S_AXI_ADDR_WIDTH = "11" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* hdl = "VHDL" *) (* ip_group = "LOGICORE" *) (* iptype = "PERIPHERAL" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_axi_xadc
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    s_axis_aclk,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tid,
    m_axis_tready,
    busy_out,
    channel_out,
    eoc_out,
    eos_out,
    alarm_out,
    vp_in,
    vn_in);
  (* max_fanout = "10000" *) (* sigis = "Clk" *) input s_axi_aclk;
  (* max_fanout = "10000" *) (* sigis = "Rst" *) input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input s_axis_aclk;
  output [15:0]m_axis_tdata;
  output m_axis_tvalid;
  output [4:0]m_axis_tid;
  input m_axis_tready;
  output busy_out;
  output [4:0]channel_out;
  output eoc_out;
  output eos_out;
  output [7:0]alarm_out;
  input vp_in;
  input vn_in;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_0;
  wire AXI_LITE_IPIF_I_n_18;
  wire AXI_LITE_IPIF_I_n_63;
  wire AXI_LITE_IPIF_I_n_64;
  wire AXI_LITE_IPIF_I_n_66;
  wire AXI_XADC_CORE_I_n_37;
  wire AXI_XADC_CORE_I_n_46;
  wire AXI_XADC_CORE_I_n_47;
  wire AXI_XADC_CORE_I_n_48;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_1 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_27 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_32 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_37 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_39 ;
  wire \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_40 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_error_i_5_n_0 ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire Intr2Bus_RdAck0;
  wire SOFT_RESET_I_n_2;
  wire [14:14]Sysmon_IP2Bus_Data;
  wire [7:0]alarm_out;
  wire [0:0]alarm_reg;
  wire [8:4]bus2ip_addr;
  wire [3:3]bus2ip_be;
  wire [24:0]bus2ip_rdce;
  wire bus2ip_reset_active_high;
  wire [0:0]bus2ip_wrce;
  wire busy_out;
  wire [4:0]channel_out;
  wire convst_rst_wrce_or_reduce;
  wire data_is_non_reset_match__3;
  wire den_B;
  wire [15:0]do_reg;
  wire dummy_bus2ip_rdce_intr;
  wire dummy_bus2ip_wrce_intr;
  wire dummy_intr_reg_rdack;
  wire dummy_intr_reg_rdack_d1;
  wire dummy_intr_reg_wrack;
  wire dummy_intr_reg_wrack_d1;
  wire dummy_local_reg_rdack;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire eoc_out;
  wire eos_out;
  wire hard_macro_rst_reg;
  wire [8:9]interrupt_status_i;
  wire interrupt_wrce_strb;
  wire [0:0]intr_ip2bus_data;
  wire intr_ip2bus_rdack;
  wire intr_ip2bus_wrack;
  wire [31:0]ip2bus_data;
  wire [15:31]ip2bus_data_int1;
  wire ip2bus_error;
  wire ip2bus_error_int1;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int1;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire ip2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d11;
  wire jtaglocked_i;
  wire jtagmodified_d1;
  wire jtagmodified_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire m_axis_reset;
  wire [15:0]m_axis_tdata;
  wire [4:0]m_axis_tid;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire mode_change0;
  wire ot_i;
  wire p_0_in10_in;
  wire p_0_in13_in;
  wire p_0_in16_in;
  wire p_0_in1_in;
  wire p_0_in22_in;
  wire p_0_in25_in;
  wire p_0_in28_in;
  wire p_0_in31_in;
  wire p_0_in37_in;
  wire p_0_in40_in;
  wire p_0_in43_in;
  wire p_0_in7_in;
  wire p_0_out;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in2_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in38_in;
  wire p_1_in41_in;
  wire p_1_in44_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_1_in_0;
  wire p_2_in;
  wire p_3_in;
  wire p_3_out;
  wire p_48_out__0;
  wire p_4_in;
  wire p_5_in;
  wire p_5_out;
  wire p_6_in;
  wire p_7_in;
  wire reset2ip_reset;
  wire reset_trig0;
  wire rst_ip2bus_rdack;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Clk" *) wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Rst" *) wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire s_axis_aclk;
  wire [10:0]status_reg;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire vn_in;
  wire vp_in;
  wire wrack;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17:0] = \^s_axi_rdata [17:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.AR(m_axis_reset),
        .Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({intr_ip2bus_data,Sysmon_IP2Bus_Data,ip2bus_data_int1[15],ip2bus_data_int1[16],ip2bus_data_int1[17],ip2bus_data_int1[18],ip2bus_data_int1[19],ip2bus_data_int1[20],ip2bus_data_int1[21],ip2bus_data_int1[22],ip2bus_data_int1[23],ip2bus_data_int1[24],ip2bus_data_int1[25],ip2bus_data_int1[26],ip2bus_data_int1[27],ip2bus_data_int1[28],ip2bus_data_int1[29],ip2bus_data_int1[30],ip2bus_data_int1[31]}),
        .E(irpt_wrack_d11),
        .\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] (bus2ip_addr[6:4]),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_1 ),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] ({ip2bus_data[31],ip2bus_data[17:0]}),
        .Intr2Bus_RdAck0(Intr2Bus_RdAck0),
        .Q({p_0_in43_in,p_0_in40_in,p_0_in37_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_27 ,p_0_in31_in,p_0_in28_in,p_0_in25_in,p_0_in22_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_32 ,p_0_in16_in,p_0_in13_in,p_0_in10_in,p_0_in7_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_37 ,p_0_in1_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_39 ,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_40 }),
        .\RESET_FLOPS[15].RST_FLOPS (SOFT_RESET_I_n_2),
        .SR(AXI_LITE_IPIF_I_n_66),
        .\alarm_reg_reg[8] ({alarm_out,alarm_reg}),
        .bus2ip_be(bus2ip_be),
        .bus2ip_rdce({bus2ip_rdce[24:23],bus2ip_rdce[0]}),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .bus2ip_wrce(bus2ip_wrce),
        .convst_rst_wrce_or_reduce(convst_rst_wrce_or_reduce),
        .data_is_non_reset_match__3(data_is_non_reset_match__3),
        .den_B(den_B),
        .\do_reg_reg[15] (do_reg),
        .drdy_wr_ack_i_d1_reg(AXI_LITE_IPIF_I_n_0),
        .dummy_bus2ip_rdce_intr(dummy_bus2ip_rdce_intr),
        .dummy_bus2ip_wrce_intr(dummy_bus2ip_wrce_intr),
        .dummy_intr_reg_rdack_d1(dummy_intr_reg_rdack_d1),
        .dummy_intr_reg_wrack_d1(dummy_intr_reg_wrack_d1),
        .dummy_local_reg_rdack0(dummy_local_reg_rdack0),
        .dummy_local_reg_rdack_d1(dummy_local_reg_rdack_d1),
        .dummy_local_reg_rdack_d10(dummy_local_reg_rdack_d10),
        .dummy_local_reg_wrack0(dummy_local_reg_wrack0),
        .dummy_local_reg_wrack_d1(dummy_local_reg_wrack_d1),
        .dummy_local_reg_wrack_d10(dummy_local_reg_wrack_d10),
        .dwe_d1_reg(AXI_LITE_IPIF_I_n_18),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .hard_macro_rst_reg_reg(AXI_LITE_IPIF_I_n_63),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr_ip2bus_wrack(intr_ip2bus_wrack),
        .ip2bus_error(ip2bus_error),
        .ip2bus_error_int1(ip2bus_error_int1),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int1(ip2bus_wrack_int1),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(AXI_LITE_IPIF_I_n_64),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .jtaglocked_i(jtaglocked_i),
        .jtagmodified_d1(jtagmodified_d1),
        .jtagmodified_i(jtagmodified_i),
        .local_rdce_or_reduce(local_rdce_or_reduce),
        .local_reg_rdack0(local_reg_rdack0),
        .local_reg_rdack_d1(local_reg_rdack_d1),
        .local_reg_wrack0(local_reg_wrack0),
        .local_reg_wrack_d1(local_reg_wrack_d1),
        .local_reg_wrack_reg(AXI_XADC_CORE_I_n_48),
        .mode_change0(mode_change0),
        .p_0_out(p_0_out),
        .p_1_in(p_1_in_0),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in20_in(p_1_in20_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_1_in38_in(p_1_in38_in),
        .p_1_in41_in(p_1_in41_in),
        .p_1_in44_in(p_1_in44_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_3_out(p_3_out),
        .p_48_out__0(p_48_out__0),
        .p_5_out(p_5_out),
        .p_7_in(p_7_in),
        .reset2ip_reset(reset2ip_reset),
        .reset_trig0(reset_trig0),
        .rst_ip2bus_rdack0(rst_ip2bus_rdack0),
        .rst_ip2bus_rdack_d1(rst_ip2bus_rdack_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[9:2]),
        .s_axi_araddr_4_sp_1(AXI_XADC_CORE_I_n_46),
        .s_axi_araddr_5_sp_1(AXI_XADC_CORE_I_n_47),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(\INTR_CTRLR_GEN_I.ip2bus_error_i_5_n_0 ),
        .s_axi_awaddr(s_axi_awaddr[9:2]),
        .\s_axi_awaddr[8] (bus2ip_addr[8]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [17:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[0]}),
        .s_axi_wstrb(s_axi_wstrb[3]),
        .s_axi_wvalid(s_axi_wvalid),
        .status_reg_rdack0(status_reg_rdack0),
        .status_reg_rdack_d1(status_reg_rdack_d1),
        .\status_reg_reg[10] (status_reg),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_xadc_core_drp AXI_XADC_CORE_I
       (.AR(m_axis_reset),
        .Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({jtaglocked_i,busy_out,channel_out}),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] (AXI_LITE_IPIF_I_n_18),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 (AXI_LITE_IPIF_I_n_0),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (AXI_LITE_IPIF_I_n_63),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] (do_reg),
        .\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] (status_reg),
        .\INTR_CTRLR_GEN_I.ip2bus_wrack_reg (AXI_XADC_CORE_I_n_48),
        .Q({alarm_out,alarm_reg}),
        .\RESET_FLOPS[15].RST_FLOPS (SOFT_RESET_I_n_2),
        .SR(AXI_LITE_IPIF_I_n_66),
        .\alarm_reg_reg[7]_0 ({p_1_in,p_2_in,p_3_in,p_4_in,p_5_in,p_6_in,AXI_XADC_CORE_I_n_37,ot_i}),
        .bus2ip_rdce({bus2ip_rdce[23],bus2ip_rdce[0]}),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .bus2ip_wrce(bus2ip_wrce),
        .convst_rst_wrce_or_reduce(convst_rst_wrce_or_reduce),
        .\daddr_C_reg_reg[6] (bus2ip_addr[8]),
        .den_B(den_B),
        .dummy_intr_reg_rdack(dummy_intr_reg_rdack),
        .dummy_intr_reg_wrack(dummy_intr_reg_wrack),
        .dummy_local_reg_rdack(dummy_local_reg_rdack),
        .dummy_local_reg_wrack(dummy_local_reg_wrack),
        .eoc_out(eoc_out),
        .eos_out(eos_out),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .interrupt_status_i({interrupt_status_i[8],interrupt_status_i[9]}),
        .intr_ip2bus_rdack(intr_ip2bus_rdack),
        .ip2bus_rdack_int1(ip2bus_rdack_int1),
        .jtagmodified_d1(jtagmodified_d1),
        .jtagmodified_i(jtagmodified_i),
        .local_rdce_or_reduce(local_rdce_or_reduce),
        .local_reg_rdack0(local_reg_rdack0),
        .local_reg_rdack_d1(local_reg_rdack_d1),
        .local_reg_wrack0(local_reg_wrack0),
        .local_reg_wrack_d1(local_reg_wrack_d1),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .mode_change0(mode_change0),
        .mode_change_reg_0(AXI_XADC_CORE_I_n_46),
        .mode_change_reg_1(AXI_XADC_CORE_I_n_47),
        .p_0_out(p_0_out),
        .p_7_in(p_7_in),
        .reset2ip_reset(reset2ip_reset),
        .rst_ip2bus_rdack(rst_ip2bus_rdack),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[8:2]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[8:2]),
        .\s_axi_awaddr[6] (bus2ip_addr[6:4]),
        .s_axi_wdata(s_axi_wdata[15:0]),
        .s_axis_aclk(s_axis_aclk),
        .status_reg_rdack0(status_reg_rdack0),
        .status_reg_rdack_d1(status_reg_rdack_d1),
        .vn_in(vn_in),
        .vp_in(vp_in));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_interrupt_control \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I 
       (.Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_64),
        .D(jtaglocked_i),
        .E(irpt_wrack_d11),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_1 ),
        .Intr2Bus_RdAck0(Intr2Bus_RdAck0),
        .Q({p_0_in43_in,p_0_in40_in,p_0_in37_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_27 ,p_0_in31_in,p_0_in28_in,p_0_in25_in,p_0_in22_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_32 ,p_0_in16_in,p_0_in13_in,p_0_in10_in,p_0_in7_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_37 ,p_0_in1_in,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_39 ,\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_40 }),
        .bus2ip_be(bus2ip_be),
        .den_C_reg_reg({p_1_in,p_2_in,p_3_in,p_4_in,p_5_in,p_6_in,AXI_XADC_CORE_I_n_37,ot_i}),
        .eoc_out(eoc_out),
        .eos_out(eos_out),
        .interrupt_status_i({interrupt_status_i[8],interrupt_status_i[9]}),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr_ip2bus_rdack(intr_ip2bus_rdack),
        .intr_ip2bus_wrack(intr_ip2bus_wrack),
        .ip2intc_irpt(ip2intc_irpt),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .jtagmodified_i(jtagmodified_i),
        .p_1_in(p_1_in_0),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in20_in(p_1_in20_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_1_in38_in(p_1_in38_in),
        .p_1_in41_in(p_1_in41_in),
        .p_1_in44_in(p_1_in44_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_48_out__0(p_48_out__0),
        .reset2ip_reset(reset2ip_reset),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_wdata(s_axi_wdata[16:0]),
        .s_axi_wstrb(s_axi_wstrb[3]));
  FDRE \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_bus2ip_rdce_intr),
        .Q(dummy_intr_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_5_out),
        .Q(dummy_intr_reg_rdack),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_bus2ip_wrce_intr),
        .Q(dummy_intr_reg_wrack_d1),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_3_out),
        .Q(dummy_intr_reg_wrack),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ip2bus_data),
        .Q(ip2bus_data[31]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Sysmon_IP2Bus_Data),
        .Q(ip2bus_data[17]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[15]),
        .Q(ip2bus_data[16]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[16]),
        .Q(ip2bus_data[15]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[17]),
        .Q(ip2bus_data[14]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[18]),
        .Q(ip2bus_data[13]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[19]),
        .Q(ip2bus_data[12]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[20]),
        .Q(ip2bus_data[11]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[21]),
        .Q(ip2bus_data[10]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[22]),
        .Q(ip2bus_data[9]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[23]),
        .Q(ip2bus_data[8]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[24]),
        .Q(ip2bus_data[7]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[25]),
        .Q(ip2bus_data[6]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[26]),
        .Q(ip2bus_data[5]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[27]),
        .Q(ip2bus_data[4]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[28]),
        .Q(ip2bus_data[3]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[29]),
        .Q(ip2bus_data[2]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[30]),
        .Q(ip2bus_data[1]),
        .R(reset2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_int1[31]),
        .Q(ip2bus_data[0]),
        .R(reset2ip_reset));
  LUT4 #(
    .INIT(16'h007F)) 
    \INTR_CTRLR_GEN_I.ip2bus_error_i_5 
       (.I0(s_axi_wstrb[1]),
        .I1(s_axi_wstrb[2]),
        .I2(s_axi_wstrb[0]),
        .I3(s_axi_arvalid),
        .O(\INTR_CTRLR_GEN_I.ip2bus_error_i_5_n_0 ));
  FDRE \INTR_CTRLR_GEN_I.ip2bus_error_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_error_int1),
        .Q(ip2bus_error),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.ip2bus_rdack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_int1),
        .Q(ip2bus_rdack),
        .R(reset2ip_reset));
  FDRE \INTR_CTRLR_GEN_I.ip2bus_wrack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_int1),
        .Q(ip2bus_wrack),
        .R(reset2ip_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_soft_reset SOFT_RESET_I
       (.FF_WRACK_0(SOFT_RESET_I_n_2),
        .bus2ip_reset_active_high(bus2ip_reset_active_high),
        .data_is_non_reset_match__3(data_is_non_reset_match__3),
        .reset_trig0(reset_trig0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_wdata(s_axi_wdata[3:0]),
        .s_axi_wstrb(s_axi_wstrb[0]),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack));
  FDRE dummy_local_reg_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_rdack_d10),
        .Q(dummy_local_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE dummy_local_reg_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_rdack0),
        .Q(dummy_local_reg_rdack),
        .R(reset2ip_reset));
  FDRE dummy_local_reg_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_wrack_d10),
        .Q(dummy_local_reg_wrack_d1),
        .R(reset2ip_reset));
  FDRE dummy_local_reg_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dummy_local_reg_wrack0),
        .Q(dummy_local_reg_wrack),
        .R(reset2ip_reset));
  FDRE rst_ip2bus_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce[24]),
        .Q(rst_ip2bus_rdack_d1),
        .R(reset2ip_reset));
  FDRE rst_ip2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_ip2bus_rdack0),
        .Q(rst_ip2bus_rdack),
        .R(reset2ip_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_interrupt_control
   (irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    p_1_in44_in,
    p_1_in41_in,
    p_1_in38_in,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in20_in,
    p_1_in17_in,
    p_1_in14_in,
    p_1_in11_in,
    p_1_in8_in,
    p_1_in5_in,
    p_1_in2_in,
    p_1_in,
    intr_ip2bus_wrack,
    irpt_rdack_d1,
    intr_ip2bus_rdack,
    ipif_glbl_irpt_enable_reg,
    bus2ip_be,
    ip2intc_irpt,
    Q,
    reset2ip_reset,
    irpt_wrack,
    s_axi_aclk,
    den_C_reg_reg,
    eos_out,
    eoc_out,
    D,
    jtagmodified_i,
    interrupt_status_i,
    interrupt_wrce_strb,
    irpt_rdack,
    Intr2Bus_RdAck0,
    Bus_RNW_reg_reg,
    s_axi_wdata,
    p_48_out__0,
    s_axi_arvalid,
    s_axi_wstrb,
    E);
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output p_1_in44_in;
  output p_1_in41_in;
  output p_1_in38_in;
  output p_1_in35_in;
  output p_1_in32_in;
  output p_1_in29_in;
  output p_1_in26_in;
  output p_1_in23_in;
  output p_1_in20_in;
  output p_1_in17_in;
  output p_1_in14_in;
  output p_1_in11_in;
  output p_1_in8_in;
  output p_1_in5_in;
  output p_1_in2_in;
  output p_1_in;
  output intr_ip2bus_wrack;
  output irpt_rdack_d1;
  output intr_ip2bus_rdack;
  output ipif_glbl_irpt_enable_reg;
  output [0:0]bus2ip_be;
  output ip2intc_irpt;
  output [16:0]Q;
  input reset2ip_reset;
  input irpt_wrack;
  input s_axi_aclk;
  input [7:0]den_C_reg_reg;
  input eos_out;
  input eoc_out;
  input [0:0]D;
  input jtagmodified_i;
  input [1:0]interrupt_status_i;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input Intr2Bus_RdAck0;
  input Bus_RNW_reg_reg;
  input [16:0]s_axi_wdata;
  input p_48_out__0;
  input s_axi_arvalid;
  input [0:0]s_axi_wstrb;
  input [0:0]E;

  wire Bus_RNW_reg_reg;
  wire [0:0]D;
  wire \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ;
  wire \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ;
  wire [0:0]E;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1_n_0 ;
  wire Intr2Bus_RdAck0;
  wire [16:0]Q;
  wire [0:0]bus2ip_be;
  wire [7:0]den_C_reg_reg;
  wire eoc_out;
  wire eos_out;
  wire [1:0]interrupt_status_i;
  wire interrupt_wrce_strb;
  wire intr_ip2bus_rdack;
  wire intr_ip2bus_wrack;
  wire ip2intc_irpt;
  wire ip2intc_irpt_INST_0_i_1_n_0;
  wire ip2intc_irpt_INST_0_i_2_n_0;
  wire ip2intc_irpt_INST_0_i_3_n_0;
  wire ip2intc_irpt_INST_0_i_4_n_0;
  wire ip2intc_irpt_INST_0_i_5_n_0;
  wire ip2intc_irpt_INST_0_i_6_n_0;
  wire ip2intc_irpt_INST_0_i_7_n_0;
  wire ip2intc_irpt_INST_0_i_8_n_0;
  wire ip2intc_irpt_INST_0_i_9_n_0;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_dly1;
  wire irpt_dly2;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire jtagmodified_i;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in2_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in38_in;
  wire p_1_in41_in;
  wire p_1_in44_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_48_out__0;
  wire reset2ip_reset;
  wire s_axi_aclk;
  wire s_axi_arvalid;
  wire [16:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(den_C_reg_reg[0]),
        .Q(irpt_dly1),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_dly1),
        .Q(irpt_dly2),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(den_C_reg_reg[4]),
        .Q(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(den_C_reg_reg[5]),
        .Q(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(den_C_reg_reg[6]),
        .Q(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(den_C_reg_reg[7]),
        .Q(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(den_C_reg_reg[1]),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(den_C_reg_reg[2]),
        .Q(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(den_C_reg_reg[3]),
        .Q(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eos_out),
        .Q(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eoc_out),
        .Q(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(jtagmodified_i),
        .Q(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_status_i[1]),
        .Q(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_status_i[0]),
        .Q(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .S(reset2ip_reset));
  FDSE \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .Q(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .S(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(irpt_dly2),
        .I1(irpt_dly1),
        .I2(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I3(p_48_out__0),
        .I4(s_axi_wdata[0]),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1 
       (.I0(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in17_in),
        .I3(s_axi_wdata[10]),
        .I4(p_48_out__0),
        .O(\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0 ),
        .Q(p_1_in17_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1 
       (.I0(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in14_in),
        .I3(s_axi_wdata[11]),
        .I4(p_48_out__0),
        .O(\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0 ),
        .Q(p_1_in14_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1 
       (.I0(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in11_in),
        .I3(s_axi_wdata[12]),
        .I4(p_48_out__0),
        .O(\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0 ),
        .Q(p_1_in11_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1 
       (.I0(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in8_in),
        .I3(s_axi_wdata[13]),
        .I4(p_48_out__0),
        .O(\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0 ),
        .Q(p_1_in8_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h6AFF6A6A)) 
    \GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1 
       (.I0(p_1_in5_in),
        .I1(s_axi_wdata[14]),
        .I2(p_48_out__0),
        .I3(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I4(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1_n_0 ),
        .Q(p_1_in5_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1 
       (.I0(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in2_in),
        .I3(s_axi_wdata[15]),
        .I4(p_48_out__0),
        .O(\GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1_n_0 ),
        .Q(p_1_in2_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1 
       (.I0(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in),
        .I3(s_axi_wdata[16]),
        .I4(p_48_out__0),
        .O(\GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1_n_0 ),
        .Q(p_1_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in44_in),
        .I3(p_48_out__0),
        .I4(s_axi_wdata[1]),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ),
        .Q(p_1_in44_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 
       (.I0(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in41_in),
        .I3(p_48_out__0),
        .I4(s_axi_wdata[2]),
        .O(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0 ),
        .Q(p_1_in41_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 
       (.I0(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in38_in),
        .I3(p_48_out__0),
        .I4(s_axi_wdata[3]),
        .O(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0 ),
        .Q(p_1_in38_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 
       (.I0(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in35_in),
        .I3(s_axi_wdata[4]),
        .I4(p_48_out__0),
        .O(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0 ),
        .Q(p_1_in35_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 
       (.I0(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in32_in),
        .I3(s_axi_wdata[5]),
        .I4(p_48_out__0),
        .O(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0 ),
        .Q(p_1_in32_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 
       (.I0(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in29_in),
        .I3(s_axi_wdata[6]),
        .I4(p_48_out__0),
        .O(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0 ),
        .Q(p_1_in29_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 
       (.I0(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in26_in),
        .I3(s_axi_wdata[7]),
        .I4(p_48_out__0),
        .O(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0 ),
        .Q(p_1_in26_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1 
       (.I0(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in23_in),
        .I3(s_axi_wdata[8]),
        .I4(p_48_out__0),
        .O(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1_n_0 ),
        .Q(p_1_in23_in),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h4FF4F4F4)) 
    \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1 
       (.I0(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0 ),
        .I1(\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0 ),
        .I2(p_1_in20_in),
        .I3(s_axi_wdata[9]),
        .I4(p_48_out__0),
        .O(\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1_n_0 ),
        .Q(p_1_in20_in),
        .R(reset2ip_reset));
  LUT2 #(
    .INIT(4'hE)) 
    \INTR_CTRLR_GEN_I.ip2bus_error_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wstrb),
        .O(bus2ip_be));
  FDRE Intr2Bus_RdAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Intr2Bus_RdAck0),
        .Q(intr_ip2bus_rdack),
        .R(reset2ip_reset));
  FDRE Intr2Bus_WrAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_wrce_strb),
        .Q(intr_ip2bus_wrack),
        .R(reset2ip_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    ip2intc_irpt_INST_0
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(Q[3]),
        .I2(p_1_in38_in),
        .I3(ip2intc_irpt_INST_0_i_1_n_0),
        .I4(ip2intc_irpt_INST_0_i_2_n_0),
        .I5(ip2intc_irpt_INST_0_i_3_n_0),
        .O(ip2intc_irpt));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    ip2intc_irpt_INST_0_i_1
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(ip2intc_irpt_INST_0_i_4_n_0),
        .I2(ip2intc_irpt_INST_0_i_5_n_0),
        .I3(ip2intc_irpt_INST_0_i_6_n_0),
        .I4(ip2intc_irpt_INST_0_i_7_n_0),
        .I5(ip2intc_irpt_INST_0_i_8_n_0),
        .O(ip2intc_irpt_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0808080)) 
    ip2intc_irpt_INST_0_i_2
       (.I0(Q[1]),
        .I1(p_1_in44_in),
        .I2(ipif_glbl_irpt_enable_reg),
        .I3(Q[6]),
        .I4(p_1_in29_in),
        .O(ip2intc_irpt_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hEAAA)) 
    ip2intc_irpt_INST_0_i_3
       (.I0(ip2intc_irpt_INST_0_i_9_n_0),
        .I1(ipif_glbl_irpt_enable_reg),
        .I2(Q[2]),
        .I3(p_1_in41_in),
        .O(ip2intc_irpt_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_4
       (.I0(Q[10]),
        .I1(p_1_in17_in),
        .I2(Q[9]),
        .I3(p_1_in20_in),
        .O(ip2intc_irpt_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    ip2intc_irpt_INST_0_i_5
       (.I0(Q[0]),
        .I1(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I2(p_1_in26_in),
        .I3(Q[7]),
        .I4(p_1_in23_in),
        .I5(Q[8]),
        .O(ip2intc_irpt_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_6
       (.I0(Q[12]),
        .I1(p_1_in11_in),
        .I2(Q[11]),
        .I3(p_1_in14_in),
        .O(ip2intc_irpt_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_7
       (.I0(Q[14]),
        .I1(p_1_in5_in),
        .I2(Q[13]),
        .I3(p_1_in8_in),
        .O(ip2intc_irpt_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    ip2intc_irpt_INST_0_i_8
       (.I0(Q[16]),
        .I1(p_1_in),
        .I2(Q[15]),
        .I3(p_1_in2_in),
        .O(ip2intc_irpt_INST_0_i_8_n_0));
  LUT5 #(
    .INIT(32'hF0808080)) 
    ip2intc_irpt_INST_0_i_9
       (.I0(Q[5]),
        .I1(p_1_in32_in),
        .I2(ipif_glbl_irpt_enable_reg),
        .I3(Q[4]),
        .I4(p_1_in35_in),
        .O(ip2intc_irpt_INST_0_i_9_n_0));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(Q[10]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(Q[11]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[12]),
        .Q(Q[12]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[13]),
        .Q(Q[13]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[14]),
        .Q(Q[14]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[15]),
        .Q(Q[15]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[16]),
        .Q(Q[16]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(Q[7]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(Q[8]),
        .R(reset2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(Q[9]),
        .R(reset2ip_reset));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(reset2ip_reset));
  FDRE irpt_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_rdack),
        .Q(irpt_rdack_d1),
        .R(reset2ip_reset));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(reset2ip_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_slave_attachment
   (drdy_wr_ack_i_d1_reg,
    SR,
    s_axi_rresp,
    hard_macro_rst_reg_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ,
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ,
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ,
    s_axi_arready,
    s_axi_awready,
    local_rdce_or_reduce,
    local_reg_rdack0,
    convst_rst_wrce_or_reduce,
    local_reg_wrack0,
    bus2ip_wrce,
    mode_change0,
    dwe_d1_reg,
    p_7_in,
    status_reg_rdack0,
    bus2ip_rdce,
    reset2ip_reset,
    ip2bus_error_int1,
    ip2bus_wrack_int1,
    reset_trig0,
    sw_rst_cond,
    D,
    Intr2Bus_RdAck0,
    irpt_rdack,
    p_48_out__0,
    irpt_wrack,
    interrupt_wrce_strb,
    E,
    dummy_bus2ip_rdce_intr,
    p_5_out,
    dummy_bus2ip_wrce_intr,
    p_3_out,
    dummy_local_reg_rdack_d10,
    dummy_local_reg_rdack0,
    dummy_local_reg_wrack_d10,
    dummy_local_reg_wrack0,
    rst_ip2bus_rdack0,
    hard_macro_rst_reg_reg_0,
    ipif_glbl_irpt_enable_reg_reg,
    AR,
    \do_reg_reg[15] ,
    s_axi_rdata,
    s_axi_aclk,
    ip2bus_error,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_awaddr,
    \s_axi_awaddr[8] ,
    s_axi_wvalid,
    s_axi_awvalid,
    ip2bus_rdack,
    ip2bus_wrack,
    s_axi_aresetn,
    local_reg_rdack_d1,
    local_reg_wrack_d1,
    s_axi_araddr_5_sp_1,
    den_B,
    s_axi_araddr_4_sp_1,
    jtaglocked_i,
    status_reg_rdack_d1,
    \RESET_FLOPS[15].RST_FLOPS ,
    bus2ip_be,
    data_is_non_reset_match__3,
    p_0_out,
    s_axi_arvalid_0,
    local_reg_wrack_reg,
    intr_ip2bus_wrack,
    wrack,
    sw_rst_cond_d1,
    Q,
    \do_reg_reg[15]_0 ,
    \status_reg_reg[10] ,
    p_1_in14_in,
    p_1_in11_in,
    p_1_in8_in,
    p_1_in5_in,
    p_1_in2_in,
    p_1_in,
    s_axi_wstrb,
    ipif_glbl_irpt_enable_reg,
    irpt_rdack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ,
    \alarm_reg_reg[8] ,
    p_1_in44_in,
    p_1_in41_in,
    p_1_in38_in,
    p_1_in35_in,
    p_1_in32_in,
    p_1_in29_in,
    p_1_in26_in,
    p_1_in23_in,
    p_1_in20_in,
    p_1_in17_in,
    irpt_wrack_d1,
    dummy_intr_reg_rdack_d1,
    dummy_intr_reg_wrack_d1,
    dummy_local_reg_rdack_d1,
    dummy_local_reg_wrack_d1,
    rst_ip2bus_rdack_d1,
    s_axi_bready,
    s_axi_rready,
    jtagmodified_d1,
    jtagmodified_i,
    s_axi_wdata,
    hard_macro_rst_reg,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] );
  output drdy_wr_ack_i_d1_reg;
  output [0:0]SR;
  output [0:0]s_axi_rresp;
  output hard_macro_rst_reg_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ;
  output \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ;
  output \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ;
  output s_axi_arready;
  output s_axi_awready;
  output local_rdce_or_reduce;
  output local_reg_rdack0;
  output convst_rst_wrce_or_reduce;
  output local_reg_wrack0;
  output [0:0]bus2ip_wrce;
  output mode_change0;
  output dwe_d1_reg;
  output p_7_in;
  output status_reg_rdack0;
  output [2:0]bus2ip_rdce;
  output reset2ip_reset;
  output ip2bus_error_int1;
  output ip2bus_wrack_int1;
  output reset_trig0;
  output sw_rst_cond;
  output [18:0]D;
  output Intr2Bus_RdAck0;
  output irpt_rdack;
  output p_48_out__0;
  output irpt_wrack;
  output interrupt_wrce_strb;
  output [0:0]E;
  output dummy_bus2ip_rdce_intr;
  output p_5_out;
  output dummy_bus2ip_wrce_intr;
  output p_3_out;
  output dummy_local_reg_rdack_d10;
  output dummy_local_reg_rdack0;
  output dummy_local_reg_wrack_d10;
  output dummy_local_reg_wrack0;
  output rst_ip2bus_rdack0;
  output hard_macro_rst_reg_reg_0;
  output ipif_glbl_irpt_enable_reg_reg;
  output [0:0]AR;
  output [0:0]\do_reg_reg[15] ;
  output [18:0]s_axi_rdata;
  input s_axi_aclk;
  input ip2bus_error;
  input [7:0]s_axi_araddr;
  input s_axi_arvalid;
  input [7:0]s_axi_awaddr;
  input [0:0]\s_axi_awaddr[8] ;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input ip2bus_rdack;
  input ip2bus_wrack;
  input s_axi_aresetn;
  input local_reg_rdack_d1;
  input local_reg_wrack_d1;
  input s_axi_araddr_5_sp_1;
  input den_B;
  input s_axi_araddr_4_sp_1;
  input jtaglocked_i;
  input status_reg_rdack_d1;
  input \RESET_FLOPS[15].RST_FLOPS ;
  input [0:0]bus2ip_be;
  input data_is_non_reset_match__3;
  input p_0_out;
  input s_axi_arvalid_0;
  input local_reg_wrack_reg;
  input intr_ip2bus_wrack;
  input wrack;
  input sw_rst_cond_d1;
  input [16:0]Q;
  input [15:0]\do_reg_reg[15]_0 ;
  input [10:0]\status_reg_reg[10] ;
  input p_1_in14_in;
  input p_1_in11_in;
  input p_1_in8_in;
  input p_1_in5_in;
  input p_1_in2_in;
  input p_1_in;
  input [0:0]s_axi_wstrb;
  input ipif_glbl_irpt_enable_reg;
  input irpt_rdack_d1;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  input [8:0]\alarm_reg_reg[8] ;
  input p_1_in44_in;
  input p_1_in41_in;
  input p_1_in38_in;
  input p_1_in35_in;
  input p_1_in32_in;
  input p_1_in29_in;
  input p_1_in26_in;
  input p_1_in23_in;
  input p_1_in20_in;
  input p_1_in17_in;
  input irpt_wrack_d1;
  input dummy_intr_reg_rdack_d1;
  input dummy_intr_reg_wrack_d1;
  input dummy_local_reg_rdack_d1;
  input dummy_local_reg_wrack_d1;
  input rst_ip2bus_rdack_d1;
  input s_axi_bready;
  input s_axi_rready;
  input jtagmodified_d1;
  input jtagmodified_i;
  input [1:0]s_axi_wdata;
  input hard_macro_rst_reg;
  input [18:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] ;

  wire [0:0]AR;
  wire [18:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ;
  wire [18:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] ;
  wire Intr2Bus_RdAck0;
  wire [16:0]Q;
  wire \RESET_FLOPS[15].RST_FLOPS ;
  wire [0:0]SR;
  wire [8:0]\alarm_reg_reg[8] ;
  wire [0:0]bus2ip_be;
  wire [2:0]bus2ip_rdce;
  wire [0:0]bus2ip_wrce;
  wire convst_rst_wrce_or_reduce;
  wire data_is_non_reset_match__3;
  wire den_B;
  wire [0:0]\do_reg_reg[15] ;
  wire [15:0]\do_reg_reg[15]_0 ;
  wire drdy_wr_ack_i_d1_reg;
  wire dummy_bus2ip_rdce_intr;
  wire dummy_bus2ip_wrce_intr;
  wire dummy_intr_reg_rdack_d1;
  wire dummy_intr_reg_wrack_d1;
  wire dummy_local_reg_rdack0;
  wire dummy_local_reg_rdack_d1;
  wire dummy_local_reg_rdack_d10;
  wire dummy_local_reg_wrack0;
  wire dummy_local_reg_wrack_d1;
  wire dummy_local_reg_wrack_d10;
  wire dwe_d1_reg;
  wire hard_macro_rst_reg;
  wire hard_macro_rst_reg_reg;
  wire hard_macro_rst_reg_reg_0;
  wire interrupt_wrce_strb;
  wire intr_ip2bus_wrack;
  wire ip2bus_error;
  wire ip2bus_error_int1;
  wire ip2bus_rdack;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int1;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire jtaglocked_i;
  wire jtagmodified_d1;
  wire jtagmodified_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire local_reg_wrack_reg;
  wire mode_change0;
  (* RTL_KEEP = "yes" *) wire p_0_in;
  wire p_0_out;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in20_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire p_1_in29_in;
  wire p_1_in2_in;
  wire p_1_in32_in;
  wire p_1_in35_in;
  wire p_1_in38_in;
  wire p_1_in41_in;
  wire p_1_in44_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_2_out;
  wire p_3_out;
  wire p_48_out__0;
  wire p_5_out;
  wire p_7_in;
  wire [6:0]plusOp;
  wire reset2ip_reset;
  wire reset_trig0;
  wire rst_i_1_n_0;
  wire rst_ip2bus_rdack0;
  wire rst_ip2bus_rdack_d1;
  wire s_axi_aclk;
  wire [7:0]s_axi_araddr;
  wire s_axi_araddr_4_sn_1;
  wire s_axi_araddr_5_sn_1;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_arvalid_0;
  wire [7:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[8] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  (* RTL_KEEP = "yes" *) wire s_axi_bresp_i;
  wire \s_axi_bresp_i[1]_i_1_n_0 ;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i0;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [18:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  (* RTL_KEEP = "yes" *) wire s_axi_rresp_i;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [1:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire [10:0]\status_reg_reg[10] ;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire timeout;
  wire wrack;

  assign s_axi_araddr_4_sn_1 = s_axi_araddr_4_sp_1;
  assign s_axi_araddr_5_sn_1 = s_axi_araddr_5_sp_1;
  LUT3 #(
    .INIT(8'hFE)) 
    FIFO18E1_inst_data_i_2
       (.I0(SR),
        .I1(\RESET_FLOPS[15].RST_FLOPS ),
        .I2(hard_macro_rst_reg),
        .O(AR));
  LUT6 #(
    .INIT(64'hFEAAFFFFFEAAFEAA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_bvalid_i0),
        .I1(timeout),
        .I2(ip2bus_rdack),
        .I3(s_axi_rresp_i),
        .I4(\FSM_onehot_state[1]_i_2_n_0 ),
        .I5(p_0_in),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(timeout),
        .I1(ip2bus_wrack),
        .I2(s_axi_bresp_i),
        .O(s_axi_bvalid_i0));
  LUT6 #(
    .INIT(64'h88888FFF88888888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(p_0_in),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(s_axi_arvalid),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_arvalid),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(s_axi_awvalid),
        .I4(s_axi_awready),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF101010)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ip2bus_rdack),
        .I1(timeout),
        .I2(s_axi_rresp_i),
        .I3(s_axi_arvalid),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(p_0_in),
        .R(SR));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p_0_in),
        .O(p_2_out));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0 ),
        .I2(timeout),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .R(p_2_out));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .R(p_2_out));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .R(p_2_out));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3] ),
        .R(p_2_out));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4] ),
        .R(p_2_out));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5] ),
        .R(p_2_out));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(timeout),
        .R(p_2_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_address_decoder I_DECODER
       (.D(D),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 (\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ),
        .\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 (\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_0 ),
        .\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_2 (\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]_1 ),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] (\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] ),
        .Intr2Bus_RdAck0(Intr2Bus_RdAck0),
        .Q(timeout),
        .\alarm_reg_reg[8] (\alarm_reg_reg[8] ),
        .bus2ip_be(bus2ip_be),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_wrce(bus2ip_wrce),
        .convst_rst_wrce_or_reduce(convst_rst_wrce_or_reduce),
        .data_is_non_reset_match__3(data_is_non_reset_match__3),
        .den_B(den_B),
        .\do_reg_reg[15] (\do_reg_reg[15]_0 ),
        .drdy_wr_ack_i_d1_reg(drdy_wr_ack_i_d1_reg),
        .dummy_bus2ip_rdce_intr(dummy_bus2ip_rdce_intr),
        .dummy_bus2ip_wrce_intr(dummy_bus2ip_wrce_intr),
        .dummy_intr_reg_rdack_d1(dummy_intr_reg_rdack_d1),
        .dummy_intr_reg_wrack_d1(dummy_intr_reg_wrack_d1),
        .dummy_local_reg_rdack0(dummy_local_reg_rdack0),
        .dummy_local_reg_rdack_d1(dummy_local_reg_rdack_d1),
        .dummy_local_reg_rdack_d10(dummy_local_reg_rdack_d10),
        .dummy_local_reg_wrack0(dummy_local_reg_wrack0),
        .dummy_local_reg_wrack_d1(dummy_local_reg_wrack_d1),
        .dummy_local_reg_wrack_d10(dummy_local_reg_wrack_d10),
        .dwe_d1_reg(dwe_d1_reg),
        .hard_macro_rst_reg(hard_macro_rst_reg),
        .hard_macro_rst_reg_reg(hard_macro_rst_reg_reg),
        .hard_macro_rst_reg_reg_0(hard_macro_rst_reg_reg_0),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr_ip2bus_wrack(intr_ip2bus_wrack),
        .ip2bus_error_int1(ip2bus_error_int1),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int1(ip2bus_wrack_int1),
        .\ip_irpt_enable_reg_reg[16] (Q),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg(ipif_glbl_irpt_enable_reg_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .jtaglocked_i(jtaglocked_i),
        .jtagmodified_d1(jtagmodified_d1),
        .jtagmodified_i(jtagmodified_i),
        .local_rdce_or_reduce(local_rdce_or_reduce),
        .local_reg_rdack0(local_reg_rdack0),
        .local_reg_rdack_d1(local_reg_rdack_d1),
        .local_reg_wrack0(local_reg_wrack0),
        .local_reg_wrack_d1(local_reg_wrack_d1),
        .local_reg_wrack_reg(local_reg_wrack_reg),
        .mode_change0(mode_change0),
        .out(\FSM_onehot_state_reg_n_0_[1] ),
        .p_0_out(p_0_out),
        .p_1_in(p_1_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in20_in(p_1_in20_in),
        .p_1_in23_in(p_1_in23_in),
        .p_1_in26_in(p_1_in26_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in32_in(p_1_in32_in),
        .p_1_in35_in(p_1_in35_in),
        .p_1_in38_in(p_1_in38_in),
        .p_1_in41_in(p_1_in41_in),
        .p_1_in44_in(p_1_in44_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_3_out(p_3_out),
        .p_48_out__0(p_48_out__0),
        .p_5_out(p_5_out),
        .p_7_in(p_7_in),
        .reset_trig0(reset_trig0),
        .rst_ip2bus_rdack0(rst_ip2bus_rdack0),
        .rst_ip2bus_rdack_d1(rst_ip2bus_rdack_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_araddr_4_sp_1(s_axi_araddr_4_sn_1),
        .s_axi_araddr_5_sp_1(s_axi_araddr_5_sn_1),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(s_axi_arvalid_0),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[8] (\s_axi_awaddr[8] ),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .status_reg_rdack0(status_reg_rdack0),
        .status_reg_rdack_d1(status_reg_rdack_d1),
        .\status_reg_reg[10] (\status_reg_reg[10] ),
        .sw_rst_cond(sw_rst_cond),
        .sw_rst_cond_d1(sw_rst_cond_d1),
        .wrack(wrack));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \alarm_reg[8]_i_1 
       (.I0(SR),
        .I1(\RESET_FLOPS[15].RST_FLOPS ),
        .O(reset2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \do_reg[15]_i_1 
       (.I0(SR),
        .I1(\RESET_FLOPS[15].RST_FLOPS ),
        .I2(jtaglocked_i),
        .O(\do_reg_reg[15] ));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(rst_i_1_n_0));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_i_1_n_0),
        .Q(SR),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack),
        .I1(timeout),
        .O(s_axi_arready));
  LUT4 #(
    .INIT(16'h00E2)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(s_axi_bresp),
        .I1(s_axi_bresp_i),
        .I2(ip2bus_error),
        .I3(SR),
        .O(\s_axi_bresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA8FFA8A8)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_bresp_i),
        .I1(ip2bus_wrack),
        .I2(timeout),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0] [9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(ip2bus_error),
        .Q(s_axi_rresp),
        .R(SR));
  LUT5 #(
    .INIT(32'hA8FFA8A8)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_rresp_i),
        .I1(ip2bus_rdack),
        .I2(timeout),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack),
        .I1(timeout),
        .O(s_axi_awready));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_soft_reset
   (sw_rst_cond_d1,
    wrack,
    FF_WRACK_0,
    data_is_non_reset_match__3,
    bus2ip_reset_active_high,
    sw_rst_cond,
    s_axi_aclk,
    reset_trig0,
    s_axi_arvalid,
    s_axi_wstrb,
    s_axi_wdata);
  output sw_rst_cond_d1;
  output wrack;
  output FF_WRACK_0;
  output data_is_non_reset_match__3;
  input bus2ip_reset_active_high;
  input sw_rst_cond;
  input s_axi_aclk;
  input reset_trig0;
  input s_axi_arvalid;
  input [0:0]s_axi_wstrb;
  input [3:0]s_axi_wdata;

  wire FF_WRACK_0;
  wire FF_WRACK_i_1_n_0;
  wire \RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ;
  wire \RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ;
  wire S;
  wire bus2ip_reset_active_high;
  wire data_is_non_reset_match__3;
  wire [1:15]flop_q_chain;
  wire reset_trig0;
  wire s_axi_aclk;
  wire s_axi_arvalid;
  wire [3:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire sw_rst_cond;
  wire sw_rst_cond_d1;
  wire wrack;

  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    FF_WRACK
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(FF_WRACK_i_1_n_0),
        .Q(wrack),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    FF_WRACK_i_1
       (.I0(FF_WRACK_0),
        .I1(flop_q_chain[15]),
        .O(FF_WRACK_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF1FFFFFFFFFFFF)) 
    \INTR_CTRLR_GEN_I.ip2bus_error_i_3 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wstrb),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_wdata[0]),
        .I4(s_axi_wdata[1]),
        .I5(s_axi_wdata[3]),
        .O(data_is_non_reset_match__3));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[0].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(S),
        .Q(flop_q_chain[1]),
        .R(bus2ip_reset_active_high));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[10].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[11]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[10].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[10]),
        .O(\RESET_FLOPS[10].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[11].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[12]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[11].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[11]),
        .O(\RESET_FLOPS[11].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[12].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[13]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[12].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[12]),
        .O(\RESET_FLOPS[12].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[13].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[14]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[13].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[13]),
        .O(\RESET_FLOPS[13].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[14].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[15]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[14].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[14]),
        .O(\RESET_FLOPS[14].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[15].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ),
        .Q(FF_WRACK_0),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[15].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[15]),
        .O(\RESET_FLOPS[15].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[1].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[2]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[1].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[1]),
        .O(\RESET_FLOPS[1].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[2].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[3]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[2].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[2]),
        .O(\RESET_FLOPS[2].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[3].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[4]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[3].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[3]),
        .O(\RESET_FLOPS[3].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[4].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[5]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[4].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[4]),
        .O(\RESET_FLOPS[4].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[5].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[6]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[5].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[5]),
        .O(\RESET_FLOPS[5].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[6].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[7]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[6].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[6]),
        .O(\RESET_FLOPS[6].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[7].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[8]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[7].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[7]),
        .O(\RESET_FLOPS[7].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[8].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[9]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[8].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[8]),
        .O(\RESET_FLOPS[8].RST_FLOPS_i_1_n_0 ));
  (* IS_CE_INVERTED = "1'b0" *) 
  (* IS_S_INVERTED = "1'b0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \RESET_FLOPS[9].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ),
        .Q(flop_q_chain[10]),
        .R(bus2ip_reset_active_high));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESET_FLOPS[9].RST_FLOPS_i_1 
       (.I0(S),
        .I1(flop_q_chain[9]),
        .O(\RESET_FLOPS[9].RST_FLOPS_i_1_n_0 ));
  FDRE reset_trig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_trig0),
        .Q(S),
        .R(bus2ip_reset_active_high));
  FDRE sw_rst_cond_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sw_rst_cond),
        .Q(sw_rst_cond_d1),
        .R(bus2ip_reset_active_high));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xadc_wiz_0_0_xadc_core_drp
   (m_axis_tdata,
    m_axis_tid,
    D,
    eoc_out,
    eos_out,
    jtagmodified_i,
    \alarm_reg_reg[7]_0 ,
    local_reg_wrack_d1,
    local_reg_rdack_d1,
    status_reg_rdack_d1,
    jtagmodified_d1,
    hard_macro_rst_reg,
    den_B,
    \daddr_C_reg_reg[6] ,
    mode_change_reg_0,
    mode_change_reg_1,
    \INTR_CTRLR_GEN_I.ip2bus_wrack_reg ,
    ip2bus_rdack_int1,
    p_0_out,
    m_axis_tvalid,
    interrupt_status_i,
    Q,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ,
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] ,
    s_axis_aclk,
    AR,
    s_axi_aclk,
    vn_in,
    vp_in,
    reset2ip_reset,
    convst_rst_wrce_or_reduce,
    local_reg_wrack0,
    bus2ip_wrce,
    local_rdce_or_reduce,
    local_reg_rdack0,
    bus2ip_rdce,
    status_reg_rdack0,
    p_7_in,
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ,
    Bus_RNW_reg,
    s_axi_wdata,
    \s_axi_awaddr[6] ,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_awaddr,
    dummy_intr_reg_wrack,
    dummy_local_reg_wrack,
    dummy_intr_reg_rdack,
    intr_ip2bus_rdack,
    rst_ip2bus_rdack,
    dummy_local_reg_rdack,
    mode_change0,
    m_axis_tready,
    bus2ip_reset_active_high,
    \RESET_FLOPS[15].RST_FLOPS ,
    SR);
  output [15:0]m_axis_tdata;
  output [4:0]m_axis_tid;
  output [6:0]D;
  output eoc_out;
  output eos_out;
  output jtagmodified_i;
  output [7:0]\alarm_reg_reg[7]_0 ;
  output local_reg_wrack_d1;
  output local_reg_rdack_d1;
  output status_reg_rdack_d1;
  output jtagmodified_d1;
  output hard_macro_rst_reg;
  output den_B;
  output [0:0]\daddr_C_reg_reg[6] ;
  output mode_change_reg_0;
  output mode_change_reg_1;
  output \INTR_CTRLR_GEN_I.ip2bus_wrack_reg ;
  output ip2bus_rdack_int1;
  output p_0_out;
  output m_axis_tvalid;
  output [1:0]interrupt_status_i;
  output [8:0]Q;
  output [15:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ;
  output [10:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] ;
  input s_axis_aclk;
  input [0:0]AR;
  input s_axi_aclk;
  input vn_in;
  input vp_in;
  input reset2ip_reset;
  input convst_rst_wrce_or_reduce;
  input local_reg_wrack0;
  input [0:0]bus2ip_wrce;
  input local_rdce_or_reduce;
  input local_reg_rdack0;
  input [1:0]bus2ip_rdce;
  input status_reg_rdack0;
  input p_7_in;
  input \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ;
  input \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  input \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ;
  input Bus_RNW_reg;
  input [15:0]s_axi_wdata;
  input [2:0]\s_axi_awaddr[6] ;
  input [6:0]s_axi_araddr;
  input s_axi_arvalid;
  input [6:0]s_axi_awaddr;
  input dummy_intr_reg_wrack;
  input dummy_local_reg_wrack;
  input dummy_intr_reg_rdack;
  input intr_ip2bus_rdack;
  input rst_ip2bus_rdack;
  input dummy_local_reg_rdack;
  input mode_change0;
  input m_axis_tready;
  input bus2ip_reset_active_high;
  input \RESET_FLOPS[15].RST_FLOPS ;
  input [0:0]SR;

  wire [0:0]AR;
  wire Bus_RNW_reg;
  wire [6:0]D;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire [15:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] ;
  wire [10:0]\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] ;
  wire \INTR_CTRLR_GEN_I.ip2bus_rdack_i_2_n_0 ;
  wire \INTR_CTRLR_GEN_I.ip2bus_wrack_reg ;
  wire Inst_drp_arbiter_n_0;
  wire Inst_drp_arbiter_n_1;
  wire Inst_drp_arbiter_n_12;
  wire Inst_drp_arbiter_n_4;
  wire Inst_drp_arbiter_n_5;
  wire Inst_drp_arbiter_n_8;
  wire Inst_drp_arbiter_n_9;
  wire [8:0]Q;
  wire \RESET_FLOPS[15].RST_FLOPS ;
  wire [0:0]SR;
  wire XADC_INST_n_34;
  wire alarm_0_d1;
  wire [7:0]\alarm_reg_reg[7]_0 ;
  wire axi4_stream_inst_n_27;
  wire axi4_stream_inst_n_30;
  wire axi4_stream_inst_n_31;
  wire axi4_stream_inst_n_33;
  wire axi4_stream_inst_n_34;
  wire axi4_stream_inst_n_35;
  wire axi4_stream_inst_n_36;
  wire bbusy_A;
  wire [1:0]bus2ip_rdce;
  wire bus2ip_reset_active_high;
  wire [0:0]bus2ip_wrce;
  wire convst_rst_wrce_or_reduce;
  wire [6:0]daddr_A;
  wire [6:0]daddr_C;
  wire [0:0]\daddr_C_reg_reg[6] ;
  wire den_A;
  wire den_B;
  wire den_C;
  wire den_d1;
  wire den_reg;
  wire [15:0]di_C;
  wire [15:0]do_B_reg;
  wire [15:0]do_C;
  wire [15:0]do_i;
  wire drdy_C;
  wire drdy_i;
  wire drdy_rd_ack_i;
  wire drdy_rd_ack_i_d1;
  wire drdy_rd_ack_i_d2;
  wire drdy_wr_ack_i;
  wire drdy_wr_ack_i_d1;
  wire drdy_wr_ack_i_d2;
  wire dummy_intr_reg_rdack;
  wire dummy_intr_reg_wrack;
  wire dummy_local_reg_rdack;
  wire dummy_local_reg_wrack;
  wire dwe_C;
  wire dwe_d1;
  wire eoc_d1;
  wire eoc_d1_i_1_n_0;
  wire eoc_out;
  wire eos_d1;
  wire eos_d1_i_1_n_0;
  wire eos_out;
  wire hard_macro_rst_reg;
  wire [1:0]interrupt_status_i;
  wire intr_ip2bus_rdack;
  wire ip2bus_rdack_int1;
  wire jtag_modified_info;
  wire jtagbusy_i;
  wire jtagmodified_d1;
  wire jtagmodified_d1_i_1_n_0;
  wire jtagmodified_i;
  wire local_rdce_or_reduce;
  wire local_reg_rdack;
  wire local_reg_rdack0;
  wire local_reg_rdack_d1;
  wire local_reg_wrack;
  wire local_reg_wrack0;
  wire local_reg_wrack_d1;
  wire [15:0]m_axis_tdata;
  wire [4:0]m_axis_tid;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire mode_change;
  wire mode_change0;
  wire mode_change_reg_0;
  wire mode_change_reg_1;
  wire ot_d1;
  wire p_0_out;
  wire [6:5]p_4_out;
  wire p_7_in;
  wire reset2ip_reset;
  wire rst_ip2bus_rdack;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire [2:0]\s_axi_awaddr[6] ;
  wire [15:0]s_axi_wdata;
  wire s_axis_aclk;
  wire status_reg_rdack;
  wire status_reg_rdack0;
  wire status_reg_rdack_d1;
  wire vn_in;
  wire vp_in;
  wire wren_fifo;
  wire [4:0]NLW_XADC_INST_MUXADDR_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_i_1 
       (.I0(ot_d1),
        .I1(\alarm_reg_reg[7]_0 [0]),
        .O(interrupt_status_i[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_i_1 
       (.I0(alarm_0_d1),
        .I1(\alarm_reg_reg[7]_0 [1]),
        .O(interrupt_status_i[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \INTR_CTRLR_GEN_I.ip2bus_error_i_4 
       (.I0(local_reg_wrack),
        .I1(status_reg_rdack),
        .I2(local_reg_rdack),
        .I3(drdy_wr_ack_i),
        .I4(drdy_rd_ack_i),
        .O(p_0_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \INTR_CTRLR_GEN_I.ip2bus_rdack_i_1 
       (.I0(dummy_intr_reg_rdack),
        .I1(drdy_rd_ack_i),
        .I2(\INTR_CTRLR_GEN_I.ip2bus_rdack_i_2_n_0 ),
        .I3(intr_ip2bus_rdack),
        .I4(rst_ip2bus_rdack),
        .I5(dummy_local_reg_rdack),
        .O(ip2bus_rdack_int1));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \INTR_CTRLR_GEN_I.ip2bus_rdack_i_2 
       (.I0(status_reg_rdack),
        .I1(local_reg_rdack),
        .O(\INTR_CTRLR_GEN_I.ip2bus_rdack_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \INTR_CTRLR_GEN_I.ip2bus_wrack_i_2 
       (.I0(local_reg_wrack),
        .I1(drdy_wr_ack_i),
        .I2(dummy_intr_reg_wrack),
        .I3(dummy_local_reg_wrack),
        .O(\INTR_CTRLR_GEN_I.ip2bus_wrack_reg ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_drp_arbiter Inst_drp_arbiter
       (.AR(AR),
        .Bus_RNW_reg(Bus_RNW_reg),
        .DO(do_C),
        .\FSM_sequential_state_reg[1]_0 (Inst_drp_arbiter_n_12),
        .\FSM_sequential_state_reg[2] (axi4_stream_inst_n_27),
        .\FSM_sequential_state_reg[3] (do_i),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] (\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 (\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .Q({daddr_A[6],daddr_A[4:0]}),
        .bbusy_A(bbusy_A),
        .busy_o_reg(axi4_stream_inst_n_34),
        .busy_o_reg_0(axi4_stream_inst_n_35),
        .busy_o_reg_1(axi4_stream_inst_n_33),
        .\daddr_C_reg_reg[6]_0 (\daddr_C_reg_reg[6] ),
        .den_A(den_A),
        .den_C(den_C),
        .den_C_reg_reg_0(D[6]),
        .den_d1(den_d1),
        .den_o_reg(axi4_stream_inst_n_31),
        .den_reg(den_reg),
        .den_reg_reg_0(den_B),
        .\do_reg_reg[15] (do_B_reg),
        .drdy_C(drdy_C),
        .drdy_i(drdy_i),
        .drdy_rd_ack_i_d1(drdy_rd_ack_i_d1),
        .drdy_rd_ack_i_d2(drdy_rd_ack_i_d2),
        .drdy_rd_ack_i_reg(Inst_drp_arbiter_n_9),
        .drdy_wr_ack_i_d1(drdy_wr_ack_i_d1),
        .drdy_wr_ack_i_d2(drdy_wr_ack_i_d2),
        .drdy_wr_ack_i_reg(Inst_drp_arbiter_n_8),
        .dwe_C(dwe_C),
        .dwe_d1(dwe_d1),
        .mode_change(mode_change),
        .out({Inst_drp_arbiter_n_0,Inst_drp_arbiter_n_1}),
        .overlap_A_reg_0(Inst_drp_arbiter_n_4),
        .overlap_B_reg_0(Inst_drp_arbiter_n_5),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[6] (\s_axi_awaddr[6] ),
        .s_axi_wdata(s_axi_wdata),
        .\status_reg_reg[7] (daddr_C),
        .\status_reg_reg[7]_0 (di_C),
        .valid_data_wren_reg(axi4_stream_inst_n_30),
        .wren_fifo(wren_fifo));
  (* box_type = "PRIMITIVE" *) 
  XADC #(
    .INIT_40(16'h0003),
    .INIT_41(16'h31AF),
    .INIT_42(16'h0400),
    .INIT_43(16'h0000),
    .INIT_44(16'h0000),
    .INIT_45(16'h0000),
    .INIT_46(16'h0000),
    .INIT_47(16'h0000),
    .INIT_48(16'h0100),
    .INIT_49(16'h0000),
    .INIT_4A(16'h0000),
    .INIT_4B(16'h0000),
    .INIT_4C(16'h0000),
    .INIT_4D(16'h0000),
    .INIT_4E(16'h0000),
    .INIT_4F(16'h0000),
    .INIT_50(16'hB5ED),
    .INIT_51(16'h57E4),
    .INIT_52(16'hA147),
    .INIT_53(16'hCA33),
    .INIT_54(16'hA93A),
    .INIT_55(16'h52C6),
    .INIT_56(16'h9555),
    .INIT_57(16'hAE4E),
    .INIT_58(16'h5999),
    .INIT_59(16'h5555),
    .INIT_5A(16'h9999),
    .INIT_5B(16'h6AAA),
    .INIT_5C(16'h5111),
    .INIT_5D(16'h5111),
    .INIT_5E(16'h91EB),
    .INIT_5F(16'h6666),
    .IS_CONVSTCLK_INVERTED(1'b0),
    .IS_DCLK_INVERTED(1'b0),
    .SIM_DEVICE("ZYNQ"),
    .SIM_MONITOR_FILE("design.txt")) 
    XADC_INST
       (.ALM({XADC_INST_n_34,\alarm_reg_reg[7]_0 [7:1]}),
        .BUSY(D[5]),
        .CHANNEL(D[4:0]),
        .CONVST(1'b0),
        .CONVSTCLK(1'b0),
        .DADDR(daddr_C),
        .DCLK(s_axi_aclk),
        .DEN(den_C),
        .DI(di_C),
        .DO(do_C),
        .DRDY(drdy_C),
        .DWE(dwe_C),
        .EOC(eoc_out),
        .EOS(eos_out),
        .JTAGBUSY(jtagbusy_i),
        .JTAGLOCKED(D[6]),
        .JTAGMODIFIED(jtagmodified_i),
        .MUXADDR(NLW_XADC_INST_MUXADDR_UNCONNECTED[4:0]),
        .OT(\alarm_reg_reg[7]_0 [0]),
        .RESET(AR),
        .VAUXN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VAUXP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VN(vn_in),
        .VP(vp_in));
  FDRE alarm_0_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[7]_0 [1]),
        .Q(alarm_0_d1),
        .R(1'b0));
  FDRE \alarm_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[7]_0 [0]),
        .Q(Q[0]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[7]_0 [1]),
        .Q(Q[1]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[7]_0 [2]),
        .Q(Q[2]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[7]_0 [3]),
        .Q(Q[3]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[7]_0 [4]),
        .Q(Q[4]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[7]_0 [5]),
        .Q(Q[5]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[7]_0 [6]),
        .Q(Q[6]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[7]_0 [7]),
        .Q(Q[7]),
        .R(reset2ip_reset));
  FDRE \alarm_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(XADC_INST_n_34),
        .Q(Q[8]),
        .R(reset2ip_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_drp_to_axi4stream axi4_stream_inst
       (.AR(AR),
        .D(D[4:0]),
        .\FSM_sequential_state_reg[1]_0 (axi4_stream_inst_n_33),
        .\FSM_sequential_state_reg[1]_1 (axi4_stream_inst_n_34),
        .\FSM_sequential_state_reg[1]_2 ({Inst_drp_arbiter_n_0,Inst_drp_arbiter_n_1}),
        .\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] (den_B),
        .Q({daddr_A[6],daddr_A[4:0]}),
        .bbusy_A(bbusy_A),
        .den_A(den_A),
        .den_C_reg_reg(axi4_stream_inst_n_31),
        .den_C_reg_reg_0(eoc_out),
        .den_reg(den_reg),
        .\do_A_reg_reg[15] (do_i),
        .drdy_C(drdy_C),
        .drdy_i(drdy_i),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .mode_change(mode_change),
        .mode_change0(mode_change0),
        .mode_change_reg(axi4_stream_inst_n_36),
        .mode_change_reg_0(Inst_drp_arbiter_n_12),
        .out(axi4_stream_inst_n_27),
        .overlap_A_reg(Inst_drp_arbiter_n_4),
        .overlap_B_reg(axi4_stream_inst_n_35),
        .overlap_B_reg_0(Inst_drp_arbiter_n_5),
        .s_axi_aclk(s_axi_aclk),
        .s_axis_aclk(s_axis_aclk),
        .valid_data_wren_reg_0(axi4_stream_inst_n_30),
        .wren_fifo(wren_fifo));
  FDRE den_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_7_in),
        .Q(den_d1),
        .R(1'b0));
  FDRE \do_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[0]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [0]),
        .R(SR));
  FDRE \do_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[10]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [10]),
        .R(SR));
  FDRE \do_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[11]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [11]),
        .R(SR));
  FDRE \do_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[12]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [12]),
        .R(SR));
  FDRE \do_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[13]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [13]),
        .R(SR));
  FDRE \do_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[14]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [14]),
        .R(SR));
  FDRE \do_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[15]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [15]),
        .R(SR));
  FDRE \do_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[1]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [1]),
        .R(SR));
  FDRE \do_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[2]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [2]),
        .R(SR));
  FDRE \do_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[3]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [3]),
        .R(SR));
  FDRE \do_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[4]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [4]),
        .R(SR));
  FDRE \do_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[5]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [5]),
        .R(SR));
  FDRE \do_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[6]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [6]),
        .R(SR));
  FDRE \do_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[7]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [7]),
        .R(SR));
  FDRE \do_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[8]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [8]),
        .R(SR));
  FDRE \do_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(do_B_reg[9]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16] [9]),
        .R(SR));
  FDRE drdy_rd_ack_i_d1_reg
       (.C(s_axi_aclk),
        .CE(D[6]),
        .D(bus2ip_rdce[0]),
        .Q(drdy_rd_ack_i_d1),
        .R(reset2ip_reset));
  FDRE drdy_rd_ack_i_d2_reg
       (.C(s_axi_aclk),
        .CE(D[6]),
        .D(drdy_rd_ack_i_d1),
        .Q(drdy_rd_ack_i_d2),
        .R(reset2ip_reset));
  FDRE drdy_rd_ack_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Inst_drp_arbiter_n_9),
        .Q(drdy_rd_ack_i),
        .R(reset2ip_reset));
  FDRE drdy_wr_ack_i_d1_reg
       (.C(s_axi_aclk),
        .CE(D[6]),
        .D(bus2ip_wrce),
        .Q(drdy_wr_ack_i_d1),
        .R(reset2ip_reset));
  FDRE drdy_wr_ack_i_d2_reg
       (.C(s_axi_aclk),
        .CE(D[6]),
        .D(drdy_wr_ack_i_d1),
        .Q(drdy_wr_ack_i_d2),
        .R(reset2ip_reset));
  FDRE drdy_wr_ack_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Inst_drp_arbiter_n_8),
        .Q(drdy_wr_ack_i),
        .R(reset2ip_reset));
  FDRE dwe_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .Q(dwe_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    eoc_d1_i_1
       (.I0(eoc_out),
        .I1(status_reg_rdack),
        .I2(eoc_d1),
        .O(eoc_d1_i_1_n_0));
  FDRE eoc_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eoc_d1_i_1_n_0),
        .Q(eoc_d1),
        .R(reset2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    eos_d1_i_1
       (.I0(eos_out),
        .I1(status_reg_rdack),
        .I2(eos_d1),
        .O(eos_d1_i_1_n_0));
  FDRE eos_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eos_d1_i_1_n_0),
        .Q(eos_d1),
        .R(reset2ip_reset));
  FDRE hard_macro_rst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .Q(hard_macro_rst_reg),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h01010100)) 
    jtagmodified_d1_i_1
       (.I0(bus2ip_reset_active_high),
        .I1(\RESET_FLOPS[15].RST_FLOPS ),
        .I2(drdy_rd_ack_i),
        .I3(jtagmodified_i),
        .I4(jtagmodified_d1),
        .O(jtagmodified_d1_i_1_n_0));
  FDRE jtagmodified_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(jtagmodified_d1_i_1_n_0),
        .Q(jtagmodified_d1),
        .R(1'b0));
  FDRE local_reg_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(local_rdce_or_reduce),
        .Q(local_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE local_reg_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(local_reg_rdack0),
        .Q(local_reg_rdack),
        .R(reset2ip_reset));
  FDRE local_reg_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(convst_rst_wrce_or_reduce),
        .Q(local_reg_wrack_d1),
        .R(reset2ip_reset));
  FDRE local_reg_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(local_reg_wrack0),
        .Q(local_reg_wrack),
        .R(reset2ip_reset));
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    mode_change_i_3
       (.I0(s_axi_awaddr[6]),
        .I1(s_axi_araddr[6]),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[3]),
        .O(mode_change_reg_1));
  LUT5 #(
    .INIT(32'h00053305)) 
    mode_change_i_4
       (.I0(s_axi_awaddr[5]),
        .I1(s_axi_araddr[5]),
        .I2(s_axi_awaddr[2]),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[2]),
        .O(mode_change_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    mode_change_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(axi4_stream_inst_n_36),
        .Q(mode_change));
  FDRE ot_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\alarm_reg_reg[7]_0 [0]),
        .Q(ot_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \status_reg[5]_i_1 
       (.I0(eoc_d1),
        .I1(eoc_out),
        .O(p_4_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \status_reg[6]_i_1 
       (.I0(eos_d1),
        .I1(eos_out),
        .O(p_4_out[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \status_reg[9]_i_1 
       (.I0(jtagmodified_i),
        .I1(jtagmodified_d1),
        .O(jtag_modified_info));
  FDRE status_reg_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce[1]),
        .Q(status_reg_rdack_d1),
        .R(reset2ip_reset));
  FDRE status_reg_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(status_reg_rdack0),
        .Q(status_reg_rdack),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] [0]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(jtagbusy_i),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] [10]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] [1]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] [2]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] [3]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] [4]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_4_out[5]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] [5]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_4_out[6]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] [6]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] [7]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] [8]),
        .R(reset2ip_reset));
  FDRE \status_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(jtag_modified_info),
        .Q(\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21] [9]),
        .R(reset2ip_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_drp_arbiter
   (out,
    den_C,
    dwe_C,
    overlap_A_reg_0,
    overlap_B_reg_0,
    drdy_i,
    wren_fifo,
    drdy_wr_ack_i_reg,
    drdy_rd_ack_i_reg,
    den_reg_reg_0,
    \daddr_C_reg_reg[6]_0 ,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[3] ,
    \status_reg_reg[7] ,
    \status_reg_reg[7]_0 ,
    \do_reg_reg[15] ,
    s_axi_aclk,
    AR,
    den_reg,
    valid_data_wren_reg,
    drdy_wr_ack_i_d1,
    drdy_wr_ack_i_d2,
    den_C_reg_reg_0,
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ,
    Bus_RNW_reg,
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ,
    dwe_d1,
    drdy_rd_ack_i_d1,
    drdy_rd_ack_i_d2,
    drdy_C,
    den_A,
    den_o_reg,
    bbusy_A,
    s_axi_wdata,
    Q,
    \s_axi_awaddr[6] ,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_awaddr,
    busy_o_reg,
    busy_o_reg_0,
    den_d1,
    mode_change,
    \FSM_sequential_state_reg[2] ,
    DO,
    busy_o_reg_1);
  output [1:0]out;
  output den_C;
  output dwe_C;
  output overlap_A_reg_0;
  output overlap_B_reg_0;
  output drdy_i;
  output wren_fifo;
  output drdy_wr_ack_i_reg;
  output drdy_rd_ack_i_reg;
  output den_reg_reg_0;
  output [0:0]\daddr_C_reg_reg[6]_0 ;
  output \FSM_sequential_state_reg[1]_0 ;
  output [15:0]\FSM_sequential_state_reg[3] ;
  output [6:0]\status_reg_reg[7] ;
  output [15:0]\status_reg_reg[7]_0 ;
  output [15:0]\do_reg_reg[15] ;
  input s_axi_aclk;
  input [0:0]AR;
  input den_reg;
  input valid_data_wren_reg;
  input drdy_wr_ack_i_d1;
  input drdy_wr_ack_i_d2;
  input den_C_reg_reg_0;
  input \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ;
  input Bus_RNW_reg;
  input \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ;
  input dwe_d1;
  input drdy_rd_ack_i_d1;
  input drdy_rd_ack_i_d2;
  input drdy_C;
  input den_A;
  input den_o_reg;
  input bbusy_A;
  input [15:0]s_axi_wdata;
  input [5:0]Q;
  input [2:0]\s_axi_awaddr[6] ;
  input [6:0]s_axi_araddr;
  input s_axi_arvalid;
  input [6:0]s_axi_awaddr;
  input busy_o_reg;
  input busy_o_reg_0;
  input den_d1;
  input mode_change;
  input [0:0]\FSM_sequential_state_reg[2] ;
  input [15:0]DO;
  input busy_o_reg_1;

  wire [0:0]AR;
  wire Bus_RNW_reg;
  wire [15:0]DO;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_state_reg[2] ;
  wire [15:0]\FSM_sequential_state_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ;
  wire [5:0]Q;
  wire bbusy_A;
  wire [3:2]bus2ip_addr;
  wire busy_o_reg;
  wire busy_o_reg_0;
  wire busy_o_reg_1;
  wire [6:0]daddr_C_reg0_in;
  wire \daddr_C_reg[6]_i_10_n_0 ;
  wire \daddr_C_reg[6]_i_11_n_0 ;
  wire \daddr_C_reg[6]_i_1_n_0 ;
  wire \daddr_C_reg[6]_i_3_n_0 ;
  wire \daddr_C_reg[6]_i_4_n_0 ;
  wire \daddr_C_reg[6]_i_5_n_0 ;
  wire \daddr_C_reg[6]_i_6_n_0 ;
  wire \daddr_C_reg[6]_i_7_n_0 ;
  wire \daddr_C_reg[6]_i_9_n_0 ;
  wire [0:0]\daddr_C_reg_reg[6]_0 ;
  wire [6:0]daddr_reg;
  wire \daddr_reg_reg_n_0_[0] ;
  wire \daddr_reg_reg_n_0_[1] ;
  wire \daddr_reg_reg_n_0_[2] ;
  wire \daddr_reg_reg_n_0_[3] ;
  wire \daddr_reg_reg_n_0_[4] ;
  wire \daddr_reg_reg_n_0_[5] ;
  wire \daddr_reg_reg_n_0_[6] ;
  wire den_A;
  wire den_C;
  wire den_C_reg;
  wire den_C_reg_i_3_n_0;
  wire den_C_reg_i_4_n_0;
  wire den_C_reg_i_5_n_0;
  wire den_C_reg_i_6_n_0;
  wire den_C_reg_reg_0;
  wire den_d1;
  wire den_o_reg;
  wire den_reg;
  wire den_reg_reg_0;
  wire den_reg_reg_n_0;
  wire [15:0]di_C_reg;
  wire [15:0]di_reg;
  wire \di_reg_reg_n_0_[0] ;
  wire \di_reg_reg_n_0_[10] ;
  wire \di_reg_reg_n_0_[11] ;
  wire \di_reg_reg_n_0_[12] ;
  wire \di_reg_reg_n_0_[13] ;
  wire \di_reg_reg_n_0_[14] ;
  wire \di_reg_reg_n_0_[15] ;
  wire \di_reg_reg_n_0_[1] ;
  wire \di_reg_reg_n_0_[2] ;
  wire \di_reg_reg_n_0_[3] ;
  wire \di_reg_reg_n_0_[4] ;
  wire \di_reg_reg_n_0_[5] ;
  wire \di_reg_reg_n_0_[6] ;
  wire \di_reg_reg_n_0_[7] ;
  wire \di_reg_reg_n_0_[8] ;
  wire \di_reg_reg_n_0_[9] ;
  wire [15:0]do_A_reg0_in;
  wire \do_A_reg[15]_i_1_n_0 ;
  wire [15:0]do_B_reg0_in;
  wire \do_B_reg[15]_i_1_n_0 ;
  wire [15:0]\do_reg_reg[15] ;
  wire drdy_A_reg;
  wire drdy_A_reg_i_1_n_0;
  wire drdy_B;
  wire drdy_B_reg_i_1_n_0;
  wire drdy_C;
  wire drdy_i;
  wire drdy_rd_ack_i_d1;
  wire drdy_rd_ack_i_d2;
  wire drdy_rd_ack_i_reg;
  wire drdy_wr_ack_i_d1;
  wire drdy_wr_ack_i_d2;
  wire drdy_wr_ack_i_reg;
  wire dwe_C;
  wire dwe_C_reg;
  wire dwe_d1;
  wire dwe_reg;
  wire dwe_reg_i_1_n_0;
  wire dwe_reg_i_3_n_0;
  wire dwe_reg_reg_n_0;
  wire mode_change;
  (* RTL_KEEP = "yes" *) wire [1:0]out;
  wire overlap_A_i_1_n_0;
  wire overlap_A_i_2_n_0;
  wire overlap_A_i_3_n_0;
  wire overlap_A_i_4_n_0;
  wire overlap_A_reg_0;
  wire overlap_B_i_1_n_0;
  wire overlap_B_i_2_n_0;
  wire overlap_B_i_3_n_0;
  wire overlap_B_i_4_n_0;
  wire overlap_B_i_5_n_0;
  wire overlap_B_reg_0;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire [2:0]\s_axi_awaddr[6] ;
  wire [15:0]s_axi_wdata;
  wire [6:0]\status_reg_reg[7] ;
  wire [15:0]\status_reg_reg[7]_0 ;
  wire valid_data_wren_reg;
  wire wren_fifo;

  LUT2 #(
    .INIT(4'h8)) 
    FIFO18E1_inst_data_i_3
       (.I0(drdy_i),
        .I1(valid_data_wren_reg),
        .O(wren_fifo));
  LUT6 #(
    .INIT(64'h0F08FFFF0F080000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(busy_o_reg),
        .I1(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I2(busy_o_reg_1),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(\FSM_sequential_state[1]_i_5_n_0 ),
        .I5(out[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_2__0 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\FSM_sequential_state[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0E00)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(den_A),
        .I1(overlap_A_reg_0),
        .I2(out[0]),
        .I3(out[1]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF1FFFFFFF10000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(busy_o_reg),
        .I1(out[1]),
        .I2(busy_o_reg_1),
        .I3(\FSM_sequential_state[1]_i_4_n_0 ),
        .I4(\FSM_sequential_state[1]_i_5_n_0 ),
        .I5(out[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4774)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(mode_change),
        .I1(\FSM_sequential_state_reg[2] ),
        .I2(\FSM_sequential_state_reg[3] [15]),
        .I3(\FSM_sequential_state_reg[3] [14]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(den_C_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I2(den_d1),
        .I3(out[0]),
        .I4(out[1]),
        .I5(bbusy_A),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAF00AE00)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(den_A),
        .I1(den_reg_reg_0),
        .I2(bbusy_A),
        .I3(\daddr_C_reg[6]_i_4_n_0 ),
        .I4(overlap_B_reg_0),
        .I5(\FSM_sequential_state[1]_i_6_n_0 ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF00FF000404)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(bbusy_A),
        .I1(overlap_A_reg_0),
        .I2(den_C_reg_reg_0),
        .I3(drdy_C),
        .I4(out[0]),
        .I5(out[1]),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "grant_b:10,nogrant:00,grant_a:01" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(out[0]));
  (* FSM_ENCODED_STATES = "grant_b:10,nogrant:00,grant_a:01" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(out[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \daddr_C_reg[0]_i_1 
       (.I0(\daddr_C_reg[6]_i_6_n_0 ),
        .I1(\daddr_reg_reg_n_0_[0] ),
        .I2(\daddr_C_reg[6]_i_7_n_0 ),
        .I3(bus2ip_addr[2]),
        .I4(Q[0]),
        .I5(\daddr_C_reg[6]_i_9_n_0 ),
        .O(daddr_C_reg0_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \daddr_C_reg[0]_i_2 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(bus2ip_addr[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \daddr_C_reg[1]_i_1 
       (.I0(\daddr_C_reg[6]_i_6_n_0 ),
        .I1(\daddr_reg_reg_n_0_[1] ),
        .I2(\daddr_C_reg[6]_i_7_n_0 ),
        .I3(bus2ip_addr[3]),
        .I4(Q[1]),
        .I5(\daddr_C_reg[6]_i_9_n_0 ),
        .O(daddr_C_reg0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \daddr_C_reg[1]_i_2 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(bus2ip_addr[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \daddr_C_reg[2]_i_1 
       (.I0(\daddr_C_reg[6]_i_6_n_0 ),
        .I1(\daddr_reg_reg_n_0_[2] ),
        .I2(\daddr_C_reg[6]_i_7_n_0 ),
        .I3(\s_axi_awaddr[6] [0]),
        .I4(Q[2]),
        .I5(\daddr_C_reg[6]_i_9_n_0 ),
        .O(daddr_C_reg0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \daddr_C_reg[3]_i_1 
       (.I0(\daddr_C_reg[6]_i_6_n_0 ),
        .I1(\daddr_reg_reg_n_0_[3] ),
        .I2(\daddr_C_reg[6]_i_7_n_0 ),
        .I3(\s_axi_awaddr[6] [1]),
        .I4(Q[3]),
        .I5(\daddr_C_reg[6]_i_9_n_0 ),
        .O(daddr_C_reg0_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \daddr_C_reg[4]_i_1 
       (.I0(\daddr_C_reg[6]_i_6_n_0 ),
        .I1(\daddr_reg_reg_n_0_[4] ),
        .I2(\daddr_C_reg[6]_i_7_n_0 ),
        .I3(\s_axi_awaddr[6] [2]),
        .I4(Q[4]),
        .I5(\daddr_C_reg[6]_i_9_n_0 ),
        .O(daddr_C_reg0_in[4]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \daddr_C_reg[5]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[5]),
        .I3(\daddr_C_reg[6]_i_7_n_0 ),
        .I4(\daddr_reg_reg_n_0_[5] ),
        .I5(\daddr_C_reg[6]_i_6_n_0 ),
        .O(daddr_C_reg0_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAFAEAEAE)) 
    \daddr_C_reg[6]_i_1 
       (.I0(\daddr_C_reg[6]_i_3_n_0 ),
        .I1(\daddr_C_reg[6]_i_4_n_0 ),
        .I2(bbusy_A),
        .I3(overlap_B_reg_0),
        .I4(\daddr_C_reg[6]_i_5_n_0 ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\daddr_C_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00B00F00)) 
    \daddr_C_reg[6]_i_10 
       (.I0(bbusy_A),
        .I1(overlap_B_reg_0),
        .I2(drdy_C),
        .I3(out[1]),
        .I4(out[0]),
        .O(\daddr_C_reg[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \daddr_C_reg[6]_i_11 
       (.I0(overlap_A_reg_0),
        .I1(den_A),
        .O(\daddr_C_reg[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \daddr_C_reg[6]_i_2 
       (.I0(\daddr_C_reg[6]_i_6_n_0 ),
        .I1(\daddr_reg_reg_n_0_[6] ),
        .I2(\daddr_C_reg[6]_i_7_n_0 ),
        .I3(\daddr_C_reg_reg[6]_0 ),
        .I4(Q[5]),
        .I5(\daddr_C_reg[6]_i_9_n_0 ),
        .O(daddr_C_reg0_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF06170606)) 
    \daddr_C_reg[6]_i_3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(drdy_C),
        .I3(den_C_reg_reg_0),
        .I4(den_A),
        .I5(\FSM_sequential_state[1]_i_4_n_0 ),
        .O(\daddr_C_reg[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \daddr_C_reg[6]_i_4 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(den_C_reg_reg_0),
        .O(\daddr_C_reg[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \daddr_C_reg[6]_i_5 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\daddr_C_reg[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00003000AA003232)) 
    \daddr_C_reg[6]_i_6 
       (.I0(overlap_A_reg_0),
        .I1(bbusy_A),
        .I2(overlap_B_reg_0),
        .I3(drdy_C),
        .I4(out[1]),
        .I5(out[0]),
        .O(\daddr_C_reg[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \daddr_C_reg[6]_i_7 
       (.I0(\daddr_C_reg[6]_i_10_n_0 ),
        .I1(\daddr_C_reg[6]_i_11_n_0 ),
        .I2(bbusy_A),
        .I3(overlap_B_reg_0),
        .I4(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I5(den_reg_reg_0),
        .O(\daddr_C_reg[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \daddr_C_reg[6]_i_8 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[6]),
        .O(\daddr_C_reg_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h02320E32)) 
    \daddr_C_reg[6]_i_9 
       (.I0(dwe_reg_i_3_n_0),
        .I1(out[1]),
        .I2(out[0]),
        .I3(drdy_C),
        .I4(overlap_A_reg_0),
        .O(\daddr_C_reg[6]_i_9_n_0 ));
  FDCE \daddr_C_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[0]),
        .Q(\status_reg_reg[7] [0]));
  FDCE \daddr_C_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[1]),
        .Q(\status_reg_reg[7] [1]));
  FDCE \daddr_C_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[2]),
        .Q(\status_reg_reg[7] [2]));
  FDCE \daddr_C_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[3]),
        .Q(\status_reg_reg[7] [3]));
  FDCE \daddr_C_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[4]),
        .Q(\status_reg_reg[7] [4]));
  FDCE \daddr_C_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[5]),
        .Q(\status_reg_reg[7] [5]));
  FDCE \daddr_C_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(daddr_C_reg0_in[6]),
        .Q(\status_reg_reg[7] [6]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \daddr_reg[0]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .I3(Q[0]),
        .I4(out[1]),
        .I5(out[0]),
        .O(daddr_reg[0]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \daddr_reg[1]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .I3(Q[1]),
        .I4(out[1]),
        .I5(out[0]),
        .O(daddr_reg[1]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \daddr_reg[2]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .I3(Q[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(daddr_reg[2]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \daddr_reg[3]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[3]),
        .I3(Q[3]),
        .I4(out[1]),
        .I5(out[0]),
        .O(daddr_reg[3]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \daddr_reg[4]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[4]),
        .I3(Q[4]),
        .I4(out[1]),
        .I5(out[0]),
        .O(daddr_reg[4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \daddr_reg[5]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[5]),
        .I3(out[1]),
        .O(daddr_reg[5]));
  LUT6 #(
    .INIT(64'h0000B8B8FF00B8B8)) 
    \daddr_reg[6]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[6]),
        .I3(Q[5]),
        .I4(out[1]),
        .I5(out[0]),
        .O(daddr_reg[6]));
  FDCE \daddr_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[0]),
        .Q(\daddr_reg_reg_n_0_[0] ));
  FDCE \daddr_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[1]),
        .Q(\daddr_reg_reg_n_0_[1] ));
  FDCE \daddr_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[2]),
        .Q(\daddr_reg_reg_n_0_[2] ));
  FDCE \daddr_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[3]),
        .Q(\daddr_reg_reg_n_0_[3] ));
  FDCE \daddr_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[4]),
        .Q(\daddr_reg_reg_n_0_[4] ));
  FDCE \daddr_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[5]),
        .Q(\daddr_reg_reg_n_0_[5] ));
  FDCE \daddr_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(daddr_reg[6]),
        .Q(\daddr_reg_reg_n_0_[6] ));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    den_C_reg_i_1
       (.I0(den_o_reg),
        .I1(den_C_reg_i_3_n_0),
        .I2(den_reg_reg_n_0),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .I4(den_C_reg_i_4_n_0),
        .O(den_C_reg));
  LUT6 #(
    .INIT(64'hFFFF002000200020)) 
    den_C_reg_i_3
       (.I0(den_C_reg_i_5_n_0),
        .I1(bbusy_A),
        .I2(drdy_C),
        .I3(overlap_B_reg_0),
        .I4(den_A),
        .I5(den_C_reg_i_6_n_0),
        .O(den_C_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h0200020002020200)) 
    den_C_reg_i_4
       (.I0(\FSM_sequential_state[0]_i_2__0_n_0 ),
        .I1(overlap_B_reg_0),
        .I2(overlap_A_reg_0),
        .I3(den_A),
        .I4(den_reg_reg_0),
        .I5(bbusy_A),
        .O(den_C_reg_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000400)) 
    den_C_reg_i_5
       (.I0(out[1]),
        .I1(out[0]),
        .I2(den_d1),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I4(den_C_reg_reg_0),
        .O(den_C_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'h0430)) 
    den_C_reg_i_6
       (.I0(overlap_A_reg_0),
        .I1(drdy_C),
        .I2(out[0]),
        .I3(out[1]),
        .O(den_C_reg_i_6_n_0));
  FDCE den_C_reg_reg
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(den_C_reg),
        .Q(den_C));
  FDCE den_reg_reg
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(den_reg),
        .Q(den_reg_reg_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[0] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[10]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[10] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[11]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[11] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[12]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[12] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[13]_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[13] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[14]_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[14] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[15]_i_1 
       (.I0(s_axi_wdata[15]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[15] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[1] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[2] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[3]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[3] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[4]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[4] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[5]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[5] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[6]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[6] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[7]_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[7] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[8]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[8] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \di_C_reg[9]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(\daddr_C_reg[6]_i_7_n_0 ),
        .I2(\di_reg_reg_n_0_[9] ),
        .I3(\daddr_C_reg[6]_i_6_n_0 ),
        .O(di_C_reg[9]));
  FDCE \di_C_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[0]),
        .Q(\status_reg_reg[7]_0 [0]));
  FDCE \di_C_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[10]),
        .Q(\status_reg_reg[7]_0 [10]));
  FDCE \di_C_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[11]),
        .Q(\status_reg_reg[7]_0 [11]));
  FDCE \di_C_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[12]),
        .Q(\status_reg_reg[7]_0 [12]));
  FDCE \di_C_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[13]),
        .Q(\status_reg_reg[7]_0 [13]));
  FDCE \di_C_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[14]),
        .Q(\status_reg_reg[7]_0 [14]));
  FDCE \di_C_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[15]),
        .Q(\status_reg_reg[7]_0 [15]));
  FDCE \di_C_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[1]),
        .Q(\status_reg_reg[7]_0 [1]));
  FDCE \di_C_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[2]),
        .Q(\status_reg_reg[7]_0 [2]));
  FDCE \di_C_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[3]),
        .Q(\status_reg_reg[7]_0 [3]));
  FDCE \di_C_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[4]),
        .Q(\status_reg_reg[7]_0 [4]));
  FDCE \di_C_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[5]),
        .Q(\status_reg_reg[7]_0 [5]));
  FDCE \di_C_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[6]),
        .Q(\status_reg_reg[7]_0 [6]));
  FDCE \di_C_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[7]),
        .Q(\status_reg_reg[7]_0 [7]));
  FDCE \di_C_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[8]),
        .Q(\status_reg_reg[7]_0 [8]));
  FDCE \di_C_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(di_C_reg[9]),
        .Q(\status_reg_reg[7]_0 [9]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(out[1]),
        .O(di_reg[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[10]_i_1 
       (.I0(s_axi_wdata[10]),
        .I1(out[1]),
        .O(di_reg[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[11]_i_1 
       (.I0(s_axi_wdata[11]),
        .I1(out[1]),
        .O(di_reg[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[12]_i_1 
       (.I0(s_axi_wdata[12]),
        .I1(out[1]),
        .O(di_reg[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[13]_i_1 
       (.I0(s_axi_wdata[13]),
        .I1(out[1]),
        .O(di_reg[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[14]_i_1 
       (.I0(s_axi_wdata[14]),
        .I1(out[1]),
        .O(di_reg[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[15]_i_1 
       (.I0(s_axi_wdata[15]),
        .I1(out[1]),
        .O(di_reg[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(out[1]),
        .O(di_reg[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[2]_i_1 
       (.I0(s_axi_wdata[2]),
        .I1(out[1]),
        .O(di_reg[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[3]_i_1 
       (.I0(s_axi_wdata[3]),
        .I1(out[1]),
        .O(di_reg[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[4]_i_1 
       (.I0(s_axi_wdata[4]),
        .I1(out[1]),
        .O(di_reg[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[5]_i_1 
       (.I0(s_axi_wdata[5]),
        .I1(out[1]),
        .O(di_reg[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[6]_i_1 
       (.I0(s_axi_wdata[6]),
        .I1(out[1]),
        .O(di_reg[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[7]_i_1 
       (.I0(s_axi_wdata[7]),
        .I1(out[1]),
        .O(di_reg[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[8]_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(out[1]),
        .O(di_reg[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \di_reg[9]_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(out[1]),
        .O(di_reg[9]));
  FDCE \di_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[0]),
        .Q(\di_reg_reg_n_0_[0] ));
  FDCE \di_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[10]),
        .Q(\di_reg_reg_n_0_[10] ));
  FDCE \di_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[11]),
        .Q(\di_reg_reg_n_0_[11] ));
  FDCE \di_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[12]),
        .Q(\di_reg_reg_n_0_[12] ));
  FDCE \di_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[13]),
        .Q(\di_reg_reg_n_0_[13] ));
  FDCE \di_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[14]),
        .Q(\di_reg_reg_n_0_[14] ));
  FDCE \di_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[15]),
        .Q(\di_reg_reg_n_0_[15] ));
  FDCE \di_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[1]),
        .Q(\di_reg_reg_n_0_[1] ));
  FDCE \di_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[2]),
        .Q(\di_reg_reg_n_0_[2] ));
  FDCE \di_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[3]),
        .Q(\di_reg_reg_n_0_[3] ));
  FDCE \di_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[4]),
        .Q(\di_reg_reg_n_0_[4] ));
  FDCE \di_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[5]),
        .Q(\di_reg_reg_n_0_[5] ));
  FDCE \di_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[6]),
        .Q(\di_reg_reg_n_0_[6] ));
  FDCE \di_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[7]),
        .Q(\di_reg_reg_n_0_[7] ));
  FDCE \di_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[8]),
        .Q(\di_reg_reg_n_0_[8] ));
  FDCE \di_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(di_reg[9]),
        .Q(\di_reg_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[0]_i_1 
       (.I0(out[0]),
        .I1(DO[0]),
        .O(do_A_reg0_in[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[10]_i_1 
       (.I0(out[0]),
        .I1(DO[10]),
        .O(do_A_reg0_in[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[11]_i_1 
       (.I0(out[0]),
        .I1(DO[11]),
        .O(do_A_reg0_in[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[12]_i_1 
       (.I0(out[0]),
        .I1(DO[12]),
        .O(do_A_reg0_in[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[13]_i_1 
       (.I0(out[0]),
        .I1(DO[13]),
        .O(do_A_reg0_in[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[14]_i_1 
       (.I0(out[0]),
        .I1(DO[14]),
        .O(do_A_reg0_in[14]));
  LUT3 #(
    .INIT(8'h23)) 
    \do_A_reg[15]_i_1 
       (.I0(drdy_C),
        .I1(out[1]),
        .I2(out[0]),
        .O(\do_A_reg[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[15]_i_2 
       (.I0(out[0]),
        .I1(DO[15]),
        .O(do_A_reg0_in[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[1]_i_1 
       (.I0(out[0]),
        .I1(DO[1]),
        .O(do_A_reg0_in[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[2]_i_1 
       (.I0(out[0]),
        .I1(DO[2]),
        .O(do_A_reg0_in[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[3]_i_1 
       (.I0(out[0]),
        .I1(DO[3]),
        .O(do_A_reg0_in[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[4]_i_1 
       (.I0(out[0]),
        .I1(DO[4]),
        .O(do_A_reg0_in[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[5]_i_1 
       (.I0(out[0]),
        .I1(DO[5]),
        .O(do_A_reg0_in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[6]_i_1 
       (.I0(out[0]),
        .I1(DO[6]),
        .O(do_A_reg0_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[7]_i_1 
       (.I0(out[0]),
        .I1(DO[7]),
        .O(do_A_reg0_in[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[8]_i_1 
       (.I0(out[0]),
        .I1(DO[8]),
        .O(do_A_reg0_in[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_A_reg[9]_i_1 
       (.I0(out[0]),
        .I1(DO[9]),
        .O(do_A_reg0_in[9]));
  FDCE \do_A_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[0]),
        .Q(\FSM_sequential_state_reg[3] [0]));
  FDCE \do_A_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[10]),
        .Q(\FSM_sequential_state_reg[3] [10]));
  FDCE \do_A_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[11]),
        .Q(\FSM_sequential_state_reg[3] [11]));
  FDCE \do_A_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[12]),
        .Q(\FSM_sequential_state_reg[3] [12]));
  FDCE \do_A_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[13]),
        .Q(\FSM_sequential_state_reg[3] [13]));
  FDCE \do_A_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[14]),
        .Q(\FSM_sequential_state_reg[3] [14]));
  FDCE \do_A_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[15]),
        .Q(\FSM_sequential_state_reg[3] [15]));
  FDCE \do_A_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[1]),
        .Q(\FSM_sequential_state_reg[3] [1]));
  FDCE \do_A_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[2]),
        .Q(\FSM_sequential_state_reg[3] [2]));
  FDCE \do_A_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[3]),
        .Q(\FSM_sequential_state_reg[3] [3]));
  FDCE \do_A_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[4]),
        .Q(\FSM_sequential_state_reg[3] [4]));
  FDCE \do_A_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[5]),
        .Q(\FSM_sequential_state_reg[3] [5]));
  FDCE \do_A_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[6]),
        .Q(\FSM_sequential_state_reg[3] [6]));
  FDCE \do_A_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[7]),
        .Q(\FSM_sequential_state_reg[3] [7]));
  FDCE \do_A_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[8]),
        .Q(\FSM_sequential_state_reg[3] [8]));
  FDCE \do_A_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\do_A_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_A_reg0_in[9]),
        .Q(\FSM_sequential_state_reg[3] [9]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[0]_i_1 
       (.I0(out[1]),
        .I1(DO[0]),
        .O(do_B_reg0_in[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[10]_i_1 
       (.I0(out[1]),
        .I1(DO[10]),
        .O(do_B_reg0_in[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[11]_i_1 
       (.I0(out[1]),
        .I1(DO[11]),
        .O(do_B_reg0_in[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[12]_i_1 
       (.I0(out[1]),
        .I1(DO[12]),
        .O(do_B_reg0_in[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[13]_i_1 
       (.I0(out[1]),
        .I1(DO[13]),
        .O(do_B_reg0_in[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[14]_i_1 
       (.I0(out[1]),
        .I1(DO[14]),
        .O(do_B_reg0_in[14]));
  LUT3 #(
    .INIT(8'h0B)) 
    \do_B_reg[15]_i_1 
       (.I0(drdy_C),
        .I1(out[1]),
        .I2(out[0]),
        .O(\do_B_reg[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[15]_i_2 
       (.I0(out[1]),
        .I1(DO[15]),
        .O(do_B_reg0_in[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[1]_i_1 
       (.I0(out[1]),
        .I1(DO[1]),
        .O(do_B_reg0_in[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[2]_i_1 
       (.I0(out[1]),
        .I1(DO[2]),
        .O(do_B_reg0_in[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[3]_i_1 
       (.I0(out[1]),
        .I1(DO[3]),
        .O(do_B_reg0_in[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[4]_i_1 
       (.I0(out[1]),
        .I1(DO[4]),
        .O(do_B_reg0_in[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[5]_i_1 
       (.I0(out[1]),
        .I1(DO[5]),
        .O(do_B_reg0_in[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[6]_i_1 
       (.I0(out[1]),
        .I1(DO[6]),
        .O(do_B_reg0_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[7]_i_1 
       (.I0(out[1]),
        .I1(DO[7]),
        .O(do_B_reg0_in[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[8]_i_1 
       (.I0(out[1]),
        .I1(DO[8]),
        .O(do_B_reg0_in[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \do_B_reg[9]_i_1 
       (.I0(out[1]),
        .I1(DO[9]),
        .O(do_B_reg0_in[9]));
  FDCE \do_B_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[0]),
        .Q(\do_reg_reg[15] [0]));
  FDCE \do_B_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[10]),
        .Q(\do_reg_reg[15] [10]));
  FDCE \do_B_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[11]),
        .Q(\do_reg_reg[15] [11]));
  FDCE \do_B_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[12]),
        .Q(\do_reg_reg[15] [12]));
  FDCE \do_B_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[13]),
        .Q(\do_reg_reg[15] [13]));
  FDCE \do_B_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[14]),
        .Q(\do_reg_reg[15] [14]));
  FDCE \do_B_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[15]),
        .Q(\do_reg_reg[15] [15]));
  FDCE \do_B_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[1]),
        .Q(\do_reg_reg[15] [1]));
  FDCE \do_B_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[2]),
        .Q(\do_reg_reg[15] [2]));
  FDCE \do_B_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[3]),
        .Q(\do_reg_reg[15] [3]));
  FDCE \do_B_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[4]),
        .Q(\do_reg_reg[15] [4]));
  FDCE \do_B_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[5]),
        .Q(\do_reg_reg[15] [5]));
  FDCE \do_B_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[6]),
        .Q(\do_reg_reg[15] [6]));
  FDCE \do_B_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[7]),
        .Q(\do_reg_reg[15] [7]));
  FDCE \do_B_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[8]),
        .Q(\do_reg_reg[15] [8]));
  FDCE \do_B_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\do_B_reg[15]_i_1_n_0 ),
        .CLR(AR),
        .D(do_B_reg0_in[9]),
        .Q(\do_reg_reg[15] [9]));
  LUT4 #(
    .INIT(16'hC808)) 
    drdy_A_reg_i_1
       (.I0(drdy_C),
        .I1(out[0]),
        .I2(out[1]),
        .I3(drdy_i),
        .O(drdy_A_reg_i_1_n_0));
  FDCE drdy_A_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(drdy_A_reg_i_1_n_0),
        .Q(drdy_i));
  LUT4 #(
    .INIT(16'hE020)) 
    drdy_B_reg_i_1
       (.I0(drdy_C),
        .I1(out[0]),
        .I2(out[1]),
        .I3(drdy_B),
        .O(drdy_B_reg_i_1_n_0));
  FDCE drdy_B_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(drdy_B_reg_i_1_n_0),
        .Q(drdy_B));
  LUT6 #(
    .INIT(64'h22F0220022002200)) 
    drdy_rd_ack_i_i_1
       (.I0(drdy_rd_ack_i_d1),
        .I1(drdy_rd_ack_i_d2),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I3(den_C_reg_reg_0),
        .I4(drdy_B),
        .I5(Bus_RNW_reg),
        .O(drdy_rd_ack_i_reg));
  LUT6 #(
    .INIT(64'h2200220022F02200)) 
    drdy_wr_ack_i_i_1
       (.I0(drdy_wr_ack_i_d1),
        .I1(drdy_wr_ack_i_d2),
        .I2(drdy_B),
        .I3(den_C_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I5(Bus_RNW_reg),
        .O(drdy_wr_ack_i_reg));
  LUT5 #(
    .INIT(32'hFF080808)) 
    dwe_C_reg_i_1
       (.I0(\daddr_C_reg[6]_i_7_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0 ),
        .I2(dwe_d1),
        .I3(dwe_reg_reg_n_0),
        .I4(\daddr_C_reg[6]_i_6_n_0 ),
        .O(dwe_C_reg));
  FDCE dwe_C_reg_reg
       (.C(s_axi_aclk),
        .CE(\daddr_C_reg[6]_i_1_n_0 ),
        .CLR(AR),
        .D(dwe_C_reg),
        .Q(dwe_C));
  LUT6 #(
    .INIT(64'h4444AA004444FA00)) 
    dwe_reg_i_1
       (.I0(out[0]),
        .I1(den_A),
        .I2(dwe_reg_i_3_n_0),
        .I3(den_reg_reg_0),
        .I4(out[1]),
        .I5(den_C_reg_reg_0),
        .O(dwe_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000100)) 
    dwe_reg_i_2
       (.I0(out[1]),
        .I1(dwe_d1),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I4(den_C_reg_reg_0),
        .O(dwe_reg));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    dwe_reg_i_3
       (.I0(overlap_B_reg_0),
        .I1(den_A),
        .I2(overlap_A_reg_0),
        .I3(bbusy_A),
        .O(dwe_reg_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    dwe_reg_i_4
       (.I0(den_C_reg_reg_0),
        .I1(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I2(den_d1),
        .O(den_reg_reg_0));
  FDCE dwe_reg_reg
       (.C(s_axi_aclk),
        .CE(dwe_reg_i_1_n_0),
        .CLR(AR),
        .D(dwe_reg),
        .Q(dwe_reg_reg_n_0));
  LUT6 #(
    .INIT(64'h00C8FFFF00C80000)) 
    overlap_A_i_1
       (.I0(bbusy_A),
        .I1(den_A),
        .I2(out[1]),
        .I3(out[0]),
        .I4(overlap_A_i_2_n_0),
        .I5(overlap_A_reg_0),
        .O(overlap_A_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF0A8A0A8A0)) 
    overlap_A_i_2
       (.I0(overlap_A_i_3_n_0),
        .I1(drdy_C),
        .I2(den_A),
        .I3(overlap_A_reg_0),
        .I4(den_reg_reg_0),
        .I5(overlap_A_i_4_n_0),
        .O(overlap_A_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    overlap_A_i_3
       (.I0(out[1]),
        .I1(out[0]),
        .O(overlap_A_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    overlap_A_i_4
       (.I0(bbusy_A),
        .I1(overlap_B_reg_0),
        .I2(den_C_reg_reg_0),
        .I3(out[0]),
        .I4(out[1]),
        .O(overlap_A_i_4_n_0));
  FDCE overlap_A_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(overlap_A_i_1_n_0),
        .Q(overlap_A_reg_0));
  LUT6 #(
    .INIT(64'hF0F0F0FFF4F4F400)) 
    overlap_B_i_1
       (.I0(overlap_B_i_2_n_0),
        .I1(den_A),
        .I2(overlap_B_i_3_n_0),
        .I3(overlap_B_i_4_n_0),
        .I4(overlap_B_i_5_n_0),
        .I5(overlap_B_reg_0),
        .O(overlap_B_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    overlap_B_i_2
       (.I0(out[1]),
        .I1(den_d1),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I3(den_C_reg_reg_0),
        .O(overlap_B_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000300020)) 
    overlap_B_i_3
       (.I0(bbusy_A),
        .I1(den_C_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I3(den_d1),
        .I4(out[0]),
        .I5(out[1]),
        .O(overlap_B_i_3_n_0));
  LUT6 #(
    .INIT(64'h0A000A000F010B01)) 
    overlap_B_i_4
       (.I0(out[0]),
        .I1(busy_o_reg),
        .I2(out[1]),
        .I3(den_reg_reg_0),
        .I4(busy_o_reg_0),
        .I5(den_C_reg_reg_0),
        .O(overlap_B_i_4_n_0));
  LUT6 #(
    .INIT(64'h0088008800F80088)) 
    overlap_B_i_5
       (.I0(overlap_B_reg_0),
        .I1(drdy_A_reg),
        .I2(\daddr_C_reg[6]_i_4_n_0 ),
        .I3(bbusy_A),
        .I4(den_A),
        .I5(overlap_A_reg_0),
        .O(overlap_B_i_5_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    overlap_B_i_7
       (.I0(out[1]),
        .I1(out[0]),
        .I2(drdy_C),
        .O(drdy_A_reg));
  FDCE overlap_B_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(overlap_B_i_1_n_0),
        .Q(overlap_B_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_drp_to_axi4stream
   (m_axis_tdata,
    m_axis_tid,
    Q,
    out,
    den_A,
    bbusy_A,
    valid_data_wren_reg_0,
    den_C_reg_reg,
    den_reg,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[1]_1 ,
    overlap_B_reg,
    mode_change_reg,
    m_axis_tvalid,
    s_axis_aclk,
    AR,
    s_axi_aclk,
    wren_fifo,
    \do_A_reg_reg[15] ,
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ,
    \FSM_sequential_state_reg[1]_2 ,
    drdy_C,
    overlap_A_reg,
    D,
    den_C_reg_reg_0,
    drdy_i,
    mode_change,
    mode_change_reg_0,
    overlap_B_reg_0,
    mode_change0,
    m_axis_tready);
  output [15:0]m_axis_tdata;
  output [4:0]m_axis_tid;
  output [5:0]Q;
  output [0:0]out;
  output den_A;
  output bbusy_A;
  output valid_data_wren_reg_0;
  output den_C_reg_reg;
  output den_reg;
  output \FSM_sequential_state_reg[1]_0 ;
  output \FSM_sequential_state_reg[1]_1 ;
  output overlap_B_reg;
  output mode_change_reg;
  output m_axis_tvalid;
  input s_axis_aclk;
  input [0:0]AR;
  input s_axi_aclk;
  input wren_fifo;
  input [15:0]\do_A_reg_reg[15] ;
  input \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ;
  input [1:0]\FSM_sequential_state_reg[1]_2 ;
  input drdy_C;
  input overlap_A_reg;
  input [4:0]D;
  input den_C_reg_reg_0;
  input drdy_i;
  input mode_change;
  input mode_change_reg_0;
  input overlap_B_reg_0;
  input mode_change0;
  input m_axis_tready;

  wire [0:0]AR;
  wire [4:0]D;
  wire FIFO18E1_inst_data_i_1_n_0;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire [1:0]\FSM_sequential_state_reg[1]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ;
  wire [5:0]Q;
  wire almost_full;
  wire bbusy_A;
  wire busy_o_i_1_n_0;
  wire [6:0]channel_id;
  wire \channel_id[6]_i_1_n_0 ;
  wire den_A;
  wire den_C_reg_reg;
  wire den_C_reg_reg_0;
  wire den_o_i_1_n_0;
  wire den_o_i_2_n_0;
  wire den_o_i_3_n_0;
  wire den_reg;
  wire [15:0]\do_A_reg_reg[15] ;
  wire drdy_C;
  wire drdy_i;
  wire fifo_empty;
  wire [15:0]m_axis_tdata;
  wire [4:0]m_axis_tid;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire mode_change;
  wire mode_change0;
  wire mode_change_reg;
  wire mode_change_reg_0;
  wire mode_change_sig_reset;
  wire mode_change_sig_reset_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire overlap_A_reg;
  wire overlap_B_reg;
  wire overlap_B_reg_0;
  wire s_axi_aclk;
  wire s_axis_aclk;
  (* RTL_KEEP = "yes" *) wire [3:0]state__0;
  wire valid_data_wren_i_1_n_0;
  wire valid_data_wren_reg_0;
  wire wren_fifo;
  wire NLW_FIFO18E1_inst_data_ALMOSTEMPTY_UNCONNECTED;
  wire NLW_FIFO18E1_inst_data_FULL_UNCONNECTED;
  wire NLW_FIFO18E1_inst_data_RDERR_UNCONNECTED;
  wire NLW_FIFO18E1_inst_data_WRERR_UNCONNECTED;
  wire [31:16]NLW_FIFO18E1_inst_data_DO_UNCONNECTED;
  wire [3:0]NLW_FIFO18E1_inst_data_DOP_UNCONNECTED;
  wire [11:0]NLW_FIFO18E1_inst_data_RDCOUNT_UNCONNECTED;
  wire [11:0]NLW_FIFO18E1_inst_data_WRCOUNT_UNCONNECTED;
  wire NLW_FIFO18E1_inst_tid_ALMOSTEMPTY_UNCONNECTED;
  wire NLW_FIFO18E1_inst_tid_ALMOSTFULL_UNCONNECTED;
  wire NLW_FIFO18E1_inst_tid_EMPTY_UNCONNECTED;
  wire NLW_FIFO18E1_inst_tid_FULL_UNCONNECTED;
  wire NLW_FIFO18E1_inst_tid_RDERR_UNCONNECTED;
  wire NLW_FIFO18E1_inst_tid_WRERR_UNCONNECTED;
  wire [31:5]NLW_FIFO18E1_inst_tid_DO_UNCONNECTED;
  wire [3:0]NLW_FIFO18E1_inst_tid_DOP_UNCONNECTED;
  wire [11:0]NLW_FIFO18E1_inst_tid_RDCOUNT_UNCONNECTED;
  wire [11:0]NLW_FIFO18E1_inst_tid_WRCOUNT_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  FIFO18E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0006),
    .ALMOST_FULL_OFFSET(13'h03F9),
    .DATA_WIDTH(18),
    .DO_REG(1),
    .EN_SYN("FALSE"),
    .FIFO_MODE("FIFO18"),
    .FIRST_WORD_FALL_THROUGH("TRUE"),
    .INIT(36'h000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(36'h000000000)) 
    FIFO18E1_inst_data
       (.ALMOSTEMPTY(NLW_FIFO18E1_inst_data_ALMOSTEMPTY_UNCONNECTED),
        .ALMOSTFULL(almost_full),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\do_A_reg_reg[15] }),
        .DIP({1'b0,1'b0,1'b0,1'b0}),
        .DO({NLW_FIFO18E1_inst_data_DO_UNCONNECTED[31:16],m_axis_tdata}),
        .DOP(NLW_FIFO18E1_inst_data_DOP_UNCONNECTED[3:0]),
        .EMPTY(fifo_empty),
        .FULL(NLW_FIFO18E1_inst_data_FULL_UNCONNECTED),
        .RDCLK(s_axis_aclk),
        .RDCOUNT(NLW_FIFO18E1_inst_data_RDCOUNT_UNCONNECTED[11:0]),
        .RDEN(FIFO18E1_inst_data_i_1_n_0),
        .RDERR(NLW_FIFO18E1_inst_data_RDERR_UNCONNECTED),
        .REGCE(1'b1),
        .RST(AR),
        .RSTREG(1'b0),
        .WRCLK(s_axi_aclk),
        .WRCOUNT(NLW_FIFO18E1_inst_data_WRCOUNT_UNCONNECTED[11:0]),
        .WREN(wren_fifo),
        .WRERR(NLW_FIFO18E1_inst_data_WRERR_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    FIFO18E1_inst_data_i_1
       (.I0(m_axis_tready),
        .I1(fifo_empty),
        .O(FIFO18E1_inst_data_i_1_n_0));
  (* box_type = "PRIMITIVE" *) 
  FIFO18E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0006),
    .ALMOST_FULL_OFFSET(13'h03F9),
    .DATA_WIDTH(18),
    .DO_REG(1),
    .EN_SYN("FALSE"),
    .FIFO_MODE("FIFO18"),
    .FIRST_WORD_FALL_THROUGH("TRUE"),
    .INIT(36'h000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(36'h000000000)) 
    FIFO18E1_inst_tid
       (.ALMOSTEMPTY(NLW_FIFO18E1_inst_tid_ALMOSTEMPTY_UNCONNECTED),
        .ALMOSTFULL(NLW_FIFO18E1_inst_tid_ALMOSTFULL_UNCONNECTED),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[5],1'b0,Q[4:0]}),
        .DIP({1'b0,1'b0,1'b0,1'b0}),
        .DO({NLW_FIFO18E1_inst_tid_DO_UNCONNECTED[31:5],m_axis_tid}),
        .DOP(NLW_FIFO18E1_inst_tid_DOP_UNCONNECTED[3:0]),
        .EMPTY(NLW_FIFO18E1_inst_tid_EMPTY_UNCONNECTED),
        .FULL(NLW_FIFO18E1_inst_tid_FULL_UNCONNECTED),
        .RDCLK(s_axis_aclk),
        .RDCOUNT(NLW_FIFO18E1_inst_tid_RDCOUNT_UNCONNECTED[11:0]),
        .RDEN(FIFO18E1_inst_data_i_1_n_0),
        .RDERR(NLW_FIFO18E1_inst_tid_RDERR_UNCONNECTED),
        .REGCE(1'b1),
        .RST(AR),
        .RSTREG(1'b0),
        .WRCLK(s_axi_aclk),
        .WRCOUNT(NLW_FIFO18E1_inst_tid_WRCOUNT_UNCONNECTED[11:0]),
        .WREN(wren_fifo),
        .WRERR(NLW_FIFO18E1_inst_tid_WRERR_UNCONNECTED));
  LUT6 #(
    .INIT(64'h4774FFFF00000000)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(mode_change),
        .I1(out),
        .I2(\do_A_reg_reg[15] [15]),
        .I3(\do_A_reg_reg[15] [14]),
        .I4(state__0[1]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h020C)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(mode_change_reg_0),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[1]_i_2__0 
       (.I0(bbusy_A),
        .I1(overlap_B_reg_0),
        .O(\FSM_sequential_state_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(bbusy_A),
        .I1(overlap_A_reg),
        .I2(den_A),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I4(\FSM_sequential_state_reg[1]_2 [1]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAFFEAAA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(out),
        .I5(state__0[3]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(\do_A_reg_reg[15] [15]),
        .I3(\do_A_reg_reg[15] [14]),
        .I4(out),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(D[4]),
        .I1(den_C_reg_reg_0),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEAEAEAEAEAE)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(state__0[1]),
        .I3(out),
        .I4(D[4]),
        .I5(den_C_reg_reg_0),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000010)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(out),
        .I4(\do_A_reg_reg[15] [15]),
        .I5(\do_A_reg_reg[15] [14]),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01FF000300570003)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(state__0[0]),
        .I1(out),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(drdy_i),
        .I5(mode_change),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "wait_ind_adc:0111,wait_mode_change:0000,wait_seq_s_ch:1000,rd_ctrl_reg_41:0010,rd_en_ctrl_reg_41:0001,rd_b_reg_cmd:0101,rd_a_reg:0100,rd_b_reg:0110,wait_sim_samp:0011" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "wait_ind_adc:0111,wait_mode_change:0000,wait_seq_s_ch:1000,rd_ctrl_reg_41:0010,rd_en_ctrl_reg_41:0001,rd_b_reg_cmd:0101,rd_a_reg:0100,rd_b_reg:0110,wait_sim_samp:0011" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "wait_ind_adc:0111,wait_mode_change:0000,wait_seq_s_ch:1000,rd_ctrl_reg_41:0010,rd_en_ctrl_reg_41:0001,rd_b_reg_cmd:0101,rd_a_reg:0100,rd_b_reg:0110,wait_sim_samp:0011" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(out));
  (* FSM_ENCODED_STATES = "wait_ind_adc:0111,wait_mode_change:0000,wait_seq_s_ch:1000,rd_ctrl_reg_41:0010,rd_en_ctrl_reg_41:0001,rd_b_reg_cmd:0101,rd_a_reg:0100,rd_b_reg:0110,wait_sim_samp:0011" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_state[3]_i_2_n_0 ),
        .Q(state__0[3]));
  LUT6 #(
    .INIT(64'hF5F5EEEE04000000)) 
    busy_o_i_1
       (.I0(out),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state__0[1]),
        .I5(bbusy_A),
        .O(busy_o_i_1_n_0));
  FDCE busy_o_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(busy_o_i_1_n_0),
        .Q(bbusy_A));
  LUT5 #(
    .INIT(32'h0002AAAF)) 
    \channel_id[0]_i_1 
       (.I0(D[0]),
        .I1(state__0[0]),
        .I2(out),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .O(channel_id[0]));
  LUT5 #(
    .INIT(32'h01EF0000)) 
    \channel_id[1]_i_1 
       (.I0(state__0[1]),
        .I1(out),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .I4(D[1]),
        .O(channel_id[1]));
  LUT5 #(
    .INIT(32'h01EF0000)) 
    \channel_id[2]_i_1 
       (.I0(state__0[1]),
        .I1(out),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .I4(D[2]),
        .O(channel_id[2]));
  LUT5 #(
    .INIT(32'h0F00110C)) 
    \channel_id[3]_i_1 
       (.I0(state__0[0]),
        .I1(out),
        .I2(state__0[3]),
        .I3(D[3]),
        .I4(state__0[1]),
        .O(channel_id[3]));
  LUT6 #(
    .INIT(64'h0C0C0C0C060600CC)) 
    \channel_id[4]_i_1 
       (.I0(D[3]),
        .I1(D[4]),
        .I2(state__0[3]),
        .I3(state__0[0]),
        .I4(out),
        .I5(state__0[1]),
        .O(channel_id[4]));
  LUT4 #(
    .INIT(16'h0F10)) 
    \channel_id[6]_i_1 
       (.I0(state__0[1]),
        .I1(out),
        .I2(state__0[3]),
        .I3(state__0[0]),
        .O(\channel_id[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \channel_id[6]_i_2 
       (.I0(state__0[1]),
        .I1(out),
        .I2(state__0[3]),
        .O(channel_id[6]));
  FDCE \channel_id_reg[0] 
       (.C(s_axi_aclk),
        .CE(\channel_id[6]_i_1_n_0 ),
        .CLR(AR),
        .D(channel_id[0]),
        .Q(Q[0]));
  FDCE \channel_id_reg[1] 
       (.C(s_axi_aclk),
        .CE(\channel_id[6]_i_1_n_0 ),
        .CLR(AR),
        .D(channel_id[1]),
        .Q(Q[1]));
  FDCE \channel_id_reg[2] 
       (.C(s_axi_aclk),
        .CE(\channel_id[6]_i_1_n_0 ),
        .CLR(AR),
        .D(channel_id[2]),
        .Q(Q[2]));
  FDCE \channel_id_reg[3] 
       (.C(s_axi_aclk),
        .CE(\channel_id[6]_i_1_n_0 ),
        .CLR(AR),
        .D(channel_id[3]),
        .Q(Q[3]));
  FDCE \channel_id_reg[4] 
       (.C(s_axi_aclk),
        .CE(\channel_id[6]_i_1_n_0 ),
        .CLR(AR),
        .D(channel_id[4]),
        .Q(Q[4]));
  FDCE \channel_id_reg[6] 
       (.C(s_axi_aclk),
        .CE(\channel_id[6]_i_1_n_0 ),
        .CLR(AR),
        .D(channel_id[6]),
        .Q(Q[5]));
  LUT6 #(
    .INIT(64'h0000008800F00088)) 
    den_C_reg_i_2
       (.I0(den_A),
        .I1(bbusy_A),
        .I2(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I3(\FSM_sequential_state_reg[1]_2 [0]),
        .I4(\FSM_sequential_state_reg[1]_2 [1]),
        .I5(drdy_C),
        .O(den_C_reg_reg));
  LUT6 #(
    .INIT(64'hAAEAFFFFAAEA0000)) 
    den_o_i_1
       (.I0(den_o_i_2_n_0),
        .I1(\channel_id[6]_i_1_n_0 ),
        .I2(den_C_reg_reg_0),
        .I3(almost_full),
        .I4(den_o_i_3_n_0),
        .I5(den_A),
        .O(den_o_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    den_o_i_2
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(den_o_i_2_n_0));
  LUT4 #(
    .INIT(16'h01FF)) 
    den_o_i_3
       (.I0(state__0[0]),
        .I1(out),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .O(den_o_i_3_n_0));
  FDCE den_o_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(den_o_i_1_n_0),
        .Q(den_A));
  LUT5 #(
    .INIT(32'h3B083A08)) 
    den_reg_i_1
       (.I0(den_A),
        .I1(\FSM_sequential_state_reg[1]_2 [1]),
        .I2(\FSM_sequential_state_reg[1]_2 [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] ),
        .I4(bbusy_A),
        .O(den_reg));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_INST_0
       (.I0(fifo_empty),
        .O(m_axis_tvalid));
  LUT3 #(
    .INIT(8'hBA)) 
    mode_change_i_1
       (.I0(mode_change0),
        .I1(mode_change_sig_reset),
        .I2(mode_change),
        .O(mode_change_reg));
  LUT5 #(
    .INIT(32'hFFFD0001)) 
    mode_change_sig_reset_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(out),
        .I3(state__0[3]),
        .I4(mode_change_sig_reset),
        .O(mode_change_sig_reset_i_1_n_0));
  FDCE mode_change_sig_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(mode_change_sig_reset_i_1_n_0),
        .Q(mode_change_sig_reset));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    overlap_B_i_6
       (.I0(bbusy_A),
        .I1(overlap_A_reg),
        .O(overlap_B_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFC00000020)) 
    valid_data_wren_i_1
       (.I0(drdy_i),
        .I1(out),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[0]),
        .I5(valid_data_wren_reg_0),
        .O(valid_data_wren_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_data_wren_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(valid_data_wren_i_1_n_0),
        .Q(valid_data_wren_reg_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
