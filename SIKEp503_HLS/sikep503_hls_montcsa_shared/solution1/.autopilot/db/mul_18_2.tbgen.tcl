set moduleName mul_18_2
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
set C_modelName {mul.18.2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict c { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ c int 64 regular {array 48 { 2 2 } 1 1 }  }
	{ c_offset int 2 regular  }
	{ c_offset1 int 1 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "c", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "c_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "c_offset1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_address0 sc_out sc_lv 6 signal 0 } 
	{ c_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_we0 sc_out sc_logic 1 signal 0 } 
	{ c_d0 sc_out sc_lv 64 signal 0 } 
	{ c_q0 sc_in sc_lv 64 signal 0 } 
	{ c_address1 sc_out sc_lv 6 signal 0 } 
	{ c_ce1 sc_out sc_logic 1 signal 0 } 
	{ c_we1 sc_out sc_logic 1 signal 0 } 
	{ c_d1 sc_out sc_lv 64 signal 0 } 
	{ c_q1 sc_in sc_lv 64 signal 0 } 
	{ c_offset sc_in sc_lv 2 signal 1 } 
	{ c_offset1 sc_in sc_lv 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we0" }} , 
 	{ "name": "c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "d0" }} , 
 	{ "name": "c_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "q0" }} , 
 	{ "name": "c_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c", "role": "address1" }} , 
 	{ "name": "c_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce1" }} , 
 	{ "name": "c_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we1" }} , 
 	{ "name": "c_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "d1" }} , 
 	{ "name": "c_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "q1" }} , 
 	{ "name": "c_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c_offset", "role": "default" }} , 
 	{ "name": "c_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_offset1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mul_18_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
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
					{"ID" : "1", "SubInstance" : "grp_mul_17_1_fu_24", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "mul_17_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_55ns_118_1_1_U2225", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_55ns_118_1_1_U2226", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_55ns_118_1_1_U2227", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_55ns_118_1_1_U2228", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_56ns_119_1_1_U2229", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_56ns_119_1_1_U2230", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_62ns_125_1_1_U2231", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_62ns_125_1_1_U2232", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_62ns_125_1_1_U2233", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_62ns_125_1_1_U2234", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_64ns_127_1_1_U2235", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_64ns_127_1_1_U2236", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_64ns_127_1_1_U2237", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_64ns_127_1_1_U2238", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_64ns_127_1_1_U2239", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_64ns_127_1_1_U2240", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2241", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2242", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2243", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2244", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2245", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2246", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2247", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2248", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64ns_65ns_128_1_1_U2249", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64s_64ns_64_1_1_U2250", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64s_64ns_64_1_1_U2251", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64s_64ns_64_1_1_U2252", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64s_64ns_64_1_1_U2253", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64s_56ns_64_1_1_U2254", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64s_62ns_64_1_1_U2255", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64s_62ns_64_1_1_U2256", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64s_64ns_64_1_1_U2257", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64s_56ns_64_1_1_U2258", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64s_64s_64_1_1_U2259", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_17_1_fu_24.mul_64s_64s_64_1_1_U2260", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	mul_18_2 {
		c {Type IO LastRead 10 FirstWrite 18}
		c_offset {Type I LastRead 0 FirstWrite -1}
		c_offset1 {Type I LastRead 0 FirstWrite -1}}
	mul_17_1 {
		c {Type IO LastRead 10 FirstWrite 18}
		c_offset {Type I LastRead 0 FirstWrite -1}
		c_offset1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "22"}
	, {"Name" : "Interval", "Min" : "22", "Max" : "22"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c { ap_memory {  { c_address0 mem_address 1 6 }  { c_ce0 mem_ce 1 1 }  { c_we0 mem_we 1 1 }  { c_d0 mem_din 1 64 }  { c_q0 mem_dout 0 64 }  { c_address1 MemPortADDR2 1 6 }  { c_ce1 MemPortCE2 1 1 }  { c_we1 MemPortWE2 1 1 }  { c_d1 MemPortDIN2 1 64 }  { c_q1 MemPortDOUT2 0 64 } } }
	c_offset { ap_none {  { c_offset in_data 0 2 } } }
	c_offset1 { ap_none {  { c_offset1 in_data 0 1 } } }
}
