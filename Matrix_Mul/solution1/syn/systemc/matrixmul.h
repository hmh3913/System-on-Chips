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
#include "matrixmul_A.h"

namespace ap_rtl {

struct matrixmul : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > lm;
    sc_in< sc_lv<32> > ln;
    sc_in< sc_lv<32> > lp;
    sc_out< sc_lv<10> > input_A_address0;
    sc_out< sc_logic > input_A_ce0;
    sc_in< sc_lv<8> > input_A_q0;
    sc_out< sc_lv<10> > input_B_address0;
    sc_out< sc_logic > input_B_ce0;
    sc_in< sc_lv<8> > input_B_q0;
    sc_out< sc_lv<10> > AB_address0;
    sc_out< sc_logic > AB_ce0;
    sc_out< sc_logic > AB_we0;
    sc_out< sc_lv<32> > AB_d0;
    sc_in< sc_lv<32> > AB_q0;


    // Module declarations
    matrixmul(sc_module_name name);
    SC_HAS_PROCESS(matrixmul);

    ~matrixmul();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    matrixmul_A* A_U;
    matrixmul_A* B_U;
    matrixmul_mac_mulbkb<1,1,8,8,32,32>* matrixmul_mac_mulbkb_U1;
    sc_signal< sc_lv<14> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > m_fu_244_p2;
    sc_signal< sc_lv<32> > m_reg_515;
    sc_signal< sc_lv<32> > n_fu_250_p2;
    sc_signal< sc_lv<32> > n_reg_522;
    sc_signal< sc_lv<32> > p_fu_256_p2;
    sc_signal< sc_lv<32> > p_reg_529;
    sc_signal< sc_lv<32> > i_4_fu_267_p2;
    sc_signal< sc_lv<32> > i_4_reg_539;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<12> > tmp_1_cast_fu_277_p3;
    sc_signal< sc_lv<12> > tmp_1_cast_reg_544;
    sc_signal< sc_lv<1> > exitcond8_fu_262_p2;
    sc_signal< sc_lv<32> > j_4_fu_290_p2;
    sc_signal< sc_lv<32> > j_4_reg_552;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > tmp_10_cast1_fu_305_p1;
    sc_signal< sc_lv<64> > tmp_10_cast1_reg_557;
    sc_signal< sc_lv<1> > exitcond7_fu_285_p2;
    sc_signal< sc_lv<32> > i_5_fu_315_p2;
    sc_signal< sc_lv<32> > i_5_reg_570;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<12> > tmp_9_cast_fu_325_p3;
    sc_signal< sc_lv<12> > tmp_9_cast_reg_575;
    sc_signal< sc_lv<1> > exitcond6_fu_310_p2;
    sc_signal< sc_lv<32> > j_5_fu_338_p2;
    sc_signal< sc_lv<32> > j_5_reg_583;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > tmp_13_cast_fu_353_p1;
    sc_signal< sc_lv<64> > tmp_13_cast_reg_588;
    sc_signal< sc_lv<1> > exitcond5_fu_333_p2;
    sc_signal< sc_lv<32> > i_6_fu_363_p2;
    sc_signal< sc_lv<32> > i_6_reg_601;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<12> > tmp_12_cast_fu_373_p3;
    sc_signal< sc_lv<12> > tmp_12_cast_reg_606;
    sc_signal< sc_lv<1> > exitcond4_fu_358_p2;
    sc_signal< sc_lv<32> > j_6_fu_386_p2;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > i_7_fu_411_p2;
    sc_signal< sc_lv<32> > i_7_reg_622;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<12> > tmp_15_cast_fu_421_p3;
    sc_signal< sc_lv<12> > tmp_15_cast_reg_627;
    sc_signal< sc_lv<1> > exitcond2_fu_406_p2;
    sc_signal< sc_lv<32> > j_7_fu_434_p2;
    sc_signal< sc_lv<32> > j_7_reg_636;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<12> > tmp_11_fu_440_p1;
    sc_signal< sc_lv<12> > tmp_11_reg_641;
    sc_signal< sc_lv<1> > exitcond1_fu_429_p2;
    sc_signal< sc_lv<10> > AB_addr_1_reg_646;
    sc_signal< sc_lv<32> > k_1_fu_459_p2;
    sc_signal< sc_lv<32> > k_1_reg_654;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > exitcond_fu_454_p2;
    sc_signal< sc_lv<8> > A_q0;
    sc_signal< sc_lv<8> > A_load_reg_669;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > B_q0;
    sc_signal< sc_lv<8> > B_load_reg_674;
    sc_signal< sc_lv<32> > AB_load_reg_679;
    sc_signal< sc_lv<10> > A_address0;
    sc_signal< sc_logic > A_ce0;
    sc_signal< sc_logic > A_we0;
    sc_signal< sc_lv<10> > B_address0;
    sc_signal< sc_logic > B_ce0;
    sc_signal< sc_logic > B_we0;
    sc_signal< sc_lv<32> > i_reg_145;
    sc_signal< sc_lv<32> > j_reg_156;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > i_1_reg_167;
    sc_signal< sc_lv<32> > j_1_reg_178;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > i_2_reg_189;
    sc_signal< sc_lv<1> > exitcond3_fu_381_p2;
    sc_signal< sc_lv<32> > j_2_reg_200;
    sc_signal< sc_lv<32> > i_3_reg_211;
    sc_signal< sc_lv<32> > j_3_reg_222;
    sc_signal< sc_lv<32> > k_reg_233;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<64> > tmp_16_cast_fu_401_p1;
    sc_signal< sc_lv<64> > tmp_17_cast_fu_449_p1;
    sc_signal< sc_lv<64> > tmp_18_cast_fu_474_p1;
    sc_signal< sc_lv<64> > tmp_21_cast_fu_496_p1;
    sc_signal< sc_lv<32> > grp_fu_507_p3;
    sc_signal< sc_lv<7> > tmp_fu_273_p1;
    sc_signal< sc_lv<12> > tmp_2_fu_296_p1;
    sc_signal< sc_lv<12> > tmp_s_fu_300_p2;
    sc_signal< sc_lv<7> > tmp_1_fu_321_p1;
    sc_signal< sc_lv<12> > tmp_4_fu_344_p1;
    sc_signal< sc_lv<12> > tmp_5_fu_348_p2;
    sc_signal< sc_lv<7> > tmp_3_fu_369_p1;
    sc_signal< sc_lv<12> > tmp_9_fu_392_p1;
    sc_signal< sc_lv<12> > tmp_10_fu_396_p2;
    sc_signal< sc_lv<7> > tmp_7_fu_417_p1;
    sc_signal< sc_lv<12> > tmp_12_fu_444_p2;
    sc_signal< sc_lv<12> > tmp_13_fu_465_p1;
    sc_signal< sc_lv<12> > tmp_14_fu_469_p2;
    sc_signal< sc_lv<7> > tmp_15_fu_479_p1;
    sc_signal< sc_lv<12> > tmp_20_cast_fu_483_p3;
    sc_signal< sc_lv<12> > tmp_16_fu_491_p2;
    sc_signal< sc_lv<8> > grp_fu_507_p0;
    sc_signal< sc_lv<8> > grp_fu_507_p1;
    sc_signal< sc_lv<14> > ap_NS_fsm;
    sc_signal< sc_lv<16> > grp_fu_507_p00;
    sc_signal< sc_lv<16> > grp_fu_507_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<14> ap_ST_fsm_state1;
    static const sc_lv<14> ap_ST_fsm_state2;
    static const sc_lv<14> ap_ST_fsm_state3;
    static const sc_lv<14> ap_ST_fsm_state4;
    static const sc_lv<14> ap_ST_fsm_state5;
    static const sc_lv<14> ap_ST_fsm_state6;
    static const sc_lv<14> ap_ST_fsm_state7;
    static const sc_lv<14> ap_ST_fsm_state8;
    static const sc_lv<14> ap_ST_fsm_state9;
    static const sc_lv<14> ap_ST_fsm_state10;
    static const sc_lv<14> ap_ST_fsm_state11;
    static const sc_lv<14> ap_ST_fsm_state12;
    static const sc_lv<14> ap_ST_fsm_state13;
    static const sc_lv<14> ap_ST_fsm_state14;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<5> ap_const_lv5_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_AB_address0();
    void thread_AB_ce0();
    void thread_AB_d0();
    void thread_AB_we0();
    void thread_A_address0();
    void thread_A_ce0();
    void thread_A_we0();
    void thread_B_address0();
    void thread_B_ce0();
    void thread_B_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond1_fu_429_p2();
    void thread_exitcond2_fu_406_p2();
    void thread_exitcond3_fu_381_p2();
    void thread_exitcond4_fu_358_p2();
    void thread_exitcond5_fu_333_p2();
    void thread_exitcond6_fu_310_p2();
    void thread_exitcond7_fu_285_p2();
    void thread_exitcond8_fu_262_p2();
    void thread_exitcond_fu_454_p2();
    void thread_grp_fu_507_p0();
    void thread_grp_fu_507_p00();
    void thread_grp_fu_507_p1();
    void thread_grp_fu_507_p10();
    void thread_i_4_fu_267_p2();
    void thread_i_5_fu_315_p2();
    void thread_i_6_fu_363_p2();
    void thread_i_7_fu_411_p2();
    void thread_input_A_address0();
    void thread_input_A_ce0();
    void thread_input_B_address0();
    void thread_input_B_ce0();
    void thread_j_4_fu_290_p2();
    void thread_j_5_fu_338_p2();
    void thread_j_6_fu_386_p2();
    void thread_j_7_fu_434_p2();
    void thread_k_1_fu_459_p2();
    void thread_m_fu_244_p2();
    void thread_n_fu_250_p2();
    void thread_p_fu_256_p2();
    void thread_tmp_10_cast1_fu_305_p1();
    void thread_tmp_10_fu_396_p2();
    void thread_tmp_11_fu_440_p1();
    void thread_tmp_12_cast_fu_373_p3();
    void thread_tmp_12_fu_444_p2();
    void thread_tmp_13_cast_fu_353_p1();
    void thread_tmp_13_fu_465_p1();
    void thread_tmp_14_fu_469_p2();
    void thread_tmp_15_cast_fu_421_p3();
    void thread_tmp_15_fu_479_p1();
    void thread_tmp_16_cast_fu_401_p1();
    void thread_tmp_16_fu_491_p2();
    void thread_tmp_17_cast_fu_449_p1();
    void thread_tmp_18_cast_fu_474_p1();
    void thread_tmp_1_cast_fu_277_p3();
    void thread_tmp_1_fu_321_p1();
    void thread_tmp_20_cast_fu_483_p3();
    void thread_tmp_21_cast_fu_496_p1();
    void thread_tmp_2_fu_296_p1();
    void thread_tmp_3_fu_369_p1();
    void thread_tmp_4_fu_344_p1();
    void thread_tmp_5_fu_348_p2();
    void thread_tmp_7_fu_417_p1();
    void thread_tmp_9_cast_fu_325_p3();
    void thread_tmp_9_fu_392_p1();
    void thread_tmp_fu_273_p1();
    void thread_tmp_s_fu_300_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
