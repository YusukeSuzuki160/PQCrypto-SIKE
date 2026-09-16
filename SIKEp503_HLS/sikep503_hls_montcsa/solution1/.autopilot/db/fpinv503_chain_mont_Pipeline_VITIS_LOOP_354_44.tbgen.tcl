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
set cdfgNum 655
set C_modelName {fpinv503_chain_mont_Pipeline_VITIS_LOOP_354_44}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict tt { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ tt int 64 regular {array 8 { 2 } 1 1 }  }
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
set portNum 19
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
 	{ "name": "t_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_load_11", "role": "default" }} , 
 	{ "name": "t_1_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_1_load_11", "role": "default" }} , 
 	{ "name": "t_2_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_2_load_11", "role": "default" }} , 
 	{ "name": "t_3_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_3_load_11", "role": "default" }} , 
 	{ "name": "t_4_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_4_load_11", "role": "default" }} , 
 	{ "name": "t_5_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_5_load_11", "role": "default" }} , 
 	{ "name": "t_6_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_6_load_11", "role": "default" }} , 
 	{ "name": "t_7_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_7_load_11", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "16", "42"],
		"CDFG" : "fpinv503_chain_mont_Pipeline_VITIS_LOOP_354_44",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10439", "EstimateLatencyMax" : "10439",
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
					{"ID" : "1", "SubInstance" : "grp_fpsqr503_mont_1_fu_108", "Port" : "mc", "Inst_start_state" : "154", "Inst_end_state" : "191"},
					{"ID" : "16", "SubInstance" : "grp_fpmul503_mont_16_fu_114", "Port" : "mc", "Inst_start_state" : "192", "Inst_end_state" : "214"}]},
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
				"LoopDec" : {"FSMBitwidth" : "213", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "fpsqr503_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "38",
		"VariableLatency" : "0", "ExactLatency" : "37", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
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
					{"ID" : "2", "SubInstance" : "grp_mul_1_3_fu_14", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "38"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14", "Parent" : "1", "Child" : ["3", "9"],
		"CDFG" : "mul_1_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "38",
		"VariableLatency" : "0", "ExactLatency" : "37", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
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
					{"ID" : "3", "SubInstance" : "grp_square_full_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "13"},
					{"ID" : "9", "SubInstance" : "grp_redc_fu_22", "Port" : "c", "Inst_start_state" : "14", "Inst_end_state" : "38"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_square_full_fu_16", "Parent" : "2", "Child" : ["4", "5", "6", "7", "8"],
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
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_square_full_fu_16.mul_64ns_64ns_128_1_1_U1446", "Parent" : "3"},
	{"ID" : "5", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_square_full_fu_16.mul_64ns_64ns_128_1_1_U1447", "Parent" : "3"},
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_square_full_fu_16.mul_64ns_64ns_128_1_1_U1448", "Parent" : "3"},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_square_full_fu_16.mul_64ns_64ns_128_1_1_U1449", "Parent" : "3"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_square_full_fu_16.mul_64ns_64ns_128_1_1_U1450", "Parent" : "3"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_redc_fu_22", "Parent" : "2", "Child" : ["10", "11", "12", "13", "14", "15"],
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
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_redc_fu_22.mul_64ns_56ns_119_1_1_U1452", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_redc_fu_22.mul_64ns_62ns_125_1_1_U1453", "Parent" : "9"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_redc_fu_22.mul_64ns_62ns_125_1_1_U1454", "Parent" : "9"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_redc_fu_22.mul_64ns_64ns_127_1_1_U1455", "Parent" : "9"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_redc_fu_22.mul_64ns_65ns_128_1_1_U1456", "Parent" : "9"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpsqr503_mont_1_fu_108.grp_mul_1_3_fu_14.grp_redc_fu_22.mul_64ns_65ns_128_1_1_U1457", "Parent" : "9"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "fpmul503_mont_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "23",
		"VariableLatency" : "0", "ExactLatency" : "22", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
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
					{"ID" : "17", "SubInstance" : "grp_mul_15_fu_78", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "23"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78", "Parent" : "16", "Child" : ["18"],
		"CDFG" : "mul_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "23",
		"VariableLatency" : "0", "ExactLatency" : "22", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
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
					{"ID" : "18", "SubInstance" : "grp_mul_14_fu_78", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "23"}]}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78", "Parent" : "17", "Child" : ["19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41"],
		"CDFG" : "mul_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "23",
		"VariableLatency" : "0", "ExactLatency" : "22", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
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
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_64ns_128_1_1_U1648", "Parent" : "18"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_64ns_128_1_1_U1649", "Parent" : "18"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_64ns_128_1_1_U1650", "Parent" : "18"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_64ns_128_1_1_U1651", "Parent" : "18"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_64ns_128_1_1_U1652", "Parent" : "18"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_64ns_128_1_1_U1653", "Parent" : "18"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_64ns_128_1_1_U1654", "Parent" : "18"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_64ns_128_1_1_U1655", "Parent" : "18"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_56ns_119_1_1_U1656", "Parent" : "18"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_56ns_119_1_1_U1657", "Parent" : "18"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_62ns_125_1_1_U1658", "Parent" : "18"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_62ns_125_1_1_U1659", "Parent" : "18"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_62ns_125_1_1_U1660", "Parent" : "18"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_64ns_127_1_1_U1661", "Parent" : "18"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_64ns_127_1_1_U1662", "Parent" : "18"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_65ns_128_1_1_U1663", "Parent" : "18"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64ns_65ns_128_1_1_U1664", "Parent" : "18"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64s_64ns_64_1_1_U1665", "Parent" : "18"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64s_64ns_64_1_1_U1666", "Parent" : "18"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64s_64ns_64_1_1_U1667", "Parent" : "18"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64s_64ns_64_1_1_U1668", "Parent" : "18"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64s_56ns_64_1_1_U1669", "Parent" : "18"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_16_fu_114.grp_mul_15_fu_78.grp_mul_14_fu_78.mul_64s_64s_64_1_1_U1670", "Parent" : "18"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fpinv503_chain_mont_Pipeline_VITIS_LOOP_354_44 {
		tt {Type IO LastRead 7 FirstWrite -1}
		t_load_11 {Type I LastRead 0 FirstWrite -1}
		t_1_load_11 {Type I LastRead 0 FirstWrite -1}
		t_2_load_11 {Type I LastRead 0 FirstWrite -1}
		t_3_load_11 {Type I LastRead 0 FirstWrite -1}
		t_4_load_11 {Type I LastRead 0 FirstWrite -1}
		t_5_load_11 {Type I LastRead 0 FirstWrite -1}
		t_6_load_11 {Type I LastRead 0 FirstWrite -1}
		t_7_load_11 {Type I LastRead 0 FirstWrite -1}}
	fpsqr503_mont_1 {
		mc {Type IO LastRead 7 FirstWrite -1}}
	mul_1_3 {
		c {Type IO LastRead 7 FirstWrite -1}}
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
		c {Type O LastRead -1 FirstWrite 17}}
	fpmul503_mont_16 {
		ma_read {Type I LastRead 0 FirstWrite -1}
		ma_read_23 {Type I LastRead 0 FirstWrite -1}
		ma_read_24 {Type I LastRead 0 FirstWrite -1}
		ma_read_25 {Type I LastRead 0 FirstWrite -1}
		ma_read_26 {Type I LastRead 0 FirstWrite -1}
		ma_read_27 {Type I LastRead 0 FirstWrite -1}
		ma_read_28 {Type I LastRead 0 FirstWrite -1}
		ma_read_29 {Type I LastRead 0 FirstWrite -1}
		mc {Type IO LastRead 7 FirstWrite 15}}
	mul_15 {
		a_read {Type I LastRead 0 FirstWrite -1}
		a_read_36 {Type I LastRead 0 FirstWrite -1}
		a_read_37 {Type I LastRead 0 FirstWrite -1}
		a_read_38 {Type I LastRead 0 FirstWrite -1}
		a_read_39 {Type I LastRead 0 FirstWrite -1}
		a_read_40 {Type I LastRead 0 FirstWrite -1}
		a_read_41 {Type I LastRead 0 FirstWrite -1}
		a_read_42 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 7 FirstWrite 15}}
	mul_14 {
		a_read {Type I LastRead 1 FirstWrite -1}
		a_read_8 {Type I LastRead 1 FirstWrite -1}
		a_read_9 {Type I LastRead 1 FirstWrite -1}
		a_read_10 {Type I LastRead 1 FirstWrite -1}
		a_read_11 {Type I LastRead 1 FirstWrite -1}
		a_read_12 {Type I LastRead 1 FirstWrite -1}
		a_read_13 {Type I LastRead 1 FirstWrite -1}
		a_read_14 {Type I LastRead 1 FirstWrite -1}
		c {Type IO LastRead 7 FirstWrite 15}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10439", "Max" : "10439"}
	, {"Name" : "Interval", "Min" : "10439", "Max" : "10439"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tt { ap_memory {  { tt_address0 mem_address 1 3 }  { tt_ce0 mem_ce 1 1 }  { tt_we0 mem_we 1 1 }  { tt_d0 mem_din 1 64 }  { tt_q0 mem_dout 0 64 } } }
	t_load_11 { ap_none {  { t_load_11 in_data 0 64 } } }
	t_1_load_11 { ap_none {  { t_1_load_11 in_data 0 64 } } }
	t_2_load_11 { ap_none {  { t_2_load_11 in_data 0 64 } } }
	t_3_load_11 { ap_none {  { t_3_load_11 in_data 0 64 } } }
	t_4_load_11 { ap_none {  { t_4_load_11 in_data 0 64 } } }
	t_5_load_11 { ap_none {  { t_5_load_11 in_data 0 64 } } }
	t_6_load_11 { ap_none {  { t_6_load_11 in_data 0 64 } } }
	t_7_load_11 { ap_none {  { t_7_load_11 in_data 0 64 } } }
}
