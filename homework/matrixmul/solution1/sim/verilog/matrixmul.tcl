
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set AB_group [add_wave_group AB(memory) -into $cinoutgroup]
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/AB_q0 -into $AB_group -radix hex
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/AB_d0 -into $AB_group -radix hex
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/AB_we0 -into $AB_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/AB_ce0 -into $AB_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/AB_address0 -into $AB_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set B_group [add_wave_group B(memory) -into $cinputgroup]
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/B_q0 -into $B_group -radix hex
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/B_ce0 -into $B_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/B_address0 -into $B_group -radix hex
set A_group [add_wave_group A(memory) -into $cinputgroup]
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/A_q0 -into $A_group -radix hex
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/A_ce0 -into $A_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/A_address0 -into $A_group -radix hex
set lp_group [add_wave_group lp(wire) -into $cinputgroup]
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/lp -into $lp_group -radix hex
set ln_group [add_wave_group ln(wire) -into $cinputgroup]
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/ln -into $ln_group -radix hex
set lm_group [add_wave_group lm(wire) -into $cinputgroup]
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/lm -into $lm_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/ap_start -into $blocksiggroup
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/ap_done -into $blocksiggroup
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/ap_idle -into $blocksiggroup
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_matrixmul_top/AESL_inst_matrixmul/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_matrixmul_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_matrixmul_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_matrixmul_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_matrixmul_top/LENGTH_lm -into $tb_portdepth_group -radix hex
add_wave /apatb_matrixmul_top/LENGTH_ln -into $tb_portdepth_group -radix hex
add_wave /apatb_matrixmul_top/LENGTH_lp -into $tb_portdepth_group -radix hex
add_wave /apatb_matrixmul_top/LENGTH_A -into $tb_portdepth_group -radix hex
add_wave /apatb_matrixmul_top/LENGTH_B -into $tb_portdepth_group -radix hex
add_wave /apatb_matrixmul_top/LENGTH_AB -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_AB_group [add_wave_group AB(memory) -into $tbcinoutgroup]
add_wave /apatb_matrixmul_top/AB_q0 -into $tb_AB_group -radix hex
add_wave /apatb_matrixmul_top/AB_d0 -into $tb_AB_group -radix hex
add_wave /apatb_matrixmul_top/AB_we0 -into $tb_AB_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_top/AB_ce0 -into $tb_AB_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_top/AB_address0 -into $tb_AB_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_B_group [add_wave_group B(memory) -into $tbcinputgroup]
add_wave /apatb_matrixmul_top/B_q0 -into $tb_B_group -radix hex
add_wave /apatb_matrixmul_top/B_ce0 -into $tb_B_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_top/B_address0 -into $tb_B_group -radix hex
set tb_A_group [add_wave_group A(memory) -into $tbcinputgroup]
add_wave /apatb_matrixmul_top/A_q0 -into $tb_A_group -radix hex
add_wave /apatb_matrixmul_top/A_ce0 -into $tb_A_group -color #ffff00 -radix hex
add_wave /apatb_matrixmul_top/A_address0 -into $tb_A_group -radix hex
set tb_lp_group [add_wave_group lp(wire) -into $tbcinputgroup]
add_wave /apatb_matrixmul_top/lp -into $tb_lp_group -radix hex
set tb_ln_group [add_wave_group ln(wire) -into $tbcinputgroup]
add_wave /apatb_matrixmul_top/ln -into $tb_ln_group -radix hex
set tb_lm_group [add_wave_group lm(wire) -into $tbcinputgroup]
add_wave /apatb_matrixmul_top/lm -into $tb_lm_group -radix hex
save_wave_config matrixmul.wcfg
run all
quit

