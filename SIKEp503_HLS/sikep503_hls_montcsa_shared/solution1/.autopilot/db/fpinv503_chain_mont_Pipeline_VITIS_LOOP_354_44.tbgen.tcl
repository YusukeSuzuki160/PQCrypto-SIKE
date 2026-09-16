set moduleName fpinv503_chain_mont_Pipeline_VITIS_LOOP_354_44
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
set cdfgNum 623
set C_modelName {fpinv503_chain_mont_Pipeline_VITIS_LOOP_354_44}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict tt { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ tt int 64 regular {array 8 { 2 2 } 1 1 }  }
	{ t_load_11 int 64 regular  }
	{ t_1_load_11 int 64 regular  }
	{ t_2_load_11 int 64 regular  }
	{ t_3_load_11 int 64 regular  }
	{ t_4_load_11 int 64 regular  }
	{ t_5_load_11 int 64 regular  }
	{ t_6_load_11 int 64 regular  }
	{ t_7_load_11 int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tt", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "t_load_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "t_1_load_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "t_2_load_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "t_3_load_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "t_4_load_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "t_5_load_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "t_6_load_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "t_7_load_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
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
	{ t_load_11 sc_in sc_lv 64 signal 1 } 
	{ t_1_load_11 sc_in sc_lv 64 signal 2 } 
	{ t_2_load_11 sc_in sc_lv 64 signal 3 } 
	{ t_3_load_11 sc_in sc_lv 64 signal 4 } 
	{ t_4_load_11 sc_in sc_lv 64 signal 5 } 
	{ t_5_load_11 sc_in sc_lv 64 signal 6 } 
	{ t_6_load_11 sc_in sc_lv 64 signal 7 } 
	{ t_7_load_11 sc_in sc_lv 64 signal 8 } 
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
 	{ "name": "tt_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tt", "role": "q1" }} , 
 	{ "name": "t_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_load_11", "role": "default" }} , 
 	{ "name": "t_1_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_1_load_11", "role": "default" }} , 
 	{ "name": "t_2_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_2_load_11", "role": "default" }} , 
 	{ "name": "t_3_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_3_load_11", "role": "default" }} , 
 	{ "name": "t_4_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_4_load_11", "role": "default" }} , 
 	{ "name": "t_5_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_5_load_11", "role": "default" }} , 
 	{ "name": "t_6_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_6_load_11", "role": "default" }} , 
 	{ "name": "t_7_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_7_load_11", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "26", "56"],
		"CDFG" : "fpinv503_chain_mont_Pipeline_VITIS_LOOP_354_44",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7548", "EstimateLatencyMax" : "7548",
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
					{"ID" : "1", "SubInstance" : "grp_fpsqr503_mont_1_fu_100", "Port" : "mc", "Inst_start_state" : "110", "Inst_end_state" : "136"},
					{"ID" : "26", "SubInstance" : "grp_fpmul503_mont_16_fu_106", "Port" : "mc", "Inst_start_state" : "137", "Inst_end_state" : "155"}]},
			{"Name" : "t_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_1_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_2_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_3_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_4_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_5_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_6_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_7_load_11", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_354_44", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "154", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100", "Parent" : "0", "Child" : ["2"],
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
					{"ID" : "2", "SubInstance" : "grp_mul_1_3_fu_4", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "27"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4", "Parent" : "1", "Child" : ["3", "13"],
		"CDFG" : "mul_1_3",
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_square_full_1_fu_6", "Parent" : "2", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12"],
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
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1752", "Parent" : "3"},
	{"ID" : "5", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1753", "Parent" : "3"},
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1754", "Parent" : "3"},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1755", "Parent" : "3"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1756", "Parent" : "3"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1757", "Parent" : "3"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1758", "Parent" : "3"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1759", "Parent" : "3"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_square_full_1_fu_6.mul_64ns_64ns_128_1_1_U1760", "Parent" : "3"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12", "Parent" : "2", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
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
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12.mul_64ns_56ns_119_1_1_U1709", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12.mul_64ns_56ns_119_1_1_U1710", "Parent" : "13"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12.mul_64ns_62ns_125_1_1_U1711", "Parent" : "13"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12.mul_64ns_62ns_125_1_1_U1712", "Parent" : "13"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12.mul_64ns_62ns_125_1_1_U1713", "Parent" : "13"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12.mul_64ns_62ns_125_1_1_U1714", "Parent" : "13"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12.mul_64ns_64ns_127_1_1_U1715", "Parent" : "13"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12.mul_64ns_64ns_127_1_1_U1716", "Parent" : "13"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12.mul_64ns_65ns_128_1_1_U1717", "Parent" : "13"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12.mul_64ns_65ns_128_1_1_U1718", "Parent" : "13"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12.mul_64ns_65ns_128_1_1_U1719", "Parent" : "13"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_100.grp_mul_1_3_fu_4.grp_redc_fu_12.mul_64ns_65ns_128_1_1_U1720", "Parent" : "13"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "fpmul503_mont_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "19",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_mul_15_fu_70", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "19"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70", "Parent" : "26", "Child" : ["28"],
		"CDFG" : "mul_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "19",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_mul_14_fu_70", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "19"}]}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70", "Parent" : "27", "Child" : ["29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "mul_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "19",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_128_1_1_U1948", "Parent" : "28"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_128_1_1_U1949", "Parent" : "28"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_128_1_1_U1950", "Parent" : "28"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_128_1_1_U1951", "Parent" : "28"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_128_1_1_U1952", "Parent" : "28"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_128_1_1_U1953", "Parent" : "28"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_128_1_1_U1954", "Parent" : "28"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_128_1_1_U1955", "Parent" : "28"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_128_1_1_U1956", "Parent" : "28"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_128_1_1_U1957", "Parent" : "28"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_128_1_1_U1958", "Parent" : "28"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_128_1_1_U1959", "Parent" : "28"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_56ns_119_1_1_U1960", "Parent" : "28"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_56ns_119_1_1_U1961", "Parent" : "28"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_62ns_125_1_1_U1962", "Parent" : "28"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_62ns_125_1_1_U1963", "Parent" : "28"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_62ns_125_1_1_U1964", "Parent" : "28"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_64ns_127_1_1_U1965", "Parent" : "28"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_65ns_128_1_1_U1966", "Parent" : "28"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_65ns_128_1_1_U1967", "Parent" : "28"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64ns_65ns_128_1_1_U1968", "Parent" : "28"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64s_64ns_64_1_1_U1969", "Parent" : "28"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64s_64ns_64_1_1_U1970", "Parent" : "28"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64s_64ns_64_1_1_U1971", "Parent" : "28"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64s_62ns_64_1_1_U1972", "Parent" : "28"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64s_64ns_64_1_1_U1973", "Parent" : "28"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_106.grp_mul_15_fu_70.grp_mul_14_fu_70.mul_64s_64s_64_1_1_U1974", "Parent" : "28"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fpinv503_chain_mont_Pipeline_VITIS_LOOP_354_44 {
		tt {Type IO LastRead 4 FirstWrite -1}
		t_load_11 {Type I LastRead 0 FirstWrite -1}
		t_1_load_11 {Type I LastRead 0 FirstWrite -1}
		t_2_load_11 {Type I LastRead 0 FirstWrite -1}
		t_3_load_11 {Type I LastRead 0 FirstWrite -1}
		t_4_load_11 {Type I LastRead 0 FirstWrite -1}
		t_5_load_11 {Type I LastRead 0 FirstWrite -1}
		t_6_load_11 {Type I LastRead 0 FirstWrite -1}
		t_7_load_11 {Type I LastRead 0 FirstWrite -1}}
	fpsqr503_mont_1 {
		mc {Type IO LastRead 4 FirstWrite -1}}
	mul_1_3 {
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
		c {Type O LastRead -1 FirstWrite 14}}
	fpmul503_mont_16 {
		ma_read {Type I LastRead 0 FirstWrite -1}
		ma_read_23 {Type I LastRead 0 FirstWrite -1}
		ma_read_24 {Type I LastRead 0 FirstWrite -1}
		ma_read_25 {Type I LastRead 0 FirstWrite -1}
		ma_read_26 {Type I LastRead 0 FirstWrite -1}
		ma_read_27 {Type I LastRead 0 FirstWrite -1}
		ma_read_28 {Type I LastRead 0 FirstWrite -1}
		ma_read_29 {Type I LastRead 0 FirstWrite -1}
		mc {Type IO LastRead 4 FirstWrite 15}}
	mul_15 {
		a_read {Type I LastRead 0 FirstWrite -1}
		a_read_36 {Type I LastRead 0 FirstWrite -1}
		a_read_37 {Type I LastRead 0 FirstWrite -1}
		a_read_38 {Type I LastRead 0 FirstWrite -1}
		a_read_39 {Type I LastRead 0 FirstWrite -1}
		a_read_40 {Type I LastRead 0 FirstWrite -1}
		a_read_41 {Type I LastRead 0 FirstWrite -1}
		a_read_42 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 4 FirstWrite 15}}
	mul_14 {
		a_read {Type I LastRead 1 FirstWrite -1}
		a_read_8 {Type I LastRead 1 FirstWrite -1}
		a_read_9 {Type I LastRead 1 FirstWrite -1}
		a_read_10 {Type I LastRead 1 FirstWrite -1}
		a_read_11 {Type I LastRead 1 FirstWrite -1}
		a_read_12 {Type I LastRead 1 FirstWrite -1}
		a_read_13 {Type I LastRead 1 FirstWrite -1}
		a_read_14 {Type I LastRead 3 FirstWrite -1}
		c {Type IO LastRead 4 FirstWrite 15}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7548", "Max" : "7548"}
	, {"Name" : "Interval", "Min" : "7548", "Max" : "7548"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tt { ap_memory {  { tt_address0 mem_address 1 3 }  { tt_ce0 mem_ce 1 1 }  { tt_we0 mem_we 1 1 }  { tt_d0 mem_din 1 64 }  { tt_q0 mem_dout 0 64 }  { tt_address1 MemPortADDR2 1 3 }  { tt_ce1 MemPortCE2 1 1 }  { tt_we1 MemPortWE2 1 1 }  { tt_d1 MemPortDIN2 1 64 }  { tt_q1 MemPortDOUT2 0 64 } } }
	t_load_11 { ap_none {  { t_load_11 in_data 0 64 } } }
	t_1_load_11 { ap_none {  { t_1_load_11 in_data 0 64 } } }
	t_2_load_11 { ap_none {  { t_2_load_11 in_data 0 64 } } }
	t_3_load_11 { ap_none {  { t_3_load_11 in_data 0 64 } } }
	t_4_load_11 { ap_none {  { t_4_load_11 in_data 0 64 } } }
	t_5_load_11 { ap_none {  { t_5_load_11 in_data 0 64 } } }
	t_6_load_11 { ap_none {  { t_6_load_11 in_data 0 64 } } }
	t_7_load_11 { ap_none {  { t_7_load_11 in_data 0 64 } } }
}
