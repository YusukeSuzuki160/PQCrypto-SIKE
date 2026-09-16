set moduleName EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_175_3
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
set C_modelName {EphemeralKeyGeneration_A.1_Outline_VITIS_LOOP_175_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict coeff { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_Z_4 { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_Z { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_X_4 { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_X { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ coeff int 64 regular {array 48 { 1 } 1 1 }  }
	{ npts_4 int 32 regular  }
	{ pts_Z_4 int 64 regular {array 56 { 2 1 } 1 1 }  }
	{ pts_Z int 64 regular {array 56 { 2 1 } 1 1 }  }
	{ pts_X_4 int 64 regular {array 56 { 2 1 } 1 1 }  }
	{ pts_X int 64 regular {array 56 { 2 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "coeff", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "npts_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pts_Z_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_X_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_X", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ coeff_address0 sc_out sc_lv 6 signal 0 } 
	{ coeff_ce0 sc_out sc_logic 1 signal 0 } 
	{ coeff_q0 sc_in sc_lv 64 signal 0 } 
	{ npts_4 sc_in sc_lv 32 signal 1 } 
	{ pts_Z_4_address0 sc_out sc_lv 6 signal 2 } 
	{ pts_Z_4_ce0 sc_out sc_logic 1 signal 2 } 
	{ pts_Z_4_we0 sc_out sc_logic 1 signal 2 } 
	{ pts_Z_4_d0 sc_out sc_lv 64 signal 2 } 
	{ pts_Z_4_q0 sc_in sc_lv 64 signal 2 } 
	{ pts_Z_4_address1 sc_out sc_lv 6 signal 2 } 
	{ pts_Z_4_ce1 sc_out sc_logic 1 signal 2 } 
	{ pts_Z_4_q1 sc_in sc_lv 64 signal 2 } 
	{ pts_Z_address0 sc_out sc_lv 6 signal 3 } 
	{ pts_Z_ce0 sc_out sc_logic 1 signal 3 } 
	{ pts_Z_we0 sc_out sc_logic 1 signal 3 } 
	{ pts_Z_d0 sc_out sc_lv 64 signal 3 } 
	{ pts_Z_q0 sc_in sc_lv 64 signal 3 } 
	{ pts_Z_address1 sc_out sc_lv 6 signal 3 } 
	{ pts_Z_ce1 sc_out sc_logic 1 signal 3 } 
	{ pts_Z_q1 sc_in sc_lv 64 signal 3 } 
	{ pts_X_4_address0 sc_out sc_lv 6 signal 4 } 
	{ pts_X_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ pts_X_4_we0 sc_out sc_logic 1 signal 4 } 
	{ pts_X_4_d0 sc_out sc_lv 64 signal 4 } 
	{ pts_X_4_q0 sc_in sc_lv 64 signal 4 } 
	{ pts_X_4_address1 sc_out sc_lv 6 signal 4 } 
	{ pts_X_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ pts_X_4_q1 sc_in sc_lv 64 signal 4 } 
	{ pts_X_address0 sc_out sc_lv 6 signal 5 } 
	{ pts_X_ce0 sc_out sc_logic 1 signal 5 } 
	{ pts_X_we0 sc_out sc_logic 1 signal 5 } 
	{ pts_X_d0 sc_out sc_lv 64 signal 5 } 
	{ pts_X_q0 sc_in sc_lv 64 signal 5 } 
	{ pts_X_address1 sc_out sc_lv 6 signal 5 } 
	{ pts_X_ce1 sc_out sc_logic 1 signal 5 } 
	{ pts_X_q1 sc_in sc_lv 64 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "coeff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coeff", "role": "address0" }} , 
 	{ "name": "coeff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeff", "role": "ce0" }} , 
 	{ "name": "coeff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeff", "role": "q0" }} , 
 	{ "name": "npts_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "npts_4", "role": "default" }} , 
 	{ "name": "pts_Z_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "address0" }} , 
 	{ "name": "pts_Z_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "ce0" }} , 
 	{ "name": "pts_Z_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "we0" }} , 
 	{ "name": "pts_Z_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "d0" }} , 
 	{ "name": "pts_Z_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "q0" }} , 
 	{ "name": "pts_Z_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "address1" }} , 
 	{ "name": "pts_Z_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "ce1" }} , 
 	{ "name": "pts_Z_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "q1" }} , 
 	{ "name": "pts_Z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z", "role": "address0" }} , 
 	{ "name": "pts_Z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "ce0" }} , 
 	{ "name": "pts_Z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "we0" }} , 
 	{ "name": "pts_Z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z", "role": "d0" }} , 
 	{ "name": "pts_Z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z", "role": "q0" }} , 
 	{ "name": "pts_Z_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z", "role": "address1" }} , 
 	{ "name": "pts_Z_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "ce1" }} , 
 	{ "name": "pts_Z_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z", "role": "q1" }} , 
 	{ "name": "pts_X_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X_4", "role": "address0" }} , 
 	{ "name": "pts_X_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X_4", "role": "ce0" }} , 
 	{ "name": "pts_X_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X_4", "role": "we0" }} , 
 	{ "name": "pts_X_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X_4", "role": "d0" }} , 
 	{ "name": "pts_X_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X_4", "role": "q0" }} , 
 	{ "name": "pts_X_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X_4", "role": "address1" }} , 
 	{ "name": "pts_X_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X_4", "role": "ce1" }} , 
 	{ "name": "pts_X_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X_4", "role": "q1" }} , 
 	{ "name": "pts_X_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X", "role": "address0" }} , 
 	{ "name": "pts_X_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "ce0" }} , 
 	{ "name": "pts_X_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "we0" }} , 
 	{ "name": "pts_X_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X", "role": "d0" }} , 
 	{ "name": "pts_X_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X", "role": "q0" }} , 
 	{ "name": "pts_X_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X", "role": "address1" }} , 
 	{ "name": "pts_X_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "ce1" }} , 
 	{ "name": "pts_X_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "9", "11", "13", "906"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_175_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38809", "EstimateLatencyMax" : "38809",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_eval_4_isog_fu_124", "Port" : "coeff", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "npts_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1212_fu_116", "Port" : "pts_Z_4", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "906", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1213_fu_138", "Port" : "pts_Z_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1211_fu_108", "Port" : "pts_Z", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "906", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1213_fu_138", "Port" : "pts_Z", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "pts_X_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1210_fu_100", "Port" : "pts_X_4", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "906", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1213_fu_138", "Port" : "pts_X_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1209_fu_92", "Port" : "pts_X", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "906", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1213_fu_138", "Port" : "pts_X", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_eval_4_isog_fu_124", "Port" : "p503x2_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_eval_4_isog_fu_124", "Port" : "p503_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pt_new_Z_4_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pt_new_Z_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pt_new_X_4_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pt_new_X_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1209_fu_92", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1209",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln18_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1209_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1210_fu_100", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1210",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln18_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_X_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_X_4", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1210_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1211_fu_108", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1211",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln18_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1211_fu_108.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1212_fu_116", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1212",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln18_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z_4", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1212_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "27", "36", "42", "199", "356", "535", "541", "547", "622", "697", "706", "715", "721", "727"],
		"CDFG" : "eval_4_isog",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5518", "EstimateLatencyMax" : "5518",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_X_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_fpadd503_1_fu_68", "Port" : "a", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "36", "SubInstance" : "grp_fpsub503_2_fu_93", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "42", "SubInstance" : "grp_fp2mul503_mont_49_fu_106", "Port" : "c_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "535", "SubInstance" : "grp_fpsub503_1_fu_145", "Port" : "a", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "697", "SubInstance" : "grp_fpadd503_fu_183", "Port" : "c", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "727", "SubInstance" : "grp_fp2mul503_mont_5_fu_221", "Port" : "c_0", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "P_X_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_fpadd503_1_fu_68", "Port" : "a", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "27", "SubInstance" : "grp_fpadd503_1_fu_82", "Port" : "a", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "36", "SubInstance" : "grp_fpsub503_2_fu_93", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "42", "SubInstance" : "grp_fp2mul503_mont_49_fu_106", "Port" : "c_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "541", "SubInstance" : "grp_fpsub503_1_fu_155", "Port" : "a", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "706", "SubInstance" : "grp_fpadd503_fu_193", "Port" : "c", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "727", "SubInstance" : "grp_fp2mul503_mont_5_fu_221", "Port" : "c_1", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "P_Z_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_fpadd503_1_fu_68", "Port" : "b", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "36", "SubInstance" : "grp_fpsub503_2_fu_93", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "42", "SubInstance" : "grp_fp2mul503_mont_49_fu_106", "Port" : "c_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "535", "SubInstance" : "grp_fpsub503_1_fu_145", "Port" : "c", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "622", "SubInstance" : "grp_fp2sqr503_mont_fu_173", "Port" : "c_0", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "715", "SubInstance" : "grp_fpsub503_fu_203", "Port" : "a", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "727", "SubInstance" : "grp_fp2mul503_mont_5_fu_221", "Port" : "c_0", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "P_Z_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_fpadd503_1_fu_68", "Port" : "b", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "27", "SubInstance" : "grp_fpadd503_1_fu_82", "Port" : "b", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "36", "SubInstance" : "grp_fpsub503_2_fu_93", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "42", "SubInstance" : "grp_fp2mul503_mont_49_fu_106", "Port" : "c_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "541", "SubInstance" : "grp_fpsub503_1_fu_155", "Port" : "c", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "622", "SubInstance" : "grp_fp2sqr503_mont_fu_173", "Port" : "c_1", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "721", "SubInstance" : "grp_fpsub503_fu_212", "Port" : "a", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "727", "SubInstance" : "grp_fp2mul503_mont_5_fu_221", "Port" : "c_1", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_fp2mul503_mont_49_fu_106", "Port" : "coeff", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "356", "SubInstance" : "grp_fp2mul503_mont_50_fu_135", "Port" : "coeff", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_fpadd503_1_fu_68", "Port" : "p503x2_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "27", "SubInstance" : "grp_fpadd503_1_fu_82", "Port" : "p503x2_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "36", "SubInstance" : "grp_fpsub503_2_fu_93", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "535", "SubInstance" : "grp_fpsub503_1_fu_145", "Port" : "p503x2_1", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "541", "SubInstance" : "grp_fpsub503_1_fu_155", "Port" : "p503x2_1", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "547", "SubInstance" : "grp_fp2sqr503_mont_2_1_fu_165", "Port" : "p503x2_1", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "622", "SubInstance" : "grp_fp2sqr503_mont_fu_173", "Port" : "p503x2_1", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "697", "SubInstance" : "grp_fpadd503_fu_183", "Port" : "p503x2_1", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "706", "SubInstance" : "grp_fpadd503_fu_193", "Port" : "p503x2_1", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "715", "SubInstance" : "grp_fpsub503_fu_203", "Port" : "p503x2_1", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "721", "SubInstance" : "grp_fpsub503_fu_212", "Port" : "p503x2_1", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_fp2mul503_mont_49_fu_106", "Port" : "p503_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "199", "SubInstance" : "grp_fp2mul503_mont_629_2_fu_125", "Port" : "p503_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "356", "SubInstance" : "grp_fp2mul503_mont_50_fu_135", "Port" : "p503_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "727", "SubInstance" : "grp_fp2mul503_mont_5_fu_221", "Port" : "p503_1", "Inst_start_state" : "21", "Inst_end_state" : "22"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.t0_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.t0_1_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.t1_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.t1_1_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_68", "Parent" : "13", "Child" : ["19", "21", "24"],
		"CDFG" : "fpadd503_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
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
					{"ID" : "19", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "21", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "24", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "24", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_68.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "18", "Child" : ["20"],
		"CDFG" : "fpadd503_1_Pipeline_VITIS_LOOP_33_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_68.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_68.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "18", "Child" : ["22", "23"],
		"CDFG" : "fpadd503_1_Pipeline_VITIS_LOOP_39_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_1360_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_68.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_68.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_68.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "18", "Child" : ["25", "26"],
		"CDFG" : "fpadd503_1_Pipeline_VITIS_LOOP_46_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_68.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_68.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_82", "Parent" : "13", "Child" : ["28", "30", "33"],
		"CDFG" : "fpadd503_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
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
					{"ID" : "28", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "33", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "33", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_82.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "27", "Child" : ["29"],
		"CDFG" : "fpadd503_1_Pipeline_VITIS_LOOP_33_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_82.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_82.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "27", "Child" : ["31", "32"],
		"CDFG" : "fpadd503_1_Pipeline_VITIS_LOOP_39_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_1360_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_82.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_82.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_82.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "27", "Child" : ["34", "35"],
		"CDFG" : "fpadd503_1_Pipeline_VITIS_LOOP_46_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_82.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_1_fu_82.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_2_fu_93", "Parent" : "13", "Child" : ["37", "39"],
		"CDFG" : "fpsub503_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
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
					{"ID" : "37", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "39", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_2_fu_93.grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Parent" : "36", "Child" : ["38"],
		"CDFG" : "fpsub503_2_Pipeline_VITIS_LOOP_61_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_2_fu_93.grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_2_fu_93.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Parent" : "36", "Child" : ["40", "41"],
		"CDFG" : "fpsub503_2_Pipeline_VITIS_LOOP_68_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_2_fu_93.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39.p503x2_1_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_2_fu_93.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106", "Parent" : "13", "Child" : ["43", "44", "45", "46", "47", "48", "49", "50", "72", "74", "76", "78", "81", "83", "129", "151", "153"],
		"CDFG" : "fp2mul503_mont_49",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1013", "EstimateLatencyMax" : "1013",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_mp_mul_57_fu_88", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "72", "SubInstance" : "grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1_fu_103", "Port" : "a_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_mp_mul_57_fu_88", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "72", "SubInstance" : "grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1_fu_103", "Port" : "a_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_mp_mul_57_fu_88", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "74", "SubInstance" : "grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1142_fu_112", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_rdc_mont_fu_147", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_rdc_mont_1_fu_170", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_205_1_fu_131", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.t1_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.t2_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.tt1_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.tt1_1_U", "Parent" : "42"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.tt2_U", "Parent" : "42"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.tt2_1_U", "Parent" : "42"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.tt3_U", "Parent" : "42"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88", "Parent" : "42", "Child" : ["51"],
		"CDFG" : "mp_mul_57",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "51", "SubInstance" : "grp_mul_66_fu_30", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_mul_66_fu_30", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_mul_66_fu_30", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_mul_66_fu_30", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30", "Parent" : "50", "Child" : ["52", "53", "54", "56", "59", "62", "64", "67"],
		"CDFG" : "mul_66",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "56", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "67", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "67", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.acc_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.acc_1_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60", "Parent" : "51", "Child" : ["55"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_63_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68", "Parent" : "51", "Child" : ["57", "58"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68.partset_512ns_512ns_64ns_32ns_512_1_1_U1238", "Parent" : "56"},
	{"ID" : "58", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75", "Parent" : "51", "Child" : ["60", "61"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_38_186",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "60", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75.partset_512ns_512ns_64ns_32ns_512_1_1_U1241", "Parent" : "59"},
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_85_2_fu_84", "Parent" : "51", "Child" : ["63"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_85_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92", "Parent" : "51", "Child" : ["65", "66"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92.mul_64ns_64ns_128_1_1_U1247", "Parent" : "64"},
	{"ID" : "66", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100", "Parent" : "51", "Child" : ["68", "70"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "70", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "70", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "68", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "67", "Child" : ["69"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "69", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "67", "Child" : ["71"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1_fu_103", "Parent" : "42", "Child" : ["73"],
		"CDFG" : "fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1142_fu_112", "Parent" : "42", "Child" : ["75"],
		"CDFG" : "fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1142",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln201", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1142_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1_fu_121", "Parent" : "42", "Child" : ["77"],
		"CDFG" : "fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1_fu_121.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_205_1_fu_131", "Parent" : "42", "Child" : ["79", "80"],
		"CDFG" : "fp2mul503_mont_49_Pipeline_VITIS_LOOP_205_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln197", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_205_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_205_1_fu_131.p503_1_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_205_1_fu_131.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1143_fu_139", "Parent" : "42", "Child" : ["82"],
		"CDFG" : "fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1143",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1143_fu_139.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147", "Parent" : "42", "Child" : ["84", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "104", "109", "114", "119", "124"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "126", "EstimateLatencyMax" : "126",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "83", "Child" : ["85"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_306_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_292", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_299", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_306", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_312", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_318", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_325", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_332", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_338", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_345", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_354", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_is_digit_lessthan_ct_fu_361", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.tmp_261_is_digit_lessthan_ct_fu_367", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.tmp_262_is_digit_lessthan_ct_fu_374", "Parent" : "83",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381", "Parent" : "83", "Child" : ["100", "101", "102", "103"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U342", "Parent" : "99"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U343", "Parent" : "99"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U344", "Parent" : "99"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U345", "Parent" : "99"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388", "Parent" : "83", "Child" : ["105", "106", "107", "108"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U342", "Parent" : "104"},
	{"ID" : "106", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U343", "Parent" : "104"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U344", "Parent" : "104"},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U345", "Parent" : "104"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395", "Parent" : "83", "Child" : ["110", "111", "112", "113"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U342", "Parent" : "109"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U343", "Parent" : "109"},
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U344", "Parent" : "109"},
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U345", "Parent" : "109"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402", "Parent" : "83", "Child" : ["115", "116", "117", "118"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U342", "Parent" : "114"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U343", "Parent" : "114"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U344", "Parent" : "114"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U345", "Parent" : "114"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409", "Parent" : "83", "Child" : ["120", "121", "122", "123"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "120", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U342", "Parent" : "119"},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U343", "Parent" : "119"},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U344", "Parent" : "119"},
	{"ID" : "123", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U345", "Parent" : "119"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416", "Parent" : "83", "Child" : ["125", "126", "127", "128"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "125", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U342", "Parent" : "124"},
	{"ID" : "126", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U343", "Parent" : "124"},
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U344", "Parent" : "124"},
	{"ID" : "128", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_fu_147.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U345", "Parent" : "124"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154", "Parent" : "42", "Child" : ["130"],
		"CDFG" : "mp_mul_5120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "130", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18", "Parent" : "129", "Child" : ["131", "132", "133", "135", "138", "141", "143", "146"],
		"CDFG" : "mul_4124",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "135", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "146", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "146", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.acc_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.acc_1_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "130", "Child" : ["134"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_63_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "134", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "130", "Child" : ["136", "137"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "136", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "135"},
	{"ID" : "137", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "130", "Child" : ["139", "140"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_187",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "139", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "138"},
	{"ID" : "140", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "138"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "130", "Child" : ["142"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "142", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "130", "Child" : ["144", "145"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "144", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "143"},
	{"ID" : "145", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "143"},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "130", "Child" : ["147", "149"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "149", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "149", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "147", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "146", "Child" : ["148"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "148", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "146", "Child" : ["150"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "150", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_mp_mul_5120_fu_154.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1144_fu_162", "Parent" : "42", "Child" : ["152"],
		"CDFG" : "fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1144",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1144_fu_162.flow_control_loop_pipe_sequential_init_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170", "Parent" : "42", "Child" : ["154", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "174", "179", "184", "189", "194"],
		"CDFG" : "rdc_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "153", "Child" : ["155"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_306_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_283", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_290", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_297", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_303", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_309", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_316", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_323", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_329", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_336", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_345", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_is_digit_lessthan_ct_fu_352", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.tmp_45_is_digit_lessthan_ct_fu_358", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.tmp_46_is_digit_lessthan_ct_fu_365", "Parent" : "153",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372", "Parent" : "153", "Child" : ["170", "171", "172", "173"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U342", "Parent" : "169"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U343", "Parent" : "169"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U344", "Parent" : "169"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U345", "Parent" : "169"},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379", "Parent" : "153", "Child" : ["175", "176", "177", "178"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U342", "Parent" : "174"},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U343", "Parent" : "174"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U344", "Parent" : "174"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U345", "Parent" : "174"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386", "Parent" : "153", "Child" : ["180", "181", "182", "183"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U342", "Parent" : "179"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U343", "Parent" : "179"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U344", "Parent" : "179"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U345", "Parent" : "179"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393", "Parent" : "153", "Child" : ["185", "186", "187", "188"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U342", "Parent" : "184"},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U343", "Parent" : "184"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U344", "Parent" : "184"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U345", "Parent" : "184"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400", "Parent" : "153", "Child" : ["190", "191", "192", "193"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U342", "Parent" : "189"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U343", "Parent" : "189"},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U344", "Parent" : "189"},
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U345", "Parent" : "189"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407", "Parent" : "153", "Child" : ["195", "196", "197", "198"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "195", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U342", "Parent" : "194"},
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U343", "Parent" : "194"},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U344", "Parent" : "194"},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_49_fu_106.grp_rdc_mont_1_fu_170.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U345", "Parent" : "194"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125", "Parent" : "13", "Child" : ["200", "201", "202", "203", "204", "205", "206", "207", "229", "251", "253", "255", "257", "260", "262", "308", "310"],
		"CDFG" : "fp2mul503_mont_629_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "711", "EstimateLatencyMax" : "711",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_mp_mul_5120_fu_72", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "251", "SubInstance" : "grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1_fu_96", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "262", "SubInstance" : "grp_rdc_mont_134_fu_140", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_mp_mul_5120_fu_84", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "251", "SubInstance" : "grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1_fu_96", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "310", "SubInstance" : "grp_rdc_mont_4_fu_155", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_mp_mul_5120_fu_72", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "253", "SubInstance" : "grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1118_fu_105", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_mp_mul_5120_fu_84", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "253", "SubInstance" : "grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1118_fu_105", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_205_1_fu_124", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.t1_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.t2_U", "Parent" : "199"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.tt1_U", "Parent" : "199"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.tt1_1_U", "Parent" : "199"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.tt2_U", "Parent" : "199"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.tt2_1_U", "Parent" : "199"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.tt3_U", "Parent" : "199"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72", "Parent" : "199", "Child" : ["208"],
		"CDFG" : "mp_mul_5120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "208", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "208", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "208", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "208", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18", "Parent" : "207", "Child" : ["209", "210", "211", "213", "216", "219", "221", "224"],
		"CDFG" : "mul_4124",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "213", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "216", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "224", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "224", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.acc_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.acc_1_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "208", "Child" : ["212"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_63_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "212", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "208", "Child" : ["214", "215"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "214", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "213"},
	{"ID" : "215", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "213"},
	{"ID" : "216", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "208", "Child" : ["217", "218"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_187",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "217", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "216"},
	{"ID" : "218", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "216"},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "208", "Child" : ["220"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "220", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "219"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "208", "Child" : ["222", "223"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "222", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "221"},
	{"ID" : "223", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "221"},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "208", "Child" : ["225", "227"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "227", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "227", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "227", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "225", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "224", "Child" : ["226"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "226", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "224", "Child" : ["228"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "228", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_72.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84", "Parent" : "199", "Child" : ["230"],
		"CDFG" : "mp_mul_5120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "230", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "230", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "230", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "230", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18", "Parent" : "229", "Child" : ["231", "232", "233", "235", "238", "241", "243", "246"],
		"CDFG" : "mul_4124",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "235", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "238", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "246", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "246", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.acc_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.acc_1_U", "Parent" : "230"},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "230", "Child" : ["234"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_63_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "234", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "230", "Child" : ["236", "237"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "236", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "235"},
	{"ID" : "237", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "235"},
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "230", "Child" : ["239", "240"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_187",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "239", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "238"},
	{"ID" : "240", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "238"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "230", "Child" : ["242"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "230", "Child" : ["244", "245"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "244", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "243"},
	{"ID" : "245", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "243"},
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "230", "Child" : ["247", "249"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "249", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "249", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "249", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "249", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "247", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "246", "Child" : ["248"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "248", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "246", "Child" : ["250"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "250", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_mp_mul_5120_fu_84.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1_fu_96", "Parent" : "199", "Child" : ["252"],
		"CDFG" : "fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1118_fu_105", "Parent" : "199", "Child" : ["254"],
		"CDFG" : "fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1118",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1118_fu_105.flow_control_loop_pipe_sequential_init_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1_fu_114", "Parent" : "199", "Child" : ["256"],
		"CDFG" : "fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_205_1_fu_124", "Parent" : "199", "Child" : ["258", "259"],
		"CDFG" : "fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_205_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln197", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_205_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_205_1_fu_124.p503_1_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_205_1_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "257"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1119_fu_132", "Parent" : "199", "Child" : ["261"],
		"CDFG" : "fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1119",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1119_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140", "Parent" : "199", "Child" : ["263", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "283", "288", "293", "298", "303"],
		"CDFG" : "rdc_mont_134",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "82", "EstimateLatencyMax" : "82",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "263", "SubInstance" : "grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "262", "Child" : ["264"],
		"CDFG" : "rdc_mont_134_Pipeline_VITIS_LOOP_306_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_292", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_299", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_306", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_312", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_318", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "270", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_325", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_332", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_338", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_345", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_354", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_is_digit_lessthan_ct_fu_361", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.tmp_260_is_digit_lessthan_ct_fu_367", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.tmp_261_is_digit_lessthan_ct_fu_374", "Parent" : "262",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_381", "Parent" : "262", "Child" : ["279", "280", "281", "282"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U342", "Parent" : "278"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U343", "Parent" : "278"},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U344", "Parent" : "278"},
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U345", "Parent" : "278"},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_388", "Parent" : "262", "Child" : ["284", "285", "286", "287"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U342", "Parent" : "283"},
	{"ID" : "285", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U343", "Parent" : "283"},
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U344", "Parent" : "283"},
	{"ID" : "287", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U345", "Parent" : "283"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_395", "Parent" : "262", "Child" : ["289", "290", "291", "292"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "289", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U342", "Parent" : "288"},
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U343", "Parent" : "288"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U344", "Parent" : "288"},
	{"ID" : "292", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U345", "Parent" : "288"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_402", "Parent" : "262", "Child" : ["294", "295", "296", "297"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "294", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U342", "Parent" : "293"},
	{"ID" : "295", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U343", "Parent" : "293"},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U344", "Parent" : "293"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U345", "Parent" : "293"},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_409", "Parent" : "262", "Child" : ["299", "300", "301", "302"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U342", "Parent" : "298"},
	{"ID" : "300", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U343", "Parent" : "298"},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U344", "Parent" : "298"},
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U345", "Parent" : "298"},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_416", "Parent" : "262", "Child" : ["304", "305", "306", "307"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U342", "Parent" : "303"},
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U343", "Parent" : "303"},
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U344", "Parent" : "303"},
	{"ID" : "307", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_134_fu_140.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U345", "Parent" : "303"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1120_fu_147", "Parent" : "199", "Child" : ["309"],
		"CDFG" : "fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1120_fu_147.flow_control_loop_pipe_sequential_init_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155", "Parent" : "199", "Child" : ["311", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "331", "336", "341", "346", "351"],
		"CDFG" : "rdc_mont_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "104", "EstimateLatencyMax" : "104",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "310", "Child" : ["312"],
		"CDFG" : "rdc_mont_4_Pipeline_VITIS_LOOP_306_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "312", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_283", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "314", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_290", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "315", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_297", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "316", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_303", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_309", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_316", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "319", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_323", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_329", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_336", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_345", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "323", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_is_digit_lessthan_ct_fu_352", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "325", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "310",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_372", "Parent" : "310", "Child" : ["327", "328", "329", "330"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "327", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U342", "Parent" : "326"},
	{"ID" : "328", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U343", "Parent" : "326"},
	{"ID" : "329", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U344", "Parent" : "326"},
	{"ID" : "330", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U345", "Parent" : "326"},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_379", "Parent" : "310", "Child" : ["332", "333", "334", "335"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "332", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U342", "Parent" : "331"},
	{"ID" : "333", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U343", "Parent" : "331"},
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U344", "Parent" : "331"},
	{"ID" : "335", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U345", "Parent" : "331"},
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_386", "Parent" : "310", "Child" : ["337", "338", "339", "340"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U342", "Parent" : "336"},
	{"ID" : "338", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U343", "Parent" : "336"},
	{"ID" : "339", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U344", "Parent" : "336"},
	{"ID" : "340", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U345", "Parent" : "336"},
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_393", "Parent" : "310", "Child" : ["342", "343", "344", "345"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "342", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U342", "Parent" : "341"},
	{"ID" : "343", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U343", "Parent" : "341"},
	{"ID" : "344", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U344", "Parent" : "341"},
	{"ID" : "345", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U345", "Parent" : "341"},
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_400", "Parent" : "310", "Child" : ["347", "348", "349", "350"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "347", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U342", "Parent" : "346"},
	{"ID" : "348", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U343", "Parent" : "346"},
	{"ID" : "349", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U344", "Parent" : "346"},
	{"ID" : "350", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U345", "Parent" : "346"},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_407", "Parent" : "310", "Child" : ["352", "353", "354", "355"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "352", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U342", "Parent" : "351"},
	{"ID" : "353", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U343", "Parent" : "351"},
	{"ID" : "354", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U344", "Parent" : "351"},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_629_2_fu_125.grp_rdc_mont_4_fu_155.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U345", "Parent" : "351"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135", "Parent" : "13", "Child" : ["357", "358", "359", "360", "361", "362", "363", "364", "386", "408", "410", "412", "414", "417", "419", "465", "487", "489"],
		"CDFG" : "fp2mul503_mont_50",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "969", "EstimateLatencyMax" : "969",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_mp_mul_58_fu_76", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "408", "SubInstance" : "grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "419", "SubInstance" : "grp_rdc_mont_134_fu_142", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "386", "SubInstance" : "grp_mp_mul_57_fu_88", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "408", "SubInstance" : "grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "489", "SubInstance" : "grp_rdc_mont_4_fu_165", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_mp_mul_58_fu_76", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "386", "SubInstance" : "grp_mp_mul_57_fu_88", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "410", "SubInstance" : "grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1136_fu_109", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "414", "SubInstance" : "grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_205_1_fu_126", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.t1_U", "Parent" : "356"},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.t2_U", "Parent" : "356"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.tt1_U", "Parent" : "356"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.tt1_1_U", "Parent" : "356"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.tt2_U", "Parent" : "356"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.tt2_1_U", "Parent" : "356"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.tt3_U", "Parent" : "356"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76", "Parent" : "356", "Child" : ["365"],
		"CDFG" : "mp_mul_58",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "365", "SubInstance" : "grp_mul_67_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_mul_67_fu_20", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_mul_67_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_mul_67_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "365", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20", "Parent" : "364", "Child" : ["366", "367", "368", "370", "373", "376", "378", "381"],
		"CDFG" : "mul_67",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "370", "SubInstance" : "grp_mul_67_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_mul_67_Pipeline_VITIS_LOOP_38_185_fu_65", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_mul_67_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "381", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "368", "SubInstance" : "grp_mul_67_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "381", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "366", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.acc_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.acc_1_U", "Parent" : "365"},
	{"ID" : "368", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "365", "Child" : ["369"],
		"CDFG" : "mul_67_Pipeline_VITIS_LOOP_63_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "369", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "368"},
	{"ID" : "370", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "365", "Child" : ["371", "372"],
		"CDFG" : "mul_67_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "371", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U1294", "Parent" : "370"},
	{"ID" : "372", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "370"},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_38_185_fu_65", "Parent" : "365", "Child" : ["374", "375"],
		"CDFG" : "mul_67_Pipeline_VITIS_LOOP_38_185",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "374", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_38_185_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U1297", "Parent" : "373"},
	{"ID" : "375", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_38_185_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "373"},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "365", "Child" : ["377"],
		"CDFG" : "mul_67_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "377", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "376"},
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "365", "Child" : ["379", "380"],
		"CDFG" : "mul_67_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "379", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U1302", "Parent" : "378"},
	{"ID" : "380", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_mul_67_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "378"},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "365", "Child" : ["382", "384"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "384", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "384", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "382", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "384", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "382", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "384", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "382", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "381", "Child" : ["383"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "383", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "382"},
	{"ID" : "384", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "381", "Child" : ["385"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "385", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_58_fu_76.grp_mul_67_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "384"},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88", "Parent" : "356", "Child" : ["387"],
		"CDFG" : "mp_mul_57",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "387", "SubInstance" : "grp_mul_66_fu_30", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "387", "SubInstance" : "grp_mul_66_fu_30", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "387", "SubInstance" : "grp_mul_66_fu_30", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "387", "SubInstance" : "grp_mul_66_fu_30", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30", "Parent" : "386", "Child" : ["388", "389", "390", "392", "395", "398", "400", "403"],
		"CDFG" : "mul_66",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "392", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "395", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "390", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "403", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "390", "SubInstance" : "grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "403", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "388", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.acc_U", "Parent" : "387"},
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.acc_1_U", "Parent" : "387"},
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60", "Parent" : "387", "Child" : ["391"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_63_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "391", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_63_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "390"},
	{"ID" : "392", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68", "Parent" : "387", "Child" : ["393", "394"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "393", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68.partset_512ns_512ns_64ns_32ns_512_1_1_U1238", "Parent" : "392"},
	{"ID" : "394", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "392"},
	{"ID" : "395", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75", "Parent" : "387", "Child" : ["396", "397"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_38_186",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "396", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75.partset_512ns_512ns_64ns_32ns_512_1_1_U1241", "Parent" : "395"},
	{"ID" : "397", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_38_186_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "395"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_85_2_fu_84", "Parent" : "387", "Child" : ["399"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "399", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_85_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "398"},
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92", "Parent" : "387", "Child" : ["401", "402"],
		"CDFG" : "mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "401", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92.mul_64ns_64ns_128_1_1_U1247", "Parent" : "400"},
	{"ID" : "402", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "400"},
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100", "Parent" : "387", "Child" : ["404", "406"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "406", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "406", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "404", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "403", "Child" : ["405"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "405", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "403", "Child" : ["407"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "407", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_57_fu_88.grp_mul_66_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1_fu_100", "Parent" : "356", "Child" : ["409"],
		"CDFG" : "fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "408"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1136_fu_109", "Parent" : "356", "Child" : ["411"],
		"CDFG" : "fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1136",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "411", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1136_fu_109.flow_control_loop_pipe_sequential_init_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1_fu_116", "Parent" : "356", "Child" : ["413"],
		"CDFG" : "fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "413", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "412"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_205_1_fu_126", "Parent" : "356", "Child" : ["415", "416"],
		"CDFG" : "fp2mul503_mont_50_Pipeline_VITIS_LOOP_205_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln197", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_205_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "415", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_205_1_fu_126.p503_1_U", "Parent" : "414"},
	{"ID" : "416", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_205_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "414"},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1137_fu_134", "Parent" : "356", "Child" : ["418"],
		"CDFG" : "fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1137",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "418", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1137_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142", "Parent" : "356", "Child" : ["420", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "440", "445", "450", "455", "460"],
		"CDFG" : "rdc_mont_134",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "82", "EstimateLatencyMax" : "82",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "419", "Child" : ["421"],
		"CDFG" : "rdc_mont_134_Pipeline_VITIS_LOOP_306_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "421", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "420"},
	{"ID" : "422", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_292", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "423", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_299", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "424", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_306", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "425", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_312", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "426", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_318", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "427", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_325", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "428", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_332", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "429", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_338", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "430", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_345", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "431", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_354", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "432", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_is_digit_lessthan_ct_fu_361", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "433", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.tmp_260_is_digit_lessthan_ct_fu_367", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "434", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.tmp_261_is_digit_lessthan_ct_fu_374", "Parent" : "419",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "435", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_381", "Parent" : "419", "Child" : ["436", "437", "438", "439"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "436", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U342", "Parent" : "435"},
	{"ID" : "437", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U343", "Parent" : "435"},
	{"ID" : "438", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U344", "Parent" : "435"},
	{"ID" : "439", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U345", "Parent" : "435"},
	{"ID" : "440", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_388", "Parent" : "419", "Child" : ["441", "442", "443", "444"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "441", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U342", "Parent" : "440"},
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U343", "Parent" : "440"},
	{"ID" : "443", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U344", "Parent" : "440"},
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U345", "Parent" : "440"},
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_395", "Parent" : "419", "Child" : ["446", "447", "448", "449"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U342", "Parent" : "445"},
	{"ID" : "447", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U343", "Parent" : "445"},
	{"ID" : "448", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U344", "Parent" : "445"},
	{"ID" : "449", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U345", "Parent" : "445"},
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_402", "Parent" : "419", "Child" : ["451", "452", "453", "454"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U342", "Parent" : "450"},
	{"ID" : "452", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U343", "Parent" : "450"},
	{"ID" : "453", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U344", "Parent" : "450"},
	{"ID" : "454", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U345", "Parent" : "450"},
	{"ID" : "455", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_409", "Parent" : "419", "Child" : ["456", "457", "458", "459"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "456", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U342", "Parent" : "455"},
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U343", "Parent" : "455"},
	{"ID" : "458", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U344", "Parent" : "455"},
	{"ID" : "459", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U345", "Parent" : "455"},
	{"ID" : "460", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_416", "Parent" : "419", "Child" : ["461", "462", "463", "464"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "461", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U342", "Parent" : "460"},
	{"ID" : "462", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U343", "Parent" : "460"},
	{"ID" : "463", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U344", "Parent" : "460"},
	{"ID" : "464", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_134_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U345", "Parent" : "460"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149", "Parent" : "356", "Child" : ["466"],
		"CDFG" : "mp_mul_5120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "466", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "466", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "466", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "466", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "466", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18", "Parent" : "465", "Child" : ["467", "468", "469", "471", "474", "477", "479", "482"],
		"CDFG" : "mul_4124",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "471", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "474", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "469", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "482", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "469", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "482", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "467", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.acc_U", "Parent" : "466"},
	{"ID" : "468", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.acc_1_U", "Parent" : "466"},
	{"ID" : "469", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "466", "Child" : ["470"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_63_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "470", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "466", "Child" : ["472", "473"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "472", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "471"},
	{"ID" : "473", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "471"},
	{"ID" : "474", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "466", "Child" : ["475", "476"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_187",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "475", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "474"},
	{"ID" : "476", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "474"},
	{"ID" : "477", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "466", "Child" : ["478"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "478", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "477"},
	{"ID" : "479", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "466", "Child" : ["480", "481"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "480", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "479"},
	{"ID" : "481", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "479"},
	{"ID" : "482", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "466", "Child" : ["483", "485"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "485", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "485", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "483", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "485", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "483", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "485", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "483", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "482", "Child" : ["484"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "484", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "483"},
	{"ID" : "485", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "482", "Child" : ["486"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "486", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "485"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1138_fu_157", "Parent" : "356", "Child" : ["488"],
		"CDFG" : "fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1138",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "488", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1138_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "487"},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165", "Parent" : "356", "Child" : ["490", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "510", "515", "520", "525", "530"],
		"CDFG" : "rdc_mont_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "104", "EstimateLatencyMax" : "104",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "490", "SubInstance" : "grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "490", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "489", "Child" : ["491"],
		"CDFG" : "rdc_mont_4_Pipeline_VITIS_LOOP_306_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "491", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "490"},
	{"ID" : "492", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_283", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "493", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_290", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "494", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_297", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "495", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_303", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "496", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_309", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "497", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_316", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "498", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_323", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "499", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_329", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "500", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_336", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "501", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_345", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "502", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_is_digit_lessthan_ct_fu_352", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "503", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "504", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "489",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "505", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_372", "Parent" : "489", "Child" : ["506", "507", "508", "509"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "506", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U342", "Parent" : "505"},
	{"ID" : "507", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U343", "Parent" : "505"},
	{"ID" : "508", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U344", "Parent" : "505"},
	{"ID" : "509", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U345", "Parent" : "505"},
	{"ID" : "510", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_379", "Parent" : "489", "Child" : ["511", "512", "513", "514"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "511", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U342", "Parent" : "510"},
	{"ID" : "512", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U343", "Parent" : "510"},
	{"ID" : "513", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U344", "Parent" : "510"},
	{"ID" : "514", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U345", "Parent" : "510"},
	{"ID" : "515", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_386", "Parent" : "489", "Child" : ["516", "517", "518", "519"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "516", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U342", "Parent" : "515"},
	{"ID" : "517", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U343", "Parent" : "515"},
	{"ID" : "518", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U344", "Parent" : "515"},
	{"ID" : "519", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U345", "Parent" : "515"},
	{"ID" : "520", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_393", "Parent" : "489", "Child" : ["521", "522", "523", "524"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "521", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U342", "Parent" : "520"},
	{"ID" : "522", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U343", "Parent" : "520"},
	{"ID" : "523", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U344", "Parent" : "520"},
	{"ID" : "524", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U345", "Parent" : "520"},
	{"ID" : "525", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_400", "Parent" : "489", "Child" : ["526", "527", "528", "529"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "526", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U342", "Parent" : "525"},
	{"ID" : "527", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U343", "Parent" : "525"},
	{"ID" : "528", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U344", "Parent" : "525"},
	{"ID" : "529", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U345", "Parent" : "525"},
	{"ID" : "530", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_407", "Parent" : "489", "Child" : ["531", "532", "533", "534"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "531", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U342", "Parent" : "530"},
	{"ID" : "532", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U343", "Parent" : "530"},
	{"ID" : "533", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U344", "Parent" : "530"},
	{"ID" : "534", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_50_fu_135.grp_rdc_mont_4_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U345", "Parent" : "530"},
	{"ID" : "535", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_1_fu_145", "Parent" : "13", "Child" : ["536", "538"],
		"CDFG" : "fpsub503_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
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
					{"ID" : "536", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "536", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "538", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "538", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "536", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_1_fu_145.grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "535", "Child" : ["537"],
		"CDFG" : "fpsub503_1_Pipeline_VITIS_LOOP_61_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "537", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_1_fu_145.grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "536"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_1_fu_145.grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "535", "Child" : ["539", "540"],
		"CDFG" : "fpsub503_1_Pipeline_VITIS_LOOP_68_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "539", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_1_fu_145.grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "538"},
	{"ID" : "540", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_1_fu_145.grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "538"},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_1_fu_155", "Parent" : "13", "Child" : ["542", "544"],
		"CDFG" : "fpsub503_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
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
					{"ID" : "542", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "542", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "544", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "544", "SubInstance" : "grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_1_fu_155.grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "541", "Child" : ["543"],
		"CDFG" : "fpsub503_1_Pipeline_VITIS_LOOP_61_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "543", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_1_fu_155.grp_fpsub503_1_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "542"},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_1_fu_155.grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "541", "Child" : ["545", "546"],
		"CDFG" : "fpsub503_1_Pipeline_VITIS_LOOP_68_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "545", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_1_fu_155.grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "544"},
	{"ID" : "546", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_1_fu_155.grp_fpsub503_1_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "544"},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165", "Parent" : "13", "Child" : ["548", "549", "550", "551", "553", "555", "558", "560", "591"],
		"CDFG" : "fp2sqr503_mont_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "74", "EstimateLatencyMax" : "74",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "551", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "553", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "558", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102_fu_74", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "560", "SubInstance" : "grp_fpmul503_mont_2_fu_81", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "551", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "553", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "591", "SubInstance" : "grp_fpmul503_mont_2_3_fu_89", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "555", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.t1_U", "Parent" : "547"},
	{"ID" : "549", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.t2_U", "Parent" : "547"},
	{"ID" : "550", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.t3_U", "Parent" : "547"},
	{"ID" : "551", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_46", "Parent" : "547", "Child" : ["552"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "552", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "551"},
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Parent" : "547", "Child" : ["554"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "554", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "553"},
	{"ID" : "555", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66", "Parent" : "547", "Child" : ["556", "557"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "556", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66.p503x2_1_U", "Parent" : "555"},
	{"ID" : "557", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "555"},
	{"ID" : "558", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102_fu_74", "Parent" : "547", "Child" : ["559"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "559", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "558"},
	{"ID" : "560", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81", "Parent" : "547", "Child" : ["561"],
		"CDFG" : "fpmul503_mont_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
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
					{"ID" : "561", "SubInstance" : "grp_mul_2_3_2_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "561", "SubInstance" : "grp_mul_2_3_2_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "561", "SubInstance" : "grp_mul_2_3_2_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "561", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18", "Parent" : "560", "Child" : ["562"],
		"CDFG" : "mul_2_3_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
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
					{"ID" : "562", "SubInstance" : "grp_mul_2_1_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "562", "SubInstance" : "grp_mul_2_1_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "562", "SubInstance" : "grp_mul_2_1_1_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "562", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18", "Parent" : "561", "Child" : ["563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590"],
		"CDFG" : "mul_2_1_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "563", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U761", "Parent" : "562"},
	{"ID" : "564", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U762", "Parent" : "562"},
	{"ID" : "565", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U763", "Parent" : "562"},
	{"ID" : "566", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U764", "Parent" : "562"},
	{"ID" : "567", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U765", "Parent" : "562"},
	{"ID" : "568", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U766", "Parent" : "562"},
	{"ID" : "569", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U767", "Parent" : "562"},
	{"ID" : "570", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U768", "Parent" : "562"},
	{"ID" : "571", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U769", "Parent" : "562"},
	{"ID" : "572", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_56ns_119_1_1_U770", "Parent" : "562"},
	{"ID" : "573", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_56ns_119_1_1_U771", "Parent" : "562"},
	{"ID" : "574", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U772", "Parent" : "562"},
	{"ID" : "575", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U773", "Parent" : "562"},
	{"ID" : "576", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U774", "Parent" : "562"},
	{"ID" : "577", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U775", "Parent" : "562"},
	{"ID" : "578", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_127_1_1_U776", "Parent" : "562"},
	{"ID" : "579", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_127_1_1_U777", "Parent" : "562"},
	{"ID" : "580", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_65ns_128_1_1_U778", "Parent" : "562"},
	{"ID" : "581", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_65ns_128_1_1_U779", "Parent" : "562"},
	{"ID" : "582", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U780", "Parent" : "562"},
	{"ID" : "583", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U781", "Parent" : "562"},
	{"ID" : "584", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U782", "Parent" : "562"},
	{"ID" : "585", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_62ns_64_1_1_U783", "Parent" : "562"},
	{"ID" : "586", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U784", "Parent" : "562"},
	{"ID" : "587", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_62ns_64_1_1_U785", "Parent" : "562"},
	{"ID" : "588", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U786", "Parent" : "562"},
	{"ID" : "589", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64s_64_1_1_U787", "Parent" : "562"},
	{"ID" : "590", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64s_64_1_1_U788", "Parent" : "562"},
	{"ID" : "591", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89", "Parent" : "547", "Child" : ["592"],
		"CDFG" : "fpmul503_mont_2_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
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
					{"ID" : "592", "SubInstance" : "grp_mul_2_3_1_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "592", "SubInstance" : "grp_mul_2_3_1_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "592", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16", "Parent" : "591", "Child" : ["593"],
		"CDFG" : "mul_2_3_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
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
					{"ID" : "593", "SubInstance" : "grp_mul_2_3_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "593", "SubInstance" : "grp_mul_2_3_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "593", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16", "Parent" : "592", "Child" : ["594", "595", "596", "597", "598", "599", "600", "601", "602", "603", "604", "605", "606", "607", "608", "609", "610", "611", "612", "613", "614", "615", "616", "617", "618", "619", "620", "621"],
		"CDFG" : "mul_2_3",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "594", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U798", "Parent" : "593"},
	{"ID" : "595", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U799", "Parent" : "593"},
	{"ID" : "596", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U800", "Parent" : "593"},
	{"ID" : "597", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U801", "Parent" : "593"},
	{"ID" : "598", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U802", "Parent" : "593"},
	{"ID" : "599", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U803", "Parent" : "593"},
	{"ID" : "600", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U804", "Parent" : "593"},
	{"ID" : "601", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U805", "Parent" : "593"},
	{"ID" : "602", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U806", "Parent" : "593"},
	{"ID" : "603", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_56ns_119_1_1_U807", "Parent" : "593"},
	{"ID" : "604", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_56ns_119_1_1_U808", "Parent" : "593"},
	{"ID" : "605", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_62ns_125_1_1_U809", "Parent" : "593"},
	{"ID" : "606", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_62ns_125_1_1_U810", "Parent" : "593"},
	{"ID" : "607", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_62ns_125_1_1_U811", "Parent" : "593"},
	{"ID" : "608", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_62ns_125_1_1_U812", "Parent" : "593"},
	{"ID" : "609", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_127_1_1_U813", "Parent" : "593"},
	{"ID" : "610", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_127_1_1_U814", "Parent" : "593"},
	{"ID" : "611", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_65ns_128_1_1_U815", "Parent" : "593"},
	{"ID" : "612", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_65ns_128_1_1_U816", "Parent" : "593"},
	{"ID" : "613", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U817", "Parent" : "593"},
	{"ID" : "614", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U818", "Parent" : "593"},
	{"ID" : "615", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U819", "Parent" : "593"},
	{"ID" : "616", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_62ns_64_1_1_U820", "Parent" : "593"},
	{"ID" : "617", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U821", "Parent" : "593"},
	{"ID" : "618", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_62ns_64_1_1_U822", "Parent" : "593"},
	{"ID" : "619", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U823", "Parent" : "593"},
	{"ID" : "620", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64s_64_1_1_U824", "Parent" : "593"},
	{"ID" : "621", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_2_1_fu_165.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64s_64_1_1_U825", "Parent" : "593"},
	{"ID" : "622", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173", "Parent" : "13", "Child" : ["623", "624", "625", "626", "628", "630", "633", "635", "666"],
		"CDFG" : "fp2sqr503_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "74", "EstimateLatencyMax" : "74",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "626", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "628", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "633", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1105_fu_74", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "635", "SubInstance" : "grp_fpmul503_mont_fu_81", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "626", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "628", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "666", "SubInstance" : "grp_fpmul503_mont_1_fu_89", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "630", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_66", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "623", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.t1_U", "Parent" : "622"},
	{"ID" : "624", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.t2_U", "Parent" : "622"},
	{"ID" : "625", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.t3_U", "Parent" : "622"},
	{"ID" : "626", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1_fu_46", "Parent" : "622", "Child" : ["627"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "627", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "626"},
	{"ID" : "628", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_56", "Parent" : "622", "Child" : ["629"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "629", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "628"},
	{"ID" : "630", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_66", "Parent" : "622", "Child" : ["631", "632"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "631", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_66.p503x2_1_U", "Parent" : "630"},
	{"ID" : "632", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "630"},
	{"ID" : "633", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1105_fu_74", "Parent" : "622", "Child" : ["634"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1105",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "634", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1105_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "633"},
	{"ID" : "635", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81", "Parent" : "622", "Child" : ["636"],
		"CDFG" : "fpmul503_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
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
					{"ID" : "636", "SubInstance" : "grp_mul_1_4_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "636", "SubInstance" : "grp_mul_1_4_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "636", "SubInstance" : "grp_mul_1_4_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "636", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18", "Parent" : "635", "Child" : ["637"],
		"CDFG" : "mul_1_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
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
					{"ID" : "637", "SubInstance" : "grp_mul_1_2_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "637", "SubInstance" : "grp_mul_1_2_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "637", "SubInstance" : "grp_mul_1_2_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "637", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18", "Parent" : "636", "Child" : ["638", "639", "640", "641", "642", "643", "644", "645", "646", "647", "648", "649", "650", "651", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665"],
		"CDFG" : "mul_1_2",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "638", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U224", "Parent" : "637"},
	{"ID" : "639", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U225", "Parent" : "637"},
	{"ID" : "640", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U226", "Parent" : "637"},
	{"ID" : "641", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U227", "Parent" : "637"},
	{"ID" : "642", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U228", "Parent" : "637"},
	{"ID" : "643", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U229", "Parent" : "637"},
	{"ID" : "644", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U230", "Parent" : "637"},
	{"ID" : "645", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U231", "Parent" : "637"},
	{"ID" : "646", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_128_1_1_U232", "Parent" : "637"},
	{"ID" : "647", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_56ns_119_1_1_U233", "Parent" : "637"},
	{"ID" : "648", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_56ns_119_1_1_U234", "Parent" : "637"},
	{"ID" : "649", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_62ns_125_1_1_U235", "Parent" : "637"},
	{"ID" : "650", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_62ns_125_1_1_U236", "Parent" : "637"},
	{"ID" : "651", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_62ns_125_1_1_U237", "Parent" : "637"},
	{"ID" : "652", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_62ns_125_1_1_U238", "Parent" : "637"},
	{"ID" : "653", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_127_1_1_U239", "Parent" : "637"},
	{"ID" : "654", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_64ns_127_1_1_U240", "Parent" : "637"},
	{"ID" : "655", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_65ns_128_1_1_U241", "Parent" : "637"},
	{"ID" : "656", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64ns_65ns_128_1_1_U242", "Parent" : "637"},
	{"ID" : "657", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64ns_64_1_1_U243", "Parent" : "637"},
	{"ID" : "658", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64ns_64_1_1_U244", "Parent" : "637"},
	{"ID" : "659", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64ns_64_1_1_U245", "Parent" : "637"},
	{"ID" : "660", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_62ns_64_1_1_U246", "Parent" : "637"},
	{"ID" : "661", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64ns_64_1_1_U247", "Parent" : "637"},
	{"ID" : "662", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_62ns_64_1_1_U248", "Parent" : "637"},
	{"ID" : "663", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64ns_64_1_1_U249", "Parent" : "637"},
	{"ID" : "664", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64s_64_1_1_U250", "Parent" : "637"},
	{"ID" : "665", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_fu_81.grp_mul_1_4_fu_18.grp_mul_1_2_fu_18.mul_64s_64s_64_1_1_U251", "Parent" : "637"},
	{"ID" : "666", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89", "Parent" : "622", "Child" : ["667"],
		"CDFG" : "fpmul503_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
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
					{"ID" : "667", "SubInstance" : "grp_mul_3_1_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "667", "SubInstance" : "grp_mul_3_1_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "667", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16", "Parent" : "666", "Child" : ["668"],
		"CDFG" : "mul_3_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
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
					{"ID" : "668", "SubInstance" : "grp_mul_1_1_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "668", "SubInstance" : "grp_mul_1_1_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "668", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16", "Parent" : "667", "Child" : ["669", "670", "671", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "684", "685", "686", "687", "688", "689", "690", "691", "692", "693", "694", "695", "696"],
		"CDFG" : "mul_1_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "669", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U622", "Parent" : "668"},
	{"ID" : "670", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U623", "Parent" : "668"},
	{"ID" : "671", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U624", "Parent" : "668"},
	{"ID" : "672", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U625", "Parent" : "668"},
	{"ID" : "673", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U626", "Parent" : "668"},
	{"ID" : "674", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U627", "Parent" : "668"},
	{"ID" : "675", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U628", "Parent" : "668"},
	{"ID" : "676", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U629", "Parent" : "668"},
	{"ID" : "677", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_128_1_1_U630", "Parent" : "668"},
	{"ID" : "678", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_56ns_119_1_1_U631", "Parent" : "668"},
	{"ID" : "679", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_56ns_119_1_1_U632", "Parent" : "668"},
	{"ID" : "680", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_62ns_125_1_1_U633", "Parent" : "668"},
	{"ID" : "681", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_62ns_125_1_1_U634", "Parent" : "668"},
	{"ID" : "682", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_62ns_125_1_1_U635", "Parent" : "668"},
	{"ID" : "683", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_62ns_125_1_1_U636", "Parent" : "668"},
	{"ID" : "684", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_127_1_1_U637", "Parent" : "668"},
	{"ID" : "685", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_64ns_127_1_1_U638", "Parent" : "668"},
	{"ID" : "686", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_65ns_128_1_1_U639", "Parent" : "668"},
	{"ID" : "687", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64ns_65ns_128_1_1_U640", "Parent" : "668"},
	{"ID" : "688", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64ns_64_1_1_U641", "Parent" : "668"},
	{"ID" : "689", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64ns_64_1_1_U642", "Parent" : "668"},
	{"ID" : "690", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64ns_64_1_1_U643", "Parent" : "668"},
	{"ID" : "691", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_62ns_64_1_1_U644", "Parent" : "668"},
	{"ID" : "692", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64ns_64_1_1_U645", "Parent" : "668"},
	{"ID" : "693", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_62ns_64_1_1_U646", "Parent" : "668"},
	{"ID" : "694", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64ns_64_1_1_U647", "Parent" : "668"},
	{"ID" : "695", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64s_64_1_1_U648", "Parent" : "668"},
	{"ID" : "696", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2sqr503_mont_fu_173.grp_fpmul503_mont_1_fu_89.grp_mul_3_1_fu_16.grp_mul_1_1_fu_16.mul_64s_64s_64_1_1_U649", "Parent" : "668"},
	{"ID" : "697", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_183", "Parent" : "13", "Child" : ["698", "700", "703"],
		"CDFG" : "fpadd503",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
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
					{"ID" : "698", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "698", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "698", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "700", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "703", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "700", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "703", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "698", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_183.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "697", "Child" : ["699"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_33_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "699", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_183.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "698"},
	{"ID" : "700", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_183.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "697", "Child" : ["701", "702"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_39_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_1363_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "701", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_183.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "700"},
	{"ID" : "702", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_183.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "700"},
	{"ID" : "703", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_183.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "697", "Child" : ["704", "705"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_46_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "704", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_183.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "703"},
	{"ID" : "705", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_183.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "703"},
	{"ID" : "706", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_193", "Parent" : "13", "Child" : ["707", "709", "712"],
		"CDFG" : "fpadd503",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
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
					{"ID" : "707", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "707", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "707", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "709", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "712", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "709", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "712", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "707", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_193.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "706", "Child" : ["708"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_33_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "708", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_193.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "707"},
	{"ID" : "709", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_193.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "706", "Child" : ["710", "711"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_39_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_1363_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "710", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_193.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "709"},
	{"ID" : "711", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_193.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "709"},
	{"ID" : "712", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_193.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "706", "Child" : ["713", "714"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_46_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "713", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_193.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "712"},
	{"ID" : "714", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpadd503_fu_193.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "712"},
	{"ID" : "715", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_fu_203", "Parent" : "13", "Child" : ["716", "718"],
		"CDFG" : "fpsub503",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
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
					{"ID" : "716", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "716", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "718", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "718", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "716", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_fu_203.grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "715", "Child" : ["717"],
		"CDFG" : "fpsub503_Pipeline_VITIS_LOOP_61_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "717", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_fu_203.grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "716"},
	{"ID" : "718", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_fu_203.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "715", "Child" : ["719", "720"],
		"CDFG" : "fpsub503_Pipeline_VITIS_LOOP_68_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "719", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_fu_203.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "718"},
	{"ID" : "720", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_fu_203.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "718"},
	{"ID" : "721", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_fu_212", "Parent" : "13", "Child" : ["722", "724"],
		"CDFG" : "fpsub503",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
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
					{"ID" : "722", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "722", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "724", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "724", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "722", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_fu_212.grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "721", "Child" : ["723"],
		"CDFG" : "fpsub503_Pipeline_VITIS_LOOP_61_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "723", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_fu_212.grp_fpsub503_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "722"},
	{"ID" : "724", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_fu_212.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "721", "Child" : ["725", "726"],
		"CDFG" : "fpsub503_Pipeline_VITIS_LOOP_68_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "725", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_fu_212.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "724"},
	{"ID" : "726", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fpsub503_fu_212.grp_fpsub503_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "724"},
	{"ID" : "727", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221", "Parent" : "13", "Child" : ["728", "729", "730", "731", "732", "733", "734", "735", "757", "779", "781", "783", "785", "788", "790", "836", "858", "860"],
		"CDFG" : "fp2mul503_mont_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "755", "EstimateLatencyMax" : "755",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "735", "SubInstance" : "grp_mp_mul_1_fu_74", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "779", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1_fu_98", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "790", "SubInstance" : "grp_rdc_mont_fu_142", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "757", "SubInstance" : "grp_mp_mul_1_fu_86", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "779", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1_fu_98", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "860", "SubInstance" : "grp_rdc_mont_1_fu_165", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "735", "SubInstance" : "grp_mp_mul_1_fu_74", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "781", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139_fu_107", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "757", "SubInstance" : "grp_mp_mul_1_fu_86", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "781", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139_fu_107", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "785", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1_fu_126", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "728", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.t1_U", "Parent" : "727"},
	{"ID" : "729", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.t2_U", "Parent" : "727"},
	{"ID" : "730", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.tt1_U", "Parent" : "727"},
	{"ID" : "731", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.tt1_1_U", "Parent" : "727"},
	{"ID" : "732", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.tt2_U", "Parent" : "727"},
	{"ID" : "733", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.tt2_1_U", "Parent" : "727"},
	{"ID" : "734", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.tt3_U", "Parent" : "727"},
	{"ID" : "735", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74", "Parent" : "727", "Child" : ["736"],
		"CDFG" : "mp_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "736", "SubInstance" : "grp_mul_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "736", "SubInstance" : "grp_mul_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "736", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "736", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "736", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18", "Parent" : "735", "Child" : ["737", "738", "739", "741", "744", "747", "749", "752"],
		"CDFG" : "mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "741", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "744", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "739", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "752", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "739", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "752", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "737", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.acc_U", "Parent" : "736"},
	{"ID" : "738", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.acc_1_U", "Parent" : "736"},
	{"ID" : "739", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "736", "Child" : ["740"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_63_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "740", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "739"},
	{"ID" : "741", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "736", "Child" : ["742", "743"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "742", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U563", "Parent" : "741"},
	{"ID" : "743", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "741"},
	{"ID" : "744", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63", "Parent" : "736", "Child" : ["745", "746"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_38_194",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "745", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U566", "Parent" : "744"},
	{"ID" : "746", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "744"},
	{"ID" : "747", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "736", "Child" : ["748"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "748", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "747"},
	{"ID" : "749", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "736", "Child" : ["750", "751"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload75", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "750", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U571", "Parent" : "749"},
	{"ID" : "751", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "749"},
	{"ID" : "752", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "736", "Child" : ["753", "755"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "755", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "755", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "753", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "755", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "753", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "755", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "753", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "752", "Child" : ["754"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "754", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "753"},
	{"ID" : "755", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "752", "Child" : ["756"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "756", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "755"},
	{"ID" : "757", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86", "Parent" : "727", "Child" : ["758"],
		"CDFG" : "mp_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "758", "SubInstance" : "grp_mul_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "758", "SubInstance" : "grp_mul_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "758", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "758", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "758", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18", "Parent" : "757", "Child" : ["759", "760", "761", "763", "766", "769", "771", "774"],
		"CDFG" : "mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "763", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "766", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "761", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "774", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "761", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "774", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "759", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.acc_U", "Parent" : "758"},
	{"ID" : "760", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.acc_1_U", "Parent" : "758"},
	{"ID" : "761", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "758", "Child" : ["762"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_63_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "762", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "761"},
	{"ID" : "763", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "758", "Child" : ["764", "765"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "764", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U563", "Parent" : "763"},
	{"ID" : "765", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "763"},
	{"ID" : "766", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63", "Parent" : "758", "Child" : ["767", "768"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_38_194",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "767", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U566", "Parent" : "766"},
	{"ID" : "768", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "766"},
	{"ID" : "769", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "758", "Child" : ["770"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "770", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "769"},
	{"ID" : "771", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "758", "Child" : ["772", "773"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload75", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "772", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U571", "Parent" : "771"},
	{"ID" : "773", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "771"},
	{"ID" : "774", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "758", "Child" : ["775", "777"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "777", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "777", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "775", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "777", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "775", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "777", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "775", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "774", "Child" : ["776"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "776", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "775"},
	{"ID" : "777", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "774", "Child" : ["778"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "778", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "777"},
	{"ID" : "779", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1_fu_98", "Parent" : "727", "Child" : ["780"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "780", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "779"},
	{"ID" : "781", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139_fu_107", "Parent" : "727", "Child" : ["782"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "782", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "781"},
	{"ID" : "783", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1_fu_116", "Parent" : "727", "Child" : ["784"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "784", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "783"},
	{"ID" : "785", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1_fu_126", "Parent" : "727", "Child" : ["786", "787"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln197", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_205_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "786", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1_fu_126.p503_1_U", "Parent" : "785"},
	{"ID" : "787", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "785"},
	{"ID" : "788", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1140_fu_134", "Parent" : "727", "Child" : ["789"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1140",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "789", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1140_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "788"},
	{"ID" : "790", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142", "Parent" : "727", "Child" : ["791", "793", "794", "795", "796", "797", "798", "799", "800", "801", "802", "803", "804", "805", "806", "811", "816", "821", "826", "831"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "126", "EstimateLatencyMax" : "126",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "791", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "791", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "790", "Child" : ["792"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_306_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "792", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "791"},
	{"ID" : "793", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_292", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "794", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_299", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "795", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_306", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "796", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_312", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "797", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_318", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "798", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_325", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "799", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_332", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "800", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_338", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "801", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_345", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "802", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_354", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "803", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_361", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "804", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.tmp_261_is_digit_lessthan_ct_fu_367", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "805", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.tmp_262_is_digit_lessthan_ct_fu_374", "Parent" : "790",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "806", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381", "Parent" : "790", "Child" : ["807", "808", "809", "810"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "807", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U342", "Parent" : "806"},
	{"ID" : "808", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U343", "Parent" : "806"},
	{"ID" : "809", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U344", "Parent" : "806"},
	{"ID" : "810", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U345", "Parent" : "806"},
	{"ID" : "811", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388", "Parent" : "790", "Child" : ["812", "813", "814", "815"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "812", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U342", "Parent" : "811"},
	{"ID" : "813", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U343", "Parent" : "811"},
	{"ID" : "814", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U344", "Parent" : "811"},
	{"ID" : "815", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U345", "Parent" : "811"},
	{"ID" : "816", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395", "Parent" : "790", "Child" : ["817", "818", "819", "820"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "817", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U342", "Parent" : "816"},
	{"ID" : "818", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U343", "Parent" : "816"},
	{"ID" : "819", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U344", "Parent" : "816"},
	{"ID" : "820", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U345", "Parent" : "816"},
	{"ID" : "821", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402", "Parent" : "790", "Child" : ["822", "823", "824", "825"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "822", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U342", "Parent" : "821"},
	{"ID" : "823", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U343", "Parent" : "821"},
	{"ID" : "824", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U344", "Parent" : "821"},
	{"ID" : "825", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U345", "Parent" : "821"},
	{"ID" : "826", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409", "Parent" : "790", "Child" : ["827", "828", "829", "830"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "827", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U342", "Parent" : "826"},
	{"ID" : "828", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U343", "Parent" : "826"},
	{"ID" : "829", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U344", "Parent" : "826"},
	{"ID" : "830", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U345", "Parent" : "826"},
	{"ID" : "831", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416", "Parent" : "790", "Child" : ["832", "833", "834", "835"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "832", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U342", "Parent" : "831"},
	{"ID" : "833", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U343", "Parent" : "831"},
	{"ID" : "834", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U344", "Parent" : "831"},
	{"ID" : "835", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U345", "Parent" : "831"},
	{"ID" : "836", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149", "Parent" : "727", "Child" : ["837"],
		"CDFG" : "mp_mul_5120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "837", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "837", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "837", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "837", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "837", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18", "Parent" : "836", "Child" : ["838", "839", "840", "842", "845", "848", "850", "853"],
		"CDFG" : "mul_4124",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "842", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "845", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "840", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "853", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "840", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "853", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "838", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.acc_U", "Parent" : "837"},
	{"ID" : "839", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.acc_1_U", "Parent" : "837"},
	{"ID" : "840", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "837", "Child" : ["841"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_63_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "841", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "840"},
	{"ID" : "842", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "837", "Child" : ["843", "844"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "843", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "842"},
	{"ID" : "844", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "842"},
	{"ID" : "845", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "837", "Child" : ["846", "847"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_187",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "846", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "845"},
	{"ID" : "847", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "845"},
	{"ID" : "848", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "837", "Child" : ["849"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "849", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "848"},
	{"ID" : "850", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "837", "Child" : ["851", "852"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "851", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "850"},
	{"ID" : "852", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "850"},
	{"ID" : "853", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "837", "Child" : ["854", "856"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "856", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "856", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "854", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "856", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "854", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "856", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "854", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "853", "Child" : ["855"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "855", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "854"},
	{"ID" : "856", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "853", "Child" : ["857"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "857", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "856"},
	{"ID" : "858", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1141_fu_157", "Parent" : "727", "Child" : ["859"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1141",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "859", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1141_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "858"},
	{"ID" : "860", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165", "Parent" : "727", "Child" : ["861", "863", "864", "865", "866", "867", "868", "869", "870", "871", "872", "873", "874", "875", "876", "881", "886", "891", "896", "901"],
		"CDFG" : "rdc_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "861", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "861", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "860", "Child" : ["862"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_306_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "862", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "861"},
	{"ID" : "863", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_283", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "864", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_290", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "865", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_297", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "866", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_303", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "867", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_309", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "868", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_316", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "869", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_323", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "870", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_329", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "871", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_336", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "872", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_345", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "873", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_352", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "874", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.tmp_45_is_digit_lessthan_ct_fu_358", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "875", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.tmp_46_is_digit_lessthan_ct_fu_365", "Parent" : "860",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "876", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372", "Parent" : "860", "Child" : ["877", "878", "879", "880"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "877", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U342", "Parent" : "876"},
	{"ID" : "878", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U343", "Parent" : "876"},
	{"ID" : "879", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U344", "Parent" : "876"},
	{"ID" : "880", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U345", "Parent" : "876"},
	{"ID" : "881", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379", "Parent" : "860", "Child" : ["882", "883", "884", "885"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "882", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U342", "Parent" : "881"},
	{"ID" : "883", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U343", "Parent" : "881"},
	{"ID" : "884", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U344", "Parent" : "881"},
	{"ID" : "885", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U345", "Parent" : "881"},
	{"ID" : "886", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386", "Parent" : "860", "Child" : ["887", "888", "889", "890"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "887", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U342", "Parent" : "886"},
	{"ID" : "888", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U343", "Parent" : "886"},
	{"ID" : "889", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U344", "Parent" : "886"},
	{"ID" : "890", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U345", "Parent" : "886"},
	{"ID" : "891", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393", "Parent" : "860", "Child" : ["892", "893", "894", "895"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "892", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U342", "Parent" : "891"},
	{"ID" : "893", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U343", "Parent" : "891"},
	{"ID" : "894", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U344", "Parent" : "891"},
	{"ID" : "895", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U345", "Parent" : "891"},
	{"ID" : "896", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400", "Parent" : "860", "Child" : ["897", "898", "899", "900"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "897", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U342", "Parent" : "896"},
	{"ID" : "898", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U343", "Parent" : "896"},
	{"ID" : "899", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U344", "Parent" : "896"},
	{"ID" : "900", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U345", "Parent" : "896"},
	{"ID" : "901", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407", "Parent" : "860", "Child" : ["902", "903", "904", "905"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "902", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U342", "Parent" : "901"},
	{"ID" : "903", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U343", "Parent" : "901"},
	{"ID" : "904", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U344", "Parent" : "901"},
	{"ID" : "905", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_124.grp_fp2mul503_mont_5_fu_221.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U345", "Parent" : "901"},
	{"ID" : "906", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1213_fu_138", "Parent" : "0", "Child" : ["907"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1213",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pts_Z_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln18_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pts_X_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pt_new_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_X_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln175", "Type" : "None", "Direction" : "I"},
			{"Name" : "npts_4", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_313_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "907", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1213_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "906"}]}


set ArgLastReadFirstWriteLatency {
	EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_175_3 {
		coeff {Type I LastRead 1 FirstWrite -1}
		npts_4 {Type I LastRead 0 FirstWrite -1}
		pts_Z_4 {Type IO LastRead 0 FirstWrite -1}
		pts_Z {Type IO LastRead 0 FirstWrite -1}
		pts_X_4 {Type IO LastRead 0 FirstWrite -1}
		pts_X {Type IO LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1209 {
		zext_ln18_13 {Type I LastRead 0 FirstWrite -1}
		pts_X {Type I LastRead 0 FirstWrite -1}
		pt_new_X {Type O LastRead -1 FirstWrite 1}}
	EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1210 {
		zext_ln18_13 {Type I LastRead 0 FirstWrite -1}
		pts_X_4 {Type I LastRead 0 FirstWrite -1}
		pt_new_X_4 {Type O LastRead -1 FirstWrite 1}}
	EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1211 {
		zext_ln18_13 {Type I LastRead 0 FirstWrite -1}
		pts_Z {Type I LastRead 0 FirstWrite -1}
		pt_new_Z {Type O LastRead -1 FirstWrite 1}}
	EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1212 {
		zext_ln18_13 {Type I LastRead 0 FirstWrite -1}
		pts_Z_4 {Type I LastRead 0 FirstWrite -1}
		pt_new_Z_4 {Type O LastRead -1 FirstWrite 1}}
	eval_4_isog {
		P_X_0 {Type IO LastRead 0 FirstWrite -1}
		P_X_1 {Type IO LastRead 0 FirstWrite -1}
		P_Z_0 {Type IO LastRead 0 FirstWrite -1}
		P_Z_1 {Type IO LastRead 13 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1_Pipeline_VITIS_LOOP_33_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_1_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_1360_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1_Pipeline_VITIS_LOOP_33_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_1_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_1360_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_2_Pipeline_VITIS_LOOP_61_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_2_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_49 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_57 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_66 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_38_186 {
		b {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1142 {
		b_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		add_ln201 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_49_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_49_Pipeline_VITIS_LOOP_396_1143 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_5120 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_187 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_49_Pipeline_VITIS_LOOP_178_1144 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_1 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_1_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_629_2 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_5120 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_187 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	mp_mul_5120 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_187 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1118 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_396_1119 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_134 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_134_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_629_2_Pipeline_VITIS_LOOP_178_1120 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_4 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_4_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_50 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_58 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_67 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_67_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_67_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_67_Pipeline_VITIS_LOOP_38_185 {
		coeff {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_67_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_67_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	mp_mul_57 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_66 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_38_186 {
		b {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_66_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1136 {
		coeff {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_50_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_50_Pipeline_VITIS_LOOP_396_1137 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_134 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_134_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_5120 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_187 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_50_Pipeline_VITIS_LOOP_178_1138 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_4 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_4_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpsub503_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_1_Pipeline_VITIS_LOOP_61_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_1_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_1_Pipeline_VITIS_LOOP_61_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_1_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 13 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_2 {
		ma {Type I LastRead 10 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_2_3_2 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_2_1_1 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	fpmul503_mont_2_3 {
		ma {Type I LastRead 10 FirstWrite -1}
		mc {Type IO LastRead 13 FirstWrite 20}}
	mul_2_3_1 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	mul_2_3 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	fp2sqr503_mont {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 13 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_396_1105 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont {
		ma {Type I LastRead 10 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_1_4 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_1_2 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	fpmul503_mont_1 {
		ma {Type I LastRead 10 FirstWrite -1}
		mc {Type IO LastRead 13 FirstWrite 20}}
	mul_3_1 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	mul_1_1 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	fpadd503 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_33_1 {
		c {Type O LastRead -1 FirstWrite 1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_1363_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_33_1 {
		c {Type O LastRead -1 FirstWrite 1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_1363_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_Pipeline_VITIS_LOOP_61_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_Pipeline_VITIS_LOOP_61_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_5 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_38_194 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload75 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	mp_mul_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_38_194 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload75 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1140 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_5120 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_187 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1141 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_1 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_1_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1213 {
		pts_Z_4 {Type IO LastRead 0 FirstWrite 1}
		zext_ln18_13 {Type I LastRead 0 FirstWrite -1}
		pts_Z {Type IO LastRead 0 FirstWrite 1}
		pts_X_4 {Type IO LastRead 0 FirstWrite 1}
		pts_X {Type IO LastRead 0 FirstWrite 1}
		pt_new_X {Type I LastRead 0 FirstWrite -1}
		pt_new_X_4 {Type I LastRead 0 FirstWrite -1}
		pt_new_Z {Type I LastRead 0 FirstWrite -1}
		pt_new_Z_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln175 {Type I LastRead 0 FirstWrite -1}
		npts_4 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "38809", "Max" : "38809"}
	, {"Name" : "Interval", "Min" : "38809", "Max" : "38809"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	coeff { ap_memory {  { coeff_address0 mem_address 1 6 }  { coeff_ce0 mem_ce 1 1 }  { coeff_q0 mem_dout 0 64 } } }
	npts_4 { ap_none {  { npts_4 in_data 0 32 } } }
	pts_Z_4 { ap_memory {  { pts_Z_4_address0 mem_address 1 6 }  { pts_Z_4_ce0 mem_ce 1 1 }  { pts_Z_4_we0 mem_we 1 1 }  { pts_Z_4_d0 mem_din 1 64 }  { pts_Z_4_q0 mem_dout 0 64 }  { pts_Z_4_address1 MemPortADDR2 1 6 }  { pts_Z_4_ce1 MemPortCE2 1 1 }  { pts_Z_4_q1 MemPortDOUT2 0 64 } } }
	pts_Z { ap_memory {  { pts_Z_address0 mem_address 1 6 }  { pts_Z_ce0 mem_ce 1 1 }  { pts_Z_we0 mem_we 1 1 }  { pts_Z_d0 mem_din 1 64 }  { pts_Z_q0 mem_dout 0 64 }  { pts_Z_address1 MemPortADDR2 1 6 }  { pts_Z_ce1 MemPortCE2 1 1 }  { pts_Z_q1 MemPortDOUT2 0 64 } } }
	pts_X_4 { ap_memory {  { pts_X_4_address0 mem_address 1 6 }  { pts_X_4_ce0 mem_ce 1 1 }  { pts_X_4_we0 mem_we 1 1 }  { pts_X_4_d0 mem_din 1 64 }  { pts_X_4_q0 mem_dout 0 64 }  { pts_X_4_address1 MemPortADDR2 1 6 }  { pts_X_4_ce1 MemPortCE2 1 1 }  { pts_X_4_q1 MemPortDOUT2 0 64 } } }
	pts_X { ap_memory {  { pts_X_address0 mem_address 1 6 }  { pts_X_ce0 mem_ce 1 1 }  { pts_X_we0 mem_we 1 1 }  { pts_X_d0 mem_din 1 64 }  { pts_X_q0 mem_dout 0 64 }  { pts_X_address1 MemPortADDR2 1 6 }  { pts_X_ce1 MemPortCE2 1 1 }  { pts_X_q1 MemPortDOUT2 0 64 } } }
}
