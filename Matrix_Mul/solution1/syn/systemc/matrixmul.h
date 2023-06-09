// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _matrixmul_HH_
#define _matrixmul_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "matrixmul_mac_mulbkb.h"
#include "matrixmul_tmp.h"
#include "matrixmul_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 6,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct matrixmul : public sc_module {
    // Port declarations 32
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > input_A_TDATA;
    sc_in< sc_logic > input_A_TVALID;
    sc_out< sc_logic > input_A_TREADY;
    sc_in< sc_lv<8> > input_B_TDATA;
    sc_in< sc_logic > input_B_TVALID;
    sc_out< sc_logic > input_B_TREADY;
    sc_out< sc_lv<32> > AB_TDATA;
    sc_out< sc_logic > AB_TVALID;
    sc_in< sc_logic > AB_TREADY;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    matrixmul(sc_module_name name);
    SC_HAS_PROCESS(matrixmul);

    ~matrixmul();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    matrixmul_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* matrixmul_AXILiteS_s_axi_U;
    matrixmul_tmp* tmp_U;
    matrixmul_mac_mulbkb<1,1,8,8,32,32>* matrixmul_mac_mulbkb_U1;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > lm;
    sc_signal< sc_lv<32> > ln;
    sc_signal< sc_lv<32> > lp;
    sc_signal< sc_lv<8> > input_A_0_data_out;
    sc_signal< sc_logic > input_A_0_vld_in;
    sc_signal< sc_logic > input_A_0_vld_out;
    sc_signal< sc_logic > input_A_0_ack_in;
    sc_signal< sc_logic > input_A_0_ack_out;
    sc_signal< sc_lv<8> > input_A_0_payload_A;
    sc_signal< sc_lv<8> > input_A_0_payload_B;
    sc_signal< sc_logic > input_A_0_sel_rd;
    sc_signal< sc_logic > input_A_0_sel_wr;
    sc_signal< sc_logic > input_A_0_sel;
    sc_signal< sc_logic > input_A_0_load_A;
    sc_signal< sc_logic > input_A_0_load_B;
    sc_signal< sc_lv<2> > input_A_0_state;
    sc_signal< sc_logic > input_A_0_state_cmp_full;
    sc_signal< sc_lv<8> > input_B_0_data_out;
    sc_signal< sc_logic > input_B_0_vld_in;
    sc_signal< sc_logic > input_B_0_vld_out;
    sc_signal< sc_logic > input_B_0_ack_in;
    sc_signal< sc_logic > input_B_0_ack_out;
    sc_signal< sc_lv<8> > input_B_0_payload_A;
    sc_signal< sc_lv<8> > input_B_0_payload_B;
    sc_signal< sc_logic > input_B_0_sel_rd;
    sc_signal< sc_logic > input_B_0_sel_wr;
    sc_signal< sc_logic > input_B_0_sel;
    sc_signal< sc_logic > input_B_0_load_A;
    sc_signal< sc_logic > input_B_0_load_B;
    sc_signal< sc_lv<2> > input_B_0_state;
    sc_signal< sc_logic > input_B_0_state_cmp_full;
    sc_signal< sc_lv<32> > AB_1_data_in;
    sc_signal< sc_lv<32> > AB_1_data_out;
    sc_signal< sc_logic > AB_1_vld_in;
    sc_signal< sc_logic > AB_1_vld_out;
    sc_signal< sc_logic > AB_1_ack_in;
    sc_signal< sc_logic > AB_1_ack_out;
    sc_signal< sc_lv<32> > AB_1_payload_A;
    sc_signal< sc_lv<32> > AB_1_payload_B;
    sc_signal< sc_logic > AB_1_sel_rd;
    sc_signal< sc_logic > AB_1_sel_wr;
    sc_signal< sc_logic > AB_1_sel;
    sc_signal< sc_logic > AB_1_load_A;
    sc_signal< sc_logic > AB_1_load_B;
    sc_signal< sc_lv<2> > AB_1_state;
    sc_signal< sc_logic > AB_1_state_cmp_full;
    sc_signal< sc_logic > input_A_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > input_B_TDATA_blk_n;
    sc_signal< sc_logic > AB_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > exitcond3_fu_203_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > m_fu_162_p2;
    sc_signal< sc_lv<32> > m_reg_304;
    sc_signal< sc_lv<32> > n_fu_168_p2;
    sc_signal< sc_lv<32> > n_reg_309;
    sc_signal< sc_lv<32> > p_fu_174_p2;
    sc_signal< sc_lv<32> > p_reg_315;
    sc_signal< sc_lv<32> > i_2_fu_185_p2;
    sc_signal< sc_lv<32> > i_2_reg_324;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<12> > tmp_2_cast_fu_195_p3;
    sc_signal< sc_lv<12> > tmp_2_cast_reg_329;
    sc_signal< sc_lv<1> > exitcond4_fu_180_p2;
    sc_signal< sc_lv<32> > j_2_fu_208_p2;
    sc_signal< sc_lv<32> > j_2_reg_337;
    sc_signal< bool > ap_block_state3_io;
    sc_signal< sc_lv<32> > i_3_fu_233_p2;
    sc_signal< sc_lv<32> > i_3_reg_345;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<12> > tmp_8_cast_fu_243_p3;
    sc_signal< sc_lv<12> > tmp_8_cast_reg_350;
    sc_signal< sc_lv<1> > exitcond2_fu_228_p2;
    sc_signal< sc_lv<32> > j_3_fu_256_p2;
    sc_signal< sc_lv<32> > j_3_reg_358;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<10> > tmp_addr_1_reg_363;
    sc_signal< sc_lv<1> > exitcond1_fu_251_p2;
    sc_signal< sc_lv<32> > k_1_fu_281_p2;
    sc_signal< sc_lv<32> > k_1_reg_371;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > grp_fu_295_p3;
    sc_signal< sc_lv<32> > tmp_6_reg_376;
    sc_signal< bool > ap_block_state8;
    sc_signal< sc_lv<10> > tmp_address0;
    sc_signal< sc_logic > tmp_ce0;
    sc_signal< sc_logic > tmp_we0;
    sc_signal< sc_lv<32> > tmp_d0;
    sc_signal< sc_lv<32> > tmp_q0;
    sc_signal< sc_lv<32> > i_reg_107;
    sc_signal< sc_lv<32> > j_reg_118;
    sc_signal< sc_lv<32> > i_1_reg_129;
    sc_signal< sc_lv<32> > j_1_reg_140;
    sc_signal< sc_lv<1> > exitcond_fu_276_p2;
    sc_signal< sc_lv<32> > k_reg_151;
    sc_signal< sc_lv<64> > tmp_9_cast_fu_223_p1;
    sc_signal< sc_lv<64> > tmp_10_cast_fu_271_p1;
    sc_signal< sc_lv<7> > tmp_1_fu_191_p1;
    sc_signal< sc_lv<12> > tmp_3_fu_214_p1;
    sc_signal< sc_lv<12> > tmp_9_fu_218_p2;
    sc_signal< sc_lv<7> > tmp_2_fu_239_p1;
    sc_signal< sc_lv<12> > tmp_4_fu_262_p1;
    sc_signal< sc_lv<12> > tmp_s_fu_266_p2;
    sc_signal< sc_lv<8> > grp_fu_295_p0;
    sc_signal< sc_lv<8> > grp_fu_295_p1;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    sc_signal< sc_lv<16> > grp_fu_295_p00;
    sc_signal< sc_lv<16> > grp_fu_295_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_8;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<5> ap_const_lv5_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_AB_1_ack_in();
    void thread_AB_1_ack_out();
    void thread_AB_1_data_in();
    void thread_AB_1_data_out();
    void thread_AB_1_load_A();
    void thread_AB_1_load_B();
    void thread_AB_1_sel();
    void thread_AB_1_state_cmp_full();
    void thread_AB_1_vld_in();
    void thread_AB_1_vld_out();
    void thread_AB_TDATA();
    void thread_AB_TDATA_blk_n();
    void thread_AB_TVALID();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state3_io();
    void thread_ap_block_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_exitcond1_fu_251_p2();
    void thread_exitcond2_fu_228_p2();
    void thread_exitcond3_fu_203_p2();
    void thread_exitcond4_fu_180_p2();
    void thread_exitcond_fu_276_p2();
    void thread_grp_fu_295_p0();
    void thread_grp_fu_295_p00();
    void thread_grp_fu_295_p1();
    void thread_grp_fu_295_p10();
    void thread_i_2_fu_185_p2();
    void thread_i_3_fu_233_p2();
    void thread_input_A_0_ack_in();
    void thread_input_A_0_ack_out();
    void thread_input_A_0_data_out();
    void thread_input_A_0_load_A();
    void thread_input_A_0_load_B();
    void thread_input_A_0_sel();
    void thread_input_A_0_state_cmp_full();
    void thread_input_A_0_vld_in();
    void thread_input_A_0_vld_out();
    void thread_input_A_TDATA_blk_n();
    void thread_input_A_TREADY();
    void thread_input_B_0_ack_in();
    void thread_input_B_0_ack_out();
    void thread_input_B_0_data_out();
    void thread_input_B_0_load_A();
    void thread_input_B_0_load_B();
    void thread_input_B_0_sel();
    void thread_input_B_0_state_cmp_full();
    void thread_input_B_0_vld_in();
    void thread_input_B_0_vld_out();
    void thread_input_B_TDATA_blk_n();
    void thread_input_B_TREADY();
    void thread_j_2_fu_208_p2();
    void thread_j_3_fu_256_p2();
    void thread_k_1_fu_281_p2();
    void thread_m_fu_162_p2();
    void thread_n_fu_168_p2();
    void thread_p_fu_174_p2();
    void thread_tmp_10_cast_fu_271_p1();
    void thread_tmp_1_fu_191_p1();
    void thread_tmp_2_cast_fu_195_p3();
    void thread_tmp_2_fu_239_p1();
    void thread_tmp_3_fu_214_p1();
    void thread_tmp_4_fu_262_p1();
    void thread_tmp_8_cast_fu_243_p3();
    void thread_tmp_9_cast_fu_223_p1();
    void thread_tmp_9_fu_218_p2();
    void thread_tmp_address0();
    void thread_tmp_ce0();
    void thread_tmp_d0();
    void thread_tmp_s_fu_266_p2();
    void thread_tmp_we0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
