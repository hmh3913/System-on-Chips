-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_protocol_checker_v2_0_3 -sv \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_3 -sv \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_5 -sv \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_3_conv_funs_pkg.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_3_proc_common_pkg.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_3_ipif_pkg.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_3_family_support.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_3_family.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_3_soft_reset.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/proc_common_v3_30_a/hdl/src/vhdl/design_1_xadc_wiz_0_3_pselect_f.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_3_address_decoder.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_3_slave_attachment.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/interrupt_control_v2_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_3_interrupt_control.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_xadc_wiz_0_3_axi_lite_ipif.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/design_1_xadc_wiz_0_3_drp_arbiter.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/design_1_xadc_wiz_0_3_drp_to_axi_stream.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/design_1_xadc_wiz_0_3_xadc_core_drp.vhd" \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/design_1_xadc_wiz_0_3_axi_xadc.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xadc_wiz_0_3/design_1_xadc_wiz_0_3.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_12 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_100M_3/sim/design_1_rst_ps7_0_100M_3.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_9 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/a5f8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_5 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/fir_compiler_v7_2_11 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/b826/hdl/fir_compiler_v7_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_fir_compiler_0_0/sim/design_1_fir_compiler_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_17 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_16 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_18 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_17 \
  "../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

