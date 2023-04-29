set C_TypeInfoList {{ 
"matrixmul" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"lm": [[], {"scalar": "unsigned int"}] }, {"ln": [[], {"scalar": "unsigned int"}] }, {"lp": [[], {"scalar": "unsigned int"}] }, {"input": [[],"0"] }, {"AB": [[], {"array": [ {"array": ["1", [32]]}, [32]]}] }],[],""], 
"1": [ "result_t", {"typedef": [[[], {"scalar": "unsigned int"}],""]}], 
"0": [ "INPUT_MATRIX_MUL", {"typedef": [[[],"2"],""]}], 
"2": [ "Input_Matrix_Mul", {"struct": [[{"pack": 1}],[],[{ "A": [[],  {"array": ["3", [32,32]]}]},{ "B": [[],  {"array": ["4", [32,32]]}]}],""]}], 
"3": [ "mat_a_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}], 
"4": [ "mat_b_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}]
}}
set moduleName matrixmul
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {matrixmul}
set C_modelType { void 0 }
set C_modelArgList {
	{ lm int 32 regular  }
	{ ln int 32 regular  }
	{ lp int 32 regular  }
	{ input_A int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ input_B int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ AB int 32 regular {array 1024 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lm", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "lm","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ln", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ln","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "lp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "lp","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "input_A", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "input.A","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "input_B", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "input.B","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "AB", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "AB","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1},{"low" : 0,"up" : 31,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ lm sc_in sc_lv 32 signal 0 } 
	{ ln sc_in sc_lv 32 signal 1 } 
	{ lp sc_in sc_lv 32 signal 2 } 
	{ input_A_address0 sc_out sc_lv 10 signal 3 } 
	{ input_A_ce0 sc_out sc_logic 1 signal 3 } 
	{ input_A_q0 sc_in sc_lv 8 signal 3 } 
	{ input_B_address0 sc_out sc_lv 10 signal 4 } 
	{ input_B_ce0 sc_out sc_logic 1 signal 4 } 
	{ input_B_q0 sc_in sc_lv 8 signal 4 } 
	{ AB_address0 sc_out sc_lv 10 signal 5 } 
	{ AB_ce0 sc_out sc_logic 1 signal 5 } 
	{ AB_we0 sc_out sc_logic 1 signal 5 } 
	{ AB_d0 sc_out sc_lv 32 signal 5 } 
	{ AB_q0 sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "lm", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lm", "role": "default" }} , 
 	{ "name": "ln", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ln", "role": "default" }} , 
 	{ "name": "lp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lp", "role": "default" }} , 
 	{ "name": "input_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_A", "role": "address0" }} , 
 	{ "name": "input_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_A", "role": "ce0" }} , 
 	{ "name": "input_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_A", "role": "q0" }} , 
 	{ "name": "input_B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_B", "role": "address0" }} , 
 	{ "name": "input_B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_B", "role": "ce0" }} , 
 	{ "name": "input_B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_B", "role": "q0" }} , 
 	{ "name": "AB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "AB", "role": "address0" }} , 
 	{ "name": "AB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "ce0" }} , 
 	{ "name": "AB_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB", "role": "we0" }} , 
 	{ "name": "AB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB", "role": "d0" }} , 
 	{ "name": "AB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "matrixmul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "lm", "Type" : "None", "Direction" : "I"},
			{"Name" : "ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "lp", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "AB", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.matrixmul_mac_mulbkb_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrixmul {
		lm {Type I LastRead 0 FirstWrite -1}
		ln {Type I LastRead 0 FirstWrite -1}
		lp {Type I LastRead 0 FirstWrite -1}
		input_A {Type I LastRead 2 FirstWrite -1}
		input_B {Type I LastRead 3 FirstWrite -1}
		AB {Type IO LastRead 6 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	lm { ap_none {  { lm in_data 0 32 } } }
	ln { ap_none {  { ln in_data 0 32 } } }
	lp { ap_none {  { lp in_data 0 32 } } }
	input_A { ap_memory {  { input_A_address0 mem_address 1 10 }  { input_A_ce0 mem_ce 1 1 }  { input_A_q0 mem_dout 0 8 } } }
	input_B { ap_memory {  { input_B_address0 mem_address 1 10 }  { input_B_ce0 mem_ce 1 1 }  { input_B_q0 mem_dout 0 8 } } }
	AB { ap_memory {  { AB_address0 mem_address 1 10 }  { AB_ce0 mem_ce 1 1 }  { AB_we0 mem_we 1 1 }  { AB_d0 mem_din 1 32 }  { AB_q0 mem_dout 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
