set moduleName fpmul503_mont_20_1
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
set cdfgNum 655
set C_modelName {fpmul503_mont.20.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict mc { MEM_WIDTH 64 MEM_SIZE 192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ mc int 64 regular {array 24 { 2 } 1 1 }  }
	{ mc_offset int 2 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mc", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "mc_offset", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mc_address0 sc_out sc_lv 5 signal 0 } 
	{ mc_ce0 sc_out sc_logic 1 signal 0 } 
	{ mc_we0 sc_out sc_logic 1 signal 0 } 
	{ mc_d0 sc_out sc_lv 64 signal 0 } 
	{ mc_q0 sc_in sc_lv 64 signal 0 } 
	{ mc_offset sc_in sc_lv 2 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mc", "role": "address0" }} , 
 	{ "name": "mc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "ce0" }} , 
 	{ "name": "mc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "we0" }} , 
 	{ "name": "mc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "d0" }} , 
 	{ "name": "mc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "q0" }} , 
 	{ "name": "mc_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mc_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fpmul503_mont_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
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
					{"ID" : "1", "SubInstance" : "grp_mul_19_1_fu_22", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "mul_19_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
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
					{"ID" : "2", "SubInstance" : "grp_mul_18_1_fu_22", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "mul_18_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_55ns_118_1_1_U1930", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_55ns_118_1_1_U1931", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_55ns_118_1_1_U1932", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_55ns_118_1_1_U1933", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_56ns_119_1_1_U1934", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_56ns_119_1_1_U1935", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_62ns_125_1_1_U1936", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_62ns_125_1_1_U1937", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_62ns_125_1_1_U1938", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_62ns_125_1_1_U1939", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_64ns_127_1_1_U1940", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_64ns_127_1_1_U1941", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_64ns_127_1_1_U1942", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_64ns_127_1_1_U1943", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_64ns_127_1_1_U1944", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_64ns_127_1_1_U1945", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_65ns_128_1_1_U1946", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_65ns_128_1_1_U1947", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_65ns_128_1_1_U1948", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_65ns_128_1_1_U1949", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_65ns_128_1_1_U1950", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_65ns_128_1_1_U1951", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_65ns_128_1_1_U1952", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_65ns_128_1_1_U1953", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64ns_65ns_128_1_1_U1954", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64s_64ns_64_1_1_U1955", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64s_64ns_64_1_1_U1956", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64s_64ns_64_1_1_U1957", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64s_64ns_64_1_1_U1958", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64s_56ns_64_1_1_U1959", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64s_62ns_64_1_1_U1960", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64s_62ns_64_1_1_U1961", "Parent" : "2"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64s_64ns_64_1_1_U1962", "Parent" : "2"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64s_56ns_64_1_1_U1963", "Parent" : "2"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64s_64s_64_1_1_U1964", "Parent" : "2"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_19_1_fu_22.grp_mul_18_1_fu_22.mul_64s_64s_64_1_1_U1965", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	fpmul503_mont_20_1 {
		mc {Type IO LastRead 9 FirstWrite 18}
		mc_offset {Type I LastRead 0 FirstWrite -1}}
	mul_19_1 {
		c {Type IO LastRead 9 FirstWrite 18}
		c_offset {Type I LastRead 0 FirstWrite -1}}
	mul_18_1 {
		c {Type IO LastRead 9 FirstWrite 18}
		c_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "27", "Max" : "27"}
	, {"Name" : "Interval", "Min" : "27", "Max" : "27"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mc { ap_memory {  { mc_address0 mem_address 1 5 }  { mc_ce0 mem_ce 1 1 }  { mc_we0 mem_we 1 1 }  { mc_d0 mem_din 1 64 }  { mc_q0 mem_dout 0 64 } } }
	mc_offset { ap_none {  { mc_offset in_data 0 2 } } }
}
