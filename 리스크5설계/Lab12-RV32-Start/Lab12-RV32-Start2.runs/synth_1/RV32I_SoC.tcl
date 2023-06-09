# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.cache/wt [current_project]
set_property parent.project_path C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.4 [current_project]
set_property ip_output_repo c:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/insts_data.coe
add_files C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/milestone1/insts_data.coe
add_files C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/milestone2/insts_data.coe
read_verilog -library xil_defaultlib {
  C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/Addr_Decoder.v
  C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/FullAdder.v
  C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/GPIO.v
  C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/RippleAdder.v
  C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/alu.v
  C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/regfile.v
  C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/rv32i_cpu.v
  C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/RV32I_SoC.v
}
read_ip -quiet C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/ip/ram_2port_2048x32/ram_2port_2048x32.xci
set_property used_in_implementation false [get_files -all c:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/ip/ram_2port_2048x32/ram_2port_2048x32_ooc.xdc]

read_ip -quiet C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all c:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all c:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/RV32I_SoC.xdc
set_property used_in_implementation false [get_files C:/Xilinx/SoC/Lab12-RV32-Start/Lab12-RV32-Start2.srcs/sources_1/new/RV32I_SoC.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top RV32I_SoC -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef RV32I_SoC.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file RV32I_SoC_utilization_synth.rpt -pb RV32I_SoC_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
