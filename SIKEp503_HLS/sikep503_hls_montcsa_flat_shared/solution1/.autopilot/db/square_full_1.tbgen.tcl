set moduleName square_full_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 598
set C_modelName {square_full.1}
set C_modelType { int 1024 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ a int 64 regular {array 8 { 1 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ a_address0 sc_out sc_lv 3 signal 0 } 
	{ a_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_q0 sc_in sc_lv 64 signal 0 } 
	{ a_address1 sc_out sc_lv 3 signal 0 } 
	{ a_ce1 sc_out sc_logic 1 signal 0 } 
	{ a_q1 sc_in sc_lv 64 signal 0 } 
	{ ap_return_0 sc_out sc_lv 64 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
	{ ap_return_2 sc_out sc_lv 64 signal -1 } 
	{ ap_return_3 sc_out sc_lv 64 signal -1 } 
	{ ap_return_4 sc_out sc_lv 64 signal -1 } 
	{ ap_return_5 sc_out sc_lv 64 signal -1 } 
	{ ap_return_6 sc_out sc_lv 64 signal -1 } 
	{ ap_return_7 sc_out sc_lv 64 signal -1 } 
	{ ap_return_8 sc_out sc_lv 64 signal -1 } 
	{ ap_return_9 sc_out sc_lv 64 signal -1 } 
	{ ap_return_10 sc_out sc_lv 64 signal -1 } 
	{ ap_return_11 sc_out sc_lv 64 signal -1 } 
	{ ap_return_12 sc_out sc_lv 64 signal -1 } 
	{ ap_return_13 sc_out sc_lv 64 signal -1 } 
	{ ap_return_14 sc_out sc_lv 64 signal -1 } 
	{ ap_return_15 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "q1" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "square_full_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1653", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1654", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1655", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1656", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1657", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1658", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1659", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1660", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U1661", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	square_full_1 {
		a {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a { ap_memory {  { a_address0 mem_address 1 3 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 64 }  { a_address1 MemPortADDR2 1 3 }  { a_ce1 MemPortCE2 1 1 }  { a_q1 MemPortDOUT2 0 64 } } }
}
