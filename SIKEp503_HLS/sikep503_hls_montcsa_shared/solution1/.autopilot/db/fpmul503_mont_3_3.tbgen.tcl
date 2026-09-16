set moduleName fpmul503_mont_3_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 623
set C_modelName {fpmul503_mont.3.3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict mc { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mb { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ mc int 64 regular {array 8 { 2 2 } 1 1 }  }
	{ mb int 64 regular {array 8 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mc", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "mb", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mc_address0 sc_out sc_lv 3 signal 0 } 
	{ mc_ce0 sc_out sc_logic 1 signal 0 } 
	{ mc_we0 sc_out sc_logic 1 signal 0 } 
	{ mc_d0 sc_out sc_lv 64 signal 0 } 
	{ mc_q0 sc_in sc_lv 64 signal 0 } 
	{ mc_address1 sc_out sc_lv 3 signal 0 } 
	{ mc_ce1 sc_out sc_logic 1 signal 0 } 
	{ mc_we1 sc_out sc_logic 1 signal 0 } 
	{ mc_d1 sc_out sc_lv 64 signal 0 } 
	{ mc_q1 sc_in sc_lv 64 signal 0 } 
	{ mb_address0 sc_out sc_lv 3 signal 1 } 
	{ mb_ce0 sc_out sc_logic 1 signal 1 } 
	{ mb_q0 sc_in sc_lv 64 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc", "role": "address0" }} , 
 	{ "name": "mc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "ce0" }} , 
 	{ "name": "mc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "we0" }} , 
 	{ "name": "mc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "d0" }} , 
 	{ "name": "mc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "q0" }} , 
 	{ "name": "mc_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc", "role": "address1" }} , 
 	{ "name": "mc_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "ce1" }} , 
 	{ "name": "mc_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "we1" }} , 
 	{ "name": "mc_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "d1" }} , 
 	{ "name": "mc_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "q1" }} , 
 	{ "name": "mb_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mb", "role": "address0" }} , 
 	{ "name": "mb_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mb", "role": "ce0" }} , 
 	{ "name": "mb_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mb", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fpmul503_mont_3_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_3_3_1_fu_6", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_3_3_1_fu_6", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "mul_3_3_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "24",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_3_3_fu_6", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_3_3_fu_6", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "mul_3_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_64ns_128_1_1_U2055", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_64ns_128_1_1_U2056", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_64ns_128_1_1_U2057", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_64ns_128_1_1_U2058", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_64ns_128_1_1_U2059", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_64ns_128_1_1_U2060", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_64ns_128_1_1_U2061", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_64ns_128_1_1_U2062", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_64ns_128_1_1_U2063", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_56ns_119_1_1_U2064", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_56ns_119_1_1_U2065", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_62ns_125_1_1_U2066", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_62ns_125_1_1_U2067", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_62ns_125_1_1_U2068", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_62ns_125_1_1_U2069", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_64ns_127_1_1_U2070", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_64ns_127_1_1_U2071", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_65ns_128_1_1_U2072", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64ns_65ns_128_1_1_U2073", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64s_64ns_64_1_1_U2074", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64s_64ns_64_1_1_U2075", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64s_64ns_64_1_1_U2076", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64s_62ns_64_1_1_U2077", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64s_64ns_64_1_1_U2078", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64s_62ns_64_1_1_U2079", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64s_64ns_64_1_1_U2080", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64s_64s_64_1_1_U2081", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_3_3_1_fu_6.grp_mul_3_3_fu_6.mul_64s_64s_64_1_1_U2082", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	fpmul503_mont_3_3 {
		mc {Type IO LastRead 11 FirstWrite 20}
		mb {Type I LastRead 13 FirstWrite -1}}
	mul_3_3_1 {
		c {Type IO LastRead 11 FirstWrite 20}
		b {Type I LastRead 13 FirstWrite -1}}
	mul_3_3 {
		c {Type IO LastRead 11 FirstWrite 20}
		b {Type I LastRead 13 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25", "Max" : "25"}
	, {"Name" : "Interval", "Min" : "25", "Max" : "25"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mc { ap_memory {  { mc_address0 mem_address 1 3 }  { mc_ce0 mem_ce 1 1 }  { mc_we0 mem_we 1 1 }  { mc_d0 mem_din 1 64 }  { mc_q0 mem_dout 0 64 }  { mc_address1 MemPortADDR2 1 3 }  { mc_ce1 MemPortCE2 1 1 }  { mc_we1 MemPortWE2 1 1 }  { mc_d1 MemPortDIN2 1 64 }  { mc_q1 MemPortDOUT2 0 64 } } }
	mb { ap_memory {  { mb_address0 mem_address 1 3 }  { mb_ce0 mem_ce 1 1 }  { mb_q0 mem_dout 0 64 } } }
}
