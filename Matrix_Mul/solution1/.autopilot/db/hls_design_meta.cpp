#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("lm", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("ln", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("lp", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("input_A_address0", 10, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("input_A_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("input_A_q0", 8, hls_in, 3, "ap_memory", "mem_dout", 1),
	Port_Property("input_B_address0", 10, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("input_B_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("input_B_q0", 8, hls_in, 4, "ap_memory", "mem_dout", 1),
	Port_Property("AB_address0", 10, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("AB_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("AB_we0", 1, hls_out, 5, "ap_memory", "mem_we", 1),
	Port_Property("AB_d0", 32, hls_out, 5, "ap_memory", "mem_din", 1),
	Port_Property("AB_q0", 32, hls_in, 5, "ap_memory", "mem_dout", 1),
};
const char* HLS_Design_Meta::dut_name = "matrixmul";
