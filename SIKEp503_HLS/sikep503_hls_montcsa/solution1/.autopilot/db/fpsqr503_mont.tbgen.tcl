set moduleName fpsqr503_mont
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
set C_modelName {fpsqr503_mont}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict ma { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mc { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ma int 64 regular {array 8 { 1 } 1 1 }  }
	{ mc int 64 regular {array 8 { 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ma", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mc", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ma_address0 sc_out sc_lv 3 signal 0 } 
	{ ma_ce0 sc_out sc_logic 1 signal 0 } 
	{ ma_q0 sc_in sc_lv 64 signal 0 } 
	{ mc_address0 sc_out sc_lv 3 signal 1 } 
	{ mc_ce0 sc_out sc_logic 1 signal 1 } 
	{ mc_we0 sc_out sc_logic 1 signal 1 } 
	{ mc_d0 sc_out sc_lv 64 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ma_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ma", "role": "address0" }} , 
 	{ "name": "ma_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ma", "role": "ce0" }} , 
 	{ "name": "ma_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma", "role": "q0" }} , 
 	{ "name": "mc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mc", "role": "address0" }} , 
 	{ "name": "mc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "ce0" }} , 
 	{ "name": "mc_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "we0" }} , 
 	{ "name": "mc_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fpsqr503_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_2_2_1_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_2_2_1_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16", "Parent" : "0", "Child" : ["2", "8"],
		"CDFG" : "mul_2_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_square_full_fu_18", "Port" : "a", "Inst_start_state" : "4", "Inst_end_state" : "16"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_redc_fu_24", "Port" : "c", "Inst_start_state" : "17", "Inst_end_state" : "41"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_square_full_fu_18", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "square_full",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "12", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_square_full_fu_18.mul_64ns_64ns_128_1_1_U1446", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_square_full_fu_18.mul_64ns_64ns_128_1_1_U1447", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_square_full_fu_18.mul_64ns_64ns_128_1_1_U1448", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_square_full_fu_18.mul_64ns_64ns_128_1_1_U1449", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_square_full_fu_18.mul_64ns_64ns_128_1_1_U1450", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_redc_fu_24", "Parent" : "1", "Child" : ["9", "10", "11", "12", "13", "14"],
		"CDFG" : "redc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "24", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "24",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_13_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_15_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_redc_fu_24.mul_64ns_56ns_119_1_1_U1452", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_redc_fu_24.mul_64ns_62ns_125_1_1_U1453", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_redc_fu_24.mul_64ns_62ns_125_1_1_U1454", "Parent" : "8"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_redc_fu_24.mul_64ns_64ns_127_1_1_U1455", "Parent" : "8"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_redc_fu_24.mul_64ns_65ns_128_1_1_U1456", "Parent" : "8"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_2_2_1_fu_16.grp_redc_fu_24.mul_64ns_65ns_128_1_1_U1457", "Parent" : "8"}]}


set ArgLastReadFirstWriteLatency {
	fpsqr503_mont {
		ma {Type I LastRead 7 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 17}}
	mul_2_2_1 {
		a {Type I LastRead 7 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 17}}
	square_full {
		a {Type I LastRead 7 FirstWrite -1}}
	redc {
		x_0_val {Type I LastRead 0 FirstWrite -1}
		x_1_val {Type I LastRead 0 FirstWrite -1}
		x_2_val {Type I LastRead 1 FirstWrite -1}
		x_3_val {Type I LastRead 1 FirstWrite -1}
		x_4_val {Type I LastRead 2 FirstWrite -1}
		x_5_val {Type I LastRead 2 FirstWrite -1}
		x_6_val {Type I LastRead 3 FirstWrite -1}
		x_7_val {Type I LastRead 3 FirstWrite -1}
		x_8_val {Type I LastRead 4 FirstWrite -1}
		x_9_val {Type I LastRead 6 FirstWrite -1}
		x_10_val {Type I LastRead 7 FirstWrite -1}
		x_11_val {Type I LastRead 7 FirstWrite -1}
		x_12_val {Type I LastRead 7 FirstWrite -1}
		x_13_val {Type I LastRead 7 FirstWrite -1}
		x_14_val {Type I LastRead 7 FirstWrite -1}
		x_15_val {Type I LastRead 7 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41", "Max" : "41"}
	, {"Name" : "Interval", "Min" : "41", "Max" : "41"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ma { ap_memory {  { ma_address0 mem_address 1 3 }  { ma_ce0 mem_ce 1 1 }  { ma_q0 mem_dout 0 64 } } }
	mc { ap_memory {  { mc_address0 mem_address 1 3 }  { mc_ce0 mem_ce 1 1 }  { mc_we0 mem_we 1 1 }  { mc_d0 mem_din 1 64 } } }
}
