set moduleName fpinv503_chain_mont_Pipeline_VITIS_LOOP_307_27
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
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
set C_modelName {fpinv503_chain_mont_Pipeline_VITIS_LOOP_307_27}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict tt { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ tt int 64 regular {array 8 { 2 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tt", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tt_address0 sc_out sc_lv 3 signal 0 } 
	{ tt_ce0 sc_out sc_logic 1 signal 0 } 
	{ tt_we0 sc_out sc_logic 1 signal 0 } 
	{ tt_d0 sc_out sc_lv 64 signal 0 } 
	{ tt_q0 sc_in sc_lv 64 signal 0 } 
	{ tt_address1 sc_out sc_lv 3 signal 0 } 
	{ tt_ce1 sc_out sc_logic 1 signal 0 } 
	{ tt_we1 sc_out sc_logic 1 signal 0 } 
	{ tt_d1 sc_out sc_lv 64 signal 0 } 
	{ tt_q1 sc_in sc_lv 64 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tt_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tt", "role": "address0" }} , 
 	{ "name": "tt_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt", "role": "ce0" }} , 
 	{ "name": "tt_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt", "role": "we0" }} , 
 	{ "name": "tt_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tt", "role": "d0" }} , 
 	{ "name": "tt_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tt", "role": "q0" }} , 
 	{ "name": "tt_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tt", "role": "address1" }} , 
 	{ "name": "tt_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt", "role": "ce1" }} , 
 	{ "name": "tt_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt", "role": "we1" }} , 
 	{ "name": "tt_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tt", "role": "d1" }} , 
 	{ "name": "tt_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tt", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "26"],
		"CDFG" : "fpinv503_chain_mont_Pipeline_VITIS_LOOP_307_27",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137", "EstimateLatencyMax" : "137",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fpsqr503_mont_1_fu_32", "Port" : "mc", "Inst_start_state" : "2", "Inst_end_state" : "28"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_307_27", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "fpsqr503_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "27",
		"VariableLatency" : "0", "ExactLatency" : "26", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_1_1_fu_4", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "27"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4", "Parent" : "1", "Child" : ["3", "13"],
		"CDFG" : "mul_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "27",
		"VariableLatency" : "0", "ExactLatency" : "26", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_square_full_1_fu_6", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "9"},
					{"ID" : "13", "SubInstance" : "grp_redc_fu_12", "Port" : "c", "Inst_start_state" : "10", "Inst_end_state" : "27"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_square_full_1_fu_6", "Parent" : "2", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12"],
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
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1653", "Parent" : "3"},
	{"ID" : "5", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1654", "Parent" : "3"},
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1655", "Parent" : "3"},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1656", "Parent" : "3"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1657", "Parent" : "3"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1658", "Parent" : "3"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1659", "Parent" : "3"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1660", "Parent" : "3"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1661", "Parent" : "3"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12", "Parent" : "2", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "redc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "17", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
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
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12.mul_64ns_56ns_119_1_1_U1610", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12.mul_64ns_56ns_119_1_1_U1611", "Parent" : "13"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12.mul_64ns_62ns_125_1_1_U1612", "Parent" : "13"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12.mul_64ns_62ns_125_1_1_U1613", "Parent" : "13"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12.mul_64ns_62ns_125_1_1_U1614", "Parent" : "13"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12.mul_64ns_62ns_125_1_1_U1615", "Parent" : "13"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12.mul_64ns_64ns_127_1_1_U1616", "Parent" : "13"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12.mul_64ns_64ns_127_1_1_U1617", "Parent" : "13"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12.mul_64ns_65ns_128_1_1_U1618", "Parent" : "13"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12.mul_64ns_65ns_128_1_1_U1619", "Parent" : "13"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12.mul_64ns_65ns_128_1_1_U1620", "Parent" : "13"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_32.grp_mul_1_1_fu_4.grp_redc_fu_12.mul_64ns_65ns_128_1_1_U1621", "Parent" : "13"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fpinv503_chain_mont_Pipeline_VITIS_LOOP_307_27 {
		tt {Type IO LastRead 4 FirstWrite -1}}
	fpsqr503_mont_1 {
		mc {Type IO LastRead 4 FirstWrite -1}}
	mul_1_1 {
		c {Type IO LastRead 4 FirstWrite -1}}
	square_full_1 {
		a {Type I LastRead 4 FirstWrite -1}}
	redc {
		x_0_val {Type I LastRead 0 FirstWrite -1}
		x_1_val {Type I LastRead 0 FirstWrite -1}
		x_2_val {Type I LastRead 1 FirstWrite -1}
		x_3_val {Type I LastRead 1 FirstWrite -1}
		x_4_val {Type I LastRead 2 FirstWrite -1}
		x_5_val {Type I LastRead 2 FirstWrite -1}
		x_6_val {Type I LastRead 3 FirstWrite -1}
		x_7_val {Type I LastRead 3 FirstWrite -1}
		x_8_val {Type I LastRead 3 FirstWrite -1}
		x_9_val {Type I LastRead 3 FirstWrite -1}
		x_10_val {Type I LastRead 3 FirstWrite -1}
		x_11_val {Type I LastRead 3 FirstWrite -1}
		x_12_val {Type I LastRead 3 FirstWrite -1}
		x_13_val {Type I LastRead 3 FirstWrite -1}
		x_14_val {Type I LastRead 3 FirstWrite -1}
		x_15_val {Type I LastRead 3 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 14}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "137", "Max" : "137"}
	, {"Name" : "Interval", "Min" : "137", "Max" : "137"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tt { ap_memory {  { tt_address0 mem_address 1 3 }  { tt_ce0 mem_ce 1 1 }  { tt_we0 mem_we 1 1 }  { tt_d0 mem_din 1 64 }  { tt_q0 mem_dout 0 64 }  { tt_address1 MemPortADDR2 1 3 }  { tt_ce1 MemPortCE2 1 1 }  { tt_we1 MemPortWE2 1 1 }  { tt_d1 MemPortDIN2 1 64 }  { tt_q1 MemPortDOUT2 0 64 } } }
}
