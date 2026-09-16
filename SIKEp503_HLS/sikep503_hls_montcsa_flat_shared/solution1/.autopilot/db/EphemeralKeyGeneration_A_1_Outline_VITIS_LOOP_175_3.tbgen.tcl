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
set cdfgNum 598
set C_modelName {EphemeralKeyGeneration_A.1_Outline_VITIS_LOOP_175_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict coeff { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_Z_4 { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_Z { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_X_4 { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_X { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ coeff int 64 regular {array 48 { 1 1 } 1 1 }  }
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
set portNum 45
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
	{ coeff_address1 sc_out sc_lv 6 signal 0 } 
	{ coeff_ce1 sc_out sc_logic 1 signal 0 } 
	{ coeff_q1 sc_in sc_lv 64 signal 0 } 
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
 	{ "name": "coeff_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coeff", "role": "address1" }} , 
 	{ "name": "coeff_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeff", "role": "ce1" }} , 
 	{ "name": "coeff_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeff", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7", "9", "11", "482"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_175_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26342", "EstimateLatencyMax" : "26342",
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
					{"ID" : "11", "SubInstance" : "grp_eval_4_isog_fu_100", "Port" : "coeff", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "npts_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1276_fu_92", "Port" : "pts_Z_4", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "482", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1277_fu_112", "Port" : "pts_Z_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1275_fu_76", "Port" : "pts_Z", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "482", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1277_fu_112", "Port" : "pts_Z", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "pts_X_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1274_fu_84", "Port" : "pts_X_4", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "482", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1277_fu_112", "Port" : "pts_X_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1273_fu_68", "Port" : "pts_X", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "482", "SubInstance" : "grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1277_fu_112", "Port" : "pts_X", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_eval_4_isog_fu_100", "Port" : "p503x2_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_eval_4_isog_fu_100", "Port" : "p503_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pt_new_Z_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pt_new_X_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1273_fu_68", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1273",
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
			{"Name" : "zext_ln18_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1273_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1275_fu_76", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1275",
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
			{"Name" : "zext_ln18_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1275_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1274_fu_84", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1274",
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
			{"Name" : "zext_ln18_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_X_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1274_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1276_fu_92", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1276",
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
			{"Name" : "zext_ln18_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1276_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100", "Parent" : "0", "Child" : ["12", "13", "14", "23", "29", "106", "183", "266", "272", "331", "390", "399", "405"],
		"CDFG" : "eval_4_isog",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3725", "EstimateLatencyMax" : "3725",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "P_X", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_fpadd503_1515_fu_50", "Port" : "a", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "23", "SubInstance" : "grp_fpsub503_27_fu_71", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "29", "SubInstance" : "grp_fp2mul503_mont_436_fu_91", "Port" : "c", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "266", "SubInstance" : "grp_fpsub503_2_4_fu_123", "Port" : "a", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "390", "SubInstance" : "grp_fpadd503_1528_fu_154", "Port" : "c", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "405", "SubInstance" : "grp_fp2mul503_mont_3301_fu_188", "Port" : "c", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "P_Z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_fpadd503_1515_fu_50", "Port" : "b", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "23", "SubInstance" : "grp_fpsub503_27_fu_71", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "29", "SubInstance" : "grp_fp2mul503_mont_436_fu_91", "Port" : "c", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "266", "SubInstance" : "grp_fpsub503_2_4_fu_123", "Port" : "c", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "331", "SubInstance" : "grp_fp2sqr503_mont_fu_146", "Port" : "c", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "399", "SubInstance" : "grp_fpsub503_2_32_fu_173", "Port" : "a", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "405", "SubInstance" : "grp_fp2mul503_mont_3301_fu_188", "Port" : "c", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_fp2mul503_mont_436_fu_91", "Port" : "coeff", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "183", "SubInstance" : "grp_fp2mul503_mont_44_fu_114", "Port" : "coeff", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_fpadd503_1515_fu_50", "Port" : "p503x2_1", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "23", "SubInstance" : "grp_fpsub503_27_fu_71", "Port" : "p503x2_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "266", "SubInstance" : "grp_fpsub503_2_4_fu_123", "Port" : "p503x2_1", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "272", "SubInstance" : "grp_fp2sqr503_mont_2_1_fu_139", "Port" : "p503x2_1", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "331", "SubInstance" : "grp_fp2sqr503_mont_fu_146", "Port" : "p503x2_1", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "390", "SubInstance" : "grp_fpadd503_1528_fu_154", "Port" : "p503x2_1", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "399", "SubInstance" : "grp_fpsub503_2_32_fu_173", "Port" : "p503x2_1", "Inst_start_state" : "29", "Inst_end_state" : "30"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_fp2mul503_mont_436_fu_91", "Port" : "p503_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "106", "SubInstance" : "grp_fp2mul503_mont_331_2_fu_106", "Port" : "p503_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "183", "SubInstance" : "grp_fp2mul503_mont_44_fu_114", "Port" : "p503_1", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "405", "SubInstance" : "grp_fp2mul503_mont_3301_fu_188", "Port" : "p503_1", "Inst_start_state" : "31", "Inst_end_state" : "32"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.t0_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.t1_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1515_fu_50", "Parent" : "11", "Child" : ["15", "17", "20"],
		"CDFG" : "fpadd503_1515",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
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
					{"ID" : "15", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "17", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_40_2_fu_63", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "20", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_47_3_fu_73", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_40_2_fu_63", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "20", "SubInstance" : "grp_fpadd503_1515_Pipeline_VITIS_LOOP_47_3_fu_73", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1515_fu_50.grp_fpadd503_1515_Pipeline_VITIS_LOOP_34_1_fu_50", "Parent" : "14", "Child" : ["16"],
		"CDFG" : "fpadd503_1515_Pipeline_VITIS_LOOP_34_1",
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
			{"Name" : "zext_ln36_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1515_fu_50.grp_fpadd503_1515_Pipeline_VITIS_LOOP_34_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1515_fu_50.grp_fpadd503_1515_Pipeline_VITIS_LOOP_40_2_fu_63", "Parent" : "14", "Child" : ["18", "19"],
		"CDFG" : "fpadd503_1515_Pipeline_VITIS_LOOP_40_2",
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
			{"Name" : "zext_ln36_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1515_fu_50.grp_fpadd503_1515_Pipeline_VITIS_LOOP_40_2_fu_63.p503x2_1_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1515_fu_50.grp_fpadd503_1515_Pipeline_VITIS_LOOP_40_2_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1515_fu_50.grp_fpadd503_1515_Pipeline_VITIS_LOOP_47_3_fu_73", "Parent" : "14", "Child" : ["21", "22"],
		"CDFG" : "fpadd503_1515_Pipeline_VITIS_LOOP_47_3",
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
			{"Name" : "zext_ln36_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1515_fu_50.grp_fpadd503_1515_Pipeline_VITIS_LOOP_47_3_fu_73.p503x2_1_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1515_fu_50.grp_fpadd503_1515_Pipeline_VITIS_LOOP_47_3_fu_73.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_27_fu_71", "Parent" : "11", "Child" : ["24", "26"],
		"CDFG" : "fpsub503_27",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_27_fu_71.grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48", "Parent" : "23", "Child" : ["25"],
		"CDFG" : "fpsub503_27_Pipeline_VITIS_LOOP_62_1",
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
			{"Name" : "zext_ln64_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln64_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln64_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_27_fu_71.grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_27_fu_71.grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62", "Parent" : "23", "Child" : ["27", "28"],
		"CDFG" : "fpsub503_27_Pipeline_VITIS_LOOP_69_2",
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
			{"Name" : "zext_ln64_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_27_fu_71.grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62.p503x2_1_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_27_fu_71.grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91", "Parent" : "11", "Child" : ["30", "31", "32", "33", "34", "35", "41", "43", "45", "47", "50", "52", "98", "104"],
		"CDFG" : "fp2mul503_mont_436",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "558", "EstimateLatencyMax" : "558",
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
					{"ID" : "35", "SubInstance" : "grp_mp_mul_51_fu_68", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "41", "SubInstance" : "grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1_fu_83", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_mp_mul_51_fu_68", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "43", "SubInstance" : "grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1182_fu_90", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_rdc_mont_298_fu_121", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_209_1_fu_107", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.t1_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.t2_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.tt1_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.tt2_U", "Parent" : "29"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.tt3_U", "Parent" : "29"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_mp_mul_51_fu_68", "Parent" : "29", "Child" : ["36"],
		"CDFG" : "mp_mul_51",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "36", "SubInstance" : "grp_mul_60_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_mul_60_fu_28", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_mul_60_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_mp_mul_51_fu_68.grp_mul_60_fu_28", "Parent" : "35", "Child" : ["37"],
		"CDFG" : "mul_60",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "128", "EstimateLatencyMax" : "128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mul_60_Pipeline_COL_fu_328", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328", "Parent" : "36", "Child" : ["38", "39", "40"],
		"CDFG" : "mul_60_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_589_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328.mul_64ns_64ns_128_1_1_U1356", "Parent" : "37"},
	{"ID" : "39", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328.sparsemux_31_4_64_1_1_U1357", "Parent" : "37"},
	{"ID" : "40", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1_fu_83", "Parent" : "29", "Child" : ["42"],
		"CDFG" : "fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1",
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
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1_fu_83.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1182_fu_90", "Parent" : "29", "Child" : ["44"],
		"CDFG" : "fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1182",
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
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln205", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1182_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1_fu_99", "Parent" : "29", "Child" : ["46"],
		"CDFG" : "fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_209_1_fu_107", "Parent" : "29", "Child" : ["48", "49"],
		"CDFG" : "fp2mul503_mont_436_Pipeline_VITIS_LOOP_209_1",
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
			{"Name" : "sext_ln201", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_209_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_209_1_fu_107.p503_1_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_209_1_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1183_fu_115", "Parent" : "29", "Child" : ["51"],
		"CDFG" : "fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1183",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1183_fu_115.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121", "Parent" : "29", "Child" : ["53", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "73", "78", "83", "88", "93"],
		"CDFG" : "rdc_mont_298",
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
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_rdc_mont_298_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_rdc_mont_298_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "52", "Child" : ["54"],
		"CDFG" : "rdc_mont_298_Pipeline_VITIS_LOOP_299_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln301", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_299_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_rdc_mont_298_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_305", "Parent" : "52",
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_312", "Parent" : "52",
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
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_319", "Parent" : "52",
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
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_325", "Parent" : "52",
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
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_331", "Parent" : "52",
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
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_338", "Parent" : "52",
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
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_345", "Parent" : "52",
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
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_351", "Parent" : "52",
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
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_358", "Parent" : "52",
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_367", "Parent" : "52",
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
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_is_digit_lessthan_ct_fu_374", "Parent" : "52",
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
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.tmp_44_is_digit_lessthan_ct_fu_380", "Parent" : "52",
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.tmp_45_is_digit_lessthan_ct_fu_387", "Parent" : "52",
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
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_394", "Parent" : "52", "Child" : ["69", "70", "71", "72"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U399", "Parent" : "68"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U400", "Parent" : "68"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U401", "Parent" : "68"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U402", "Parent" : "68"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_401", "Parent" : "52", "Child" : ["74", "75", "76", "77"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U399", "Parent" : "73"},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U400", "Parent" : "73"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U401", "Parent" : "73"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U402", "Parent" : "73"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_408", "Parent" : "52", "Child" : ["79", "80", "81", "82"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U399", "Parent" : "78"},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U400", "Parent" : "78"},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U401", "Parent" : "78"},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U402", "Parent" : "78"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_415", "Parent" : "52", "Child" : ["84", "85", "86", "87"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U399", "Parent" : "83"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U400", "Parent" : "83"},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U401", "Parent" : "83"},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U402", "Parent" : "83"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_422", "Parent" : "52", "Child" : ["89", "90", "91", "92"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U399", "Parent" : "88"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U400", "Parent" : "88"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U401", "Parent" : "88"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U402", "Parent" : "88"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_429", "Parent" : "52", "Child" : ["94", "95", "96", "97"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U399", "Parent" : "93"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U400", "Parent" : "93"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U401", "Parent" : "93"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_rdc_mont_298_fu_121.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U402", "Parent" : "93"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_mp_mul_5149_fu_131", "Parent" : "29", "Child" : ["99"],
		"CDFG" : "mp_mul_5149",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "99", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_mp_mul_5149_fu_131.grp_mul_4157_fu_8", "Parent" : "98", "Child" : ["100"],
		"CDFG" : "mul_4157",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "128", "EstimateLatencyMax" : "128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_mul_4157_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_mp_mul_5149_fu_131.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306", "Parent" : "99", "Child" : ["101", "102", "103"],
		"CDFG" : "mul_4157_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_590_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_mp_mul_5149_fu_131.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U411", "Parent" : "100"},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_mp_mul_5149_fu_131.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U412", "Parent" : "100"},
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_mp_mul_5149_fu_131.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "100"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1184_fu_138", "Parent" : "29", "Child" : ["105"],
		"CDFG" : "fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1184",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_436_fu_91.grp_fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1184_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106", "Parent" : "11", "Child" : ["107", "108", "109", "110", "111", "112", "118", "120", "122", "124", "127", "129", "175", "181"],
		"CDFG" : "fp2mul503_mont_331_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "536", "EstimateLatencyMax" : "536",
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
					{"ID" : "112", "SubInstance" : "grp_mp_mul_514743_fu_54", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "118", "SubInstance" : "grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1_fu_70", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "129", "SubInstance" : "grp_rdc_mont_1_fu_106", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_mp_mul_514743_fu_54", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "120", "SubInstance" : "grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1191_fu_77", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_209_1_fu_92", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.t1_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.t2_U", "Parent" : "106"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.tt1_U", "Parent" : "106"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.tt2_U", "Parent" : "106"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.tt3_U", "Parent" : "106"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_mp_mul_514743_fu_54", "Parent" : "106", "Child" : ["113"],
		"CDFG" : "mp_mul_514743",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "113", "SubInstance" : "grp_mul_245_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_mul_245_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_mul_245_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_mp_mul_514743_fu_54.grp_mul_245_fu_26", "Parent" : "112", "Child" : ["114"],
		"CDFG" : "mul_245",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "128", "EstimateLatencyMax" : "128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_mul_245_Pipeline_COL_fu_326", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_mp_mul_514743_fu_54.grp_mul_245_fu_26.grp_mul_245_Pipeline_COL_fu_326", "Parent" : "113", "Child" : ["115", "116", "117"],
		"CDFG" : "mul_245_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zext_ln69_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_597_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_mp_mul_514743_fu_54.grp_mul_245_fu_26.grp_mul_245_Pipeline_COL_fu_326.mul_64ns_64ns_128_1_1_U352", "Parent" : "114"},
	{"ID" : "116", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_mp_mul_514743_fu_54.grp_mul_245_fu_26.grp_mul_245_Pipeline_COL_fu_326.sparsemux_31_4_64_1_1_U353", "Parent" : "114"},
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_mp_mul_514743_fu_54.grp_mul_245_fu_26.grp_mul_245_Pipeline_COL_fu_326.flow_control_loop_pipe_sequential_init_U", "Parent" : "114"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1_fu_70", "Parent" : "106", "Child" : ["119"],
		"CDFG" : "fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1191_fu_77", "Parent" : "106", "Child" : ["121"],
		"CDFG" : "fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1191",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1191_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1_fu_84", "Parent" : "106", "Child" : ["123"],
		"CDFG" : "fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_209_1_fu_92", "Parent" : "106", "Child" : ["125", "126"],
		"CDFG" : "fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_209_1",
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
			{"Name" : "sext_ln201", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_209_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_209_1_fu_92.p503_1_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_209_1_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1192_fu_100", "Parent" : "106", "Child" : ["128"],
		"CDFG" : "fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1192",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1192_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106", "Parent" : "106", "Child" : ["130", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "150", "155", "160", "165", "170"],
		"CDFG" : "rdc_mont_1",
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
					{"ID" : "130", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "129", "Child" : ["131"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_299_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln301", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_299_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_305", "Parent" : "129",
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
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_312", "Parent" : "129",
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
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_319", "Parent" : "129",
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
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_325", "Parent" : "129",
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
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_331", "Parent" : "129",
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
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_338", "Parent" : "129",
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
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_345", "Parent" : "129",
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
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_351", "Parent" : "129",
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
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_358", "Parent" : "129",
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
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_367", "Parent" : "129",
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
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_374", "Parent" : "129",
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
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.tmp_45_is_digit_lessthan_ct_fu_380", "Parent" : "129",
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
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.tmp_46_is_digit_lessthan_ct_fu_387", "Parent" : "129",
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
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394", "Parent" : "129", "Child" : ["146", "147", "148", "149"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U399", "Parent" : "145"},
	{"ID" : "147", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U400", "Parent" : "145"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U401", "Parent" : "145"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U402", "Parent" : "145"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401", "Parent" : "129", "Child" : ["151", "152", "153", "154"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U399", "Parent" : "150"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U400", "Parent" : "150"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U401", "Parent" : "150"},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U402", "Parent" : "150"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408", "Parent" : "129", "Child" : ["156", "157", "158", "159"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U399", "Parent" : "155"},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U400", "Parent" : "155"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U401", "Parent" : "155"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U402", "Parent" : "155"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415", "Parent" : "129", "Child" : ["161", "162", "163", "164"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U399", "Parent" : "160"},
	{"ID" : "162", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U400", "Parent" : "160"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U401", "Parent" : "160"},
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U402", "Parent" : "160"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422", "Parent" : "129", "Child" : ["166", "167", "168", "169"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U399", "Parent" : "165"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U400", "Parent" : "165"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U401", "Parent" : "165"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U402", "Parent" : "165"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429", "Parent" : "129", "Child" : ["171", "172", "173", "174"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U399", "Parent" : "170"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U400", "Parent" : "170"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U401", "Parent" : "170"},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U402", "Parent" : "170"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_mp_mul_5149_fu_116", "Parent" : "106", "Child" : ["176"],
		"CDFG" : "mp_mul_5149",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "176", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8", "Parent" : "175", "Child" : ["177"],
		"CDFG" : "mul_4157",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "128", "EstimateLatencyMax" : "128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_mul_4157_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306", "Parent" : "176", "Child" : ["178", "179", "180"],
		"CDFG" : "mul_4157_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_590_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "178", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U411", "Parent" : "177"},
	{"ID" : "179", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U412", "Parent" : "177"},
	{"ID" : "180", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "177"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1193_fu_123", "Parent" : "106", "Child" : ["182"],
		"CDFG" : "fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1193",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_331_2_fu_106.grp_fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1193_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114", "Parent" : "11", "Child" : ["184", "185", "186", "187", "188", "189", "195", "201", "203", "205", "207", "210", "212", "258", "264"],
		"CDFG" : "fp2mul503_mont_44",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "536", "EstimateLatencyMax" : "536",
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
					{"ID" : "189", "SubInstance" : "grp_mp_mul_52_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "195", "SubInstance" : "grp_mp_mul_51_fu_68", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "201", "SubInstance" : "grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1_fu_81", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "212", "SubInstance" : "grp_rdc_mont_1_fu_117", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "189", "SubInstance" : "grp_mp_mul_52_fu_58", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "195", "SubInstance" : "grp_mp_mul_51_fu_68", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "203", "SubInstance" : "grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1179_fu_88", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_209_1_fu_103", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.t1_U", "Parent" : "183"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.t2_U", "Parent" : "183"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.tt1_U", "Parent" : "183"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.tt2_U", "Parent" : "183"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.tt3_U", "Parent" : "183"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_52_fu_58", "Parent" : "183", "Child" : ["190"],
		"CDFG" : "mp_mul_52",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "190", "SubInstance" : "grp_mul_61_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_mul_61_fu_8", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_mul_61_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_52_fu_58.grp_mul_61_fu_8", "Parent" : "189", "Child" : ["191"],
		"CDFG" : "mul_61",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "128", "EstimateLatencyMax" : "128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_mul_61_Pipeline_COL_fu_306", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_52_fu_58.grp_mul_61_fu_8.grp_mul_61_Pipeline_COL_fu_306", "Parent" : "190", "Child" : ["192", "193", "194"],
		"CDFG" : "mul_61_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_588_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "192", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_52_fu_58.grp_mul_61_fu_8.grp_mul_61_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U1410", "Parent" : "191"},
	{"ID" : "193", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_52_fu_58.grp_mul_61_fu_8.grp_mul_61_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U1411", "Parent" : "191"},
	{"ID" : "194", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_52_fu_58.grp_mul_61_fu_8.grp_mul_61_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "191"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_51_fu_68", "Parent" : "183", "Child" : ["196"],
		"CDFG" : "mp_mul_51",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "196", "SubInstance" : "grp_mul_60_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_mul_60_fu_28", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_mul_60_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_51_fu_68.grp_mul_60_fu_28", "Parent" : "195", "Child" : ["197"],
		"CDFG" : "mul_60",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "128", "EstimateLatencyMax" : "128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_mul_60_Pipeline_COL_fu_328", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328", "Parent" : "196", "Child" : ["198", "199", "200"],
		"CDFG" : "mul_60_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_589_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "198", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328.mul_64ns_64ns_128_1_1_U1356", "Parent" : "197"},
	{"ID" : "199", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328.sparsemux_31_4_64_1_1_U1357", "Parent" : "197"},
	{"ID" : "200", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_51_fu_68.grp_mul_60_fu_28.grp_mul_60_Pipeline_COL_fu_328.flow_control_loop_pipe_sequential_init_U", "Parent" : "197"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1_fu_81", "Parent" : "183", "Child" : ["202"],
		"CDFG" : "fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1_fu_81.flow_control_loop_pipe_sequential_init_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1179_fu_88", "Parent" : "183", "Child" : ["204"],
		"CDFG" : "fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1179",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1179_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "203"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1_fu_95", "Parent" : "183", "Child" : ["206"],
		"CDFG" : "fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1_fu_95.flow_control_loop_pipe_sequential_init_U", "Parent" : "205"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_209_1_fu_103", "Parent" : "183", "Child" : ["208", "209"],
		"CDFG" : "fp2mul503_mont_44_Pipeline_VITIS_LOOP_209_1",
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
			{"Name" : "sext_ln201", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_209_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_209_1_fu_103.p503_1_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_209_1_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "207"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1180_fu_111", "Parent" : "183", "Child" : ["211"],
		"CDFG" : "fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1180",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1180_fu_111.flow_control_loop_pipe_sequential_init_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117", "Parent" : "183", "Child" : ["213", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "233", "238", "243", "248", "253"],
		"CDFG" : "rdc_mont_1",
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
					{"ID" : "213", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "212", "Child" : ["214"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_299_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln301", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_299_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "214", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_305", "Parent" : "212",
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
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_312", "Parent" : "212",
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
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_319", "Parent" : "212",
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
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_325", "Parent" : "212",
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
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_331", "Parent" : "212",
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
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_338", "Parent" : "212",
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
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_345", "Parent" : "212",
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
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_351", "Parent" : "212",
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
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_358", "Parent" : "212",
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
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_367", "Parent" : "212",
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
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_is_digit_lessthan_ct_fu_374", "Parent" : "212",
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
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.tmp_45_is_digit_lessthan_ct_fu_380", "Parent" : "212",
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
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.tmp_46_is_digit_lessthan_ct_fu_387", "Parent" : "212",
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
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_394", "Parent" : "212", "Child" : ["229", "230", "231", "232"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "229", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U399", "Parent" : "228"},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U400", "Parent" : "228"},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U401", "Parent" : "228"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U402", "Parent" : "228"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_401", "Parent" : "212", "Child" : ["234", "235", "236", "237"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U399", "Parent" : "233"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U400", "Parent" : "233"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U401", "Parent" : "233"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U402", "Parent" : "233"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_408", "Parent" : "212", "Child" : ["239", "240", "241", "242"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U399", "Parent" : "238"},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U400", "Parent" : "238"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U401", "Parent" : "238"},
	{"ID" : "242", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U402", "Parent" : "238"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_415", "Parent" : "212", "Child" : ["244", "245", "246", "247"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U399", "Parent" : "243"},
	{"ID" : "245", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U400", "Parent" : "243"},
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U401", "Parent" : "243"},
	{"ID" : "247", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U402", "Parent" : "243"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_422", "Parent" : "212", "Child" : ["249", "250", "251", "252"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "249", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U399", "Parent" : "248"},
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U400", "Parent" : "248"},
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U401", "Parent" : "248"},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U402", "Parent" : "248"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_429", "Parent" : "212", "Child" : ["254", "255", "256", "257"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U399", "Parent" : "253"},
	{"ID" : "255", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U400", "Parent" : "253"},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U401", "Parent" : "253"},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_rdc_mont_1_fu_117.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U402", "Parent" : "253"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_5149_fu_127", "Parent" : "183", "Child" : ["259"],
		"CDFG" : "mp_mul_5149",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "259", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_5149_fu_127.grp_mul_4157_fu_8", "Parent" : "258", "Child" : ["260"],
		"CDFG" : "mul_4157",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "128", "EstimateLatencyMax" : "128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_mul_4157_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_5149_fu_127.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306", "Parent" : "259", "Child" : ["261", "262", "263"],
		"CDFG" : "mul_4157_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_590_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "261", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_5149_fu_127.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U411", "Parent" : "260"},
	{"ID" : "262", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_5149_fu_127.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U412", "Parent" : "260"},
	{"ID" : "263", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_mp_mul_5149_fu_127.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "260"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1181_fu_134", "Parent" : "183", "Child" : ["265"],
		"CDFG" : "fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1181",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_44_fu_114.grp_fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1181_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_2_4_fu_123", "Parent" : "11", "Child" : ["267", "269"],
		"CDFG" : "fpsub503_2_4",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "grp_fpsub503_2_4_Pipeline_VITIS_LOOP_62_1_fu_38", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "grp_fpsub503_2_4_Pipeline_VITIS_LOOP_62_1_fu_38", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "269", "SubInstance" : "grp_fpsub503_2_4_Pipeline_VITIS_LOOP_69_2_fu_49", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_fpsub503_2_4_Pipeline_VITIS_LOOP_69_2_fu_49", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_2_4_fu_123.grp_fpsub503_2_4_Pipeline_VITIS_LOOP_62_1_fu_38", "Parent" : "266", "Child" : ["268"],
		"CDFG" : "fpsub503_2_4_Pipeline_VITIS_LOOP_62_1",
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
			{"Name" : "zext_ln64_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln64_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_2_4_fu_123.grp_fpsub503_2_4_Pipeline_VITIS_LOOP_62_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_2_4_fu_123.grp_fpsub503_2_4_Pipeline_VITIS_LOOP_69_2_fu_49", "Parent" : "266", "Child" : ["270", "271"],
		"CDFG" : "fpsub503_2_4_Pipeline_VITIS_LOOP_69_2",
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
			{"Name" : "zext_ln64_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "270", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_2_4_fu_123.grp_fpsub503_2_4_Pipeline_VITIS_LOOP_69_2_fu_49.p503x2_1_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_2_4_fu_123.grp_fpsub503_2_4_Pipeline_VITIS_LOOP_69_2_fu_49.flow_control_loop_pipe_sequential_init_U", "Parent" : "269"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139", "Parent" : "11", "Child" : ["273", "274", "275", "276", "278", "280", "283", "285", "311"],
		"CDFG" : "fp2sqr503_mont_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "79", "EstimateLatencyMax" : "79",
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
					{"ID" : "276", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1_fu_34", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "278", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1_fu_42", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "283", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1169_fu_58", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "285", "SubInstance" : "grp_fpmul503_mont_6_fu_65", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "311", "SubInstance" : "grp_fpmul503_mont_5_1_fu_73", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2_fu_50", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.t1_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.t2_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.t3_U", "Parent" : "272"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1_fu_34", "Parent" : "272", "Child" : ["277"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1_fu_42", "Parent" : "272", "Child" : ["279"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2_fu_50", "Parent" : "272", "Child" : ["281", "282"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2_fu_50.p503x2_1_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1169_fu_58", "Parent" : "272", "Child" : ["284"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1169",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "284", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1169_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65", "Parent" : "272", "Child" : ["286"],
		"CDFG" : "fpmul503_mont_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
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
					{"ID" : "286", "SubInstance" : "grp_mul_4_1_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "286", "SubInstance" : "grp_mul_4_1_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "286", "SubInstance" : "grp_mul_4_1_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8", "Parent" : "285", "Child" : ["287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310"],
		"CDFG" : "mul_4_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "287", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U893", "Parent" : "286"},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U894", "Parent" : "286"},
	{"ID" : "289", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U895", "Parent" : "286"},
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U896", "Parent" : "286"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U897", "Parent" : "286"},
	{"ID" : "292", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U898", "Parent" : "286"},
	{"ID" : "293", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U899", "Parent" : "286"},
	{"ID" : "294", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U900", "Parent" : "286"},
	{"ID" : "295", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U901", "Parent" : "286"},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U902", "Parent" : "286"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U903", "Parent" : "286"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U904", "Parent" : "286"},
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U905", "Parent" : "286"},
	{"ID" : "300", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_56ns_119_1_1_U906", "Parent" : "286"},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_62ns_125_1_1_U907", "Parent" : "286"},
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_62ns_125_1_1_U908", "Parent" : "286"},
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_64ns_127_1_1_U909", "Parent" : "286"},
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_65ns_128_1_1_U910", "Parent" : "286"},
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64ns_65ns_128_1_1_U911", "Parent" : "286"},
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64s_64ns_64_1_1_U912", "Parent" : "286"},
	{"ID" : "307", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64s_64ns_64_1_1_U913", "Parent" : "286"},
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64s_62ns_64_1_1_U914", "Parent" : "286"},
	{"ID" : "309", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64s_62ns_64_1_1_U915", "Parent" : "286"},
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_6_fu_65.grp_mul_4_1_fu_8.mul_64s_64s_64_1_1_U916", "Parent" : "286"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73", "Parent" : "272", "Child" : ["312"],
		"CDFG" : "fpmul503_mont_5_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
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
					{"ID" : "312", "SubInstance" : "grp_mul_5_1_fu_6", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "312", "SubInstance" : "grp_mul_5_1_fu_6", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6", "Parent" : "311", "Child" : ["313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330"],
		"CDFG" : "mul_5_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U923", "Parent" : "312"},
	{"ID" : "314", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U924", "Parent" : "312"},
	{"ID" : "315", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U925", "Parent" : "312"},
	{"ID" : "316", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U926", "Parent" : "312"},
	{"ID" : "317", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U927", "Parent" : "312"},
	{"ID" : "318", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U928", "Parent" : "312"},
	{"ID" : "319", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U929", "Parent" : "312"},
	{"ID" : "320", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_56ns_119_1_1_U930", "Parent" : "312"},
	{"ID" : "321", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_62ns_125_1_1_U931", "Parent" : "312"},
	{"ID" : "322", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_62ns_125_1_1_U932", "Parent" : "312"},
	{"ID" : "323", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_64ns_127_1_1_U933", "Parent" : "312"},
	{"ID" : "324", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_65ns_128_1_1_U934", "Parent" : "312"},
	{"ID" : "325", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64ns_65ns_128_1_1_U935", "Parent" : "312"},
	{"ID" : "326", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64s_64ns_64_1_1_U936", "Parent" : "312"},
	{"ID" : "327", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64s_64ns_64_1_1_U937", "Parent" : "312"},
	{"ID" : "328", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64s_62ns_64_1_1_U938", "Parent" : "312"},
	{"ID" : "329", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64s_62ns_64_1_1_U939", "Parent" : "312"},
	{"ID" : "330", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_2_1_fu_139.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_fu_6.mul_64s_64s_64_1_1_U940", "Parent" : "312"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146", "Parent" : "11", "Child" : ["332", "333", "334", "335", "337", "339", "342", "344", "370"],
		"CDFG" : "fp2sqr503_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "79", "EstimateLatencyMax" : "79",
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
					{"ID" : "335", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1_fu_34", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "337", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_62_1_fu_42", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "342", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1172_fu_58", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "344", "SubInstance" : "grp_fpmul503_mont_4_fu_65", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "370", "SubInstance" : "grp_fpmul503_mont_3_fu_73", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_69_2_fu_50", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.t1_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.t2_U", "Parent" : "331"},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.t3_U", "Parent" : "331"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1_fu_34", "Parent" : "331", "Child" : ["336"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_62_1_fu_42", "Parent" : "331", "Child" : ["338"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_62_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "338", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_62_1_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "337"},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_69_2_fu_50", "Parent" : "331", "Child" : ["340", "341"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_69_2",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "340", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_69_2_fu_50.p503x2_1_U", "Parent" : "339"},
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_69_2_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "339"},
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1172_fu_58", "Parent" : "331", "Child" : ["343"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1172",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1172_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "342"},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65", "Parent" : "331", "Child" : ["345"],
		"CDFG" : "fpmul503_mont_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
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
					{"ID" : "345", "SubInstance" : "grp_mul_6_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_mul_6_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_mul_6_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "345", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8", "Parent" : "344", "Child" : ["346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369"],
		"CDFG" : "mul_6",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U253", "Parent" : "345"},
	{"ID" : "347", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U254", "Parent" : "345"},
	{"ID" : "348", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U255", "Parent" : "345"},
	{"ID" : "349", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U256", "Parent" : "345"},
	{"ID" : "350", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U257", "Parent" : "345"},
	{"ID" : "351", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U258", "Parent" : "345"},
	{"ID" : "352", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U259", "Parent" : "345"},
	{"ID" : "353", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U260", "Parent" : "345"},
	{"ID" : "354", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U261", "Parent" : "345"},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U262", "Parent" : "345"},
	{"ID" : "356", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U263", "Parent" : "345"},
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U264", "Parent" : "345"},
	{"ID" : "358", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U265", "Parent" : "345"},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_56ns_119_1_1_U266", "Parent" : "345"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_62ns_125_1_1_U267", "Parent" : "345"},
	{"ID" : "361", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_62ns_125_1_1_U268", "Parent" : "345"},
	{"ID" : "362", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_64ns_127_1_1_U269", "Parent" : "345"},
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_65ns_128_1_1_U270", "Parent" : "345"},
	{"ID" : "364", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64ns_65ns_128_1_1_U271", "Parent" : "345"},
	{"ID" : "365", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64s_64ns_64_1_1_U272", "Parent" : "345"},
	{"ID" : "366", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64s_64ns_64_1_1_U273", "Parent" : "345"},
	{"ID" : "367", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64s_62ns_64_1_1_U274", "Parent" : "345"},
	{"ID" : "368", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64s_62ns_64_1_1_U275", "Parent" : "345"},
	{"ID" : "369", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_4_fu_65.grp_mul_6_fu_8.mul_64s_64s_64_1_1_U276", "Parent" : "345"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73", "Parent" : "331", "Child" : ["371"],
		"CDFG" : "fpmul503_mont_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
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
					{"ID" : "371", "SubInstance" : "grp_mul_7_fu_6", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_mul_7_fu_6", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "371", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6", "Parent" : "370", "Child" : ["372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389"],
		"CDFG" : "mul_7",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "372", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1476", "Parent" : "371"},
	{"ID" : "373", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1477", "Parent" : "371"},
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1478", "Parent" : "371"},
	{"ID" : "375", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1479", "Parent" : "371"},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1480", "Parent" : "371"},
	{"ID" : "377", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1481", "Parent" : "371"},
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_128_1_1_U1482", "Parent" : "371"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_56ns_119_1_1_U1483", "Parent" : "371"},
	{"ID" : "380", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_62ns_125_1_1_U1484", "Parent" : "371"},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_62ns_125_1_1_U1485", "Parent" : "371"},
	{"ID" : "382", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_64ns_127_1_1_U1486", "Parent" : "371"},
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_65ns_128_1_1_U1487", "Parent" : "371"},
	{"ID" : "384", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64ns_65ns_128_1_1_U1488", "Parent" : "371"},
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64s_64ns_64_1_1_U1489", "Parent" : "371"},
	{"ID" : "386", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64s_64ns_64_1_1_U1490", "Parent" : "371"},
	{"ID" : "387", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64s_62ns_64_1_1_U1491", "Parent" : "371"},
	{"ID" : "388", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64s_62ns_64_1_1_U1492", "Parent" : "371"},
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2sqr503_mont_fu_146.grp_fpmul503_mont_3_fu_73.grp_mul_7_fu_6.mul_64s_64s_64_1_1_U1493", "Parent" : "371"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1528_fu_154", "Parent" : "11", "Child" : ["391", "393", "396"],
		"CDFG" : "fpadd503_1528",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
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
					{"ID" : "391", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "391", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "391", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "393", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_40_2_fu_63", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "396", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_47_3_fu_73", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "393", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_40_2_fu_63", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "396", "SubInstance" : "grp_fpadd503_1528_Pipeline_VITIS_LOOP_47_3_fu_73", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1528_fu_154.grp_fpadd503_1528_Pipeline_VITIS_LOOP_34_1_fu_50", "Parent" : "390", "Child" : ["392"],
		"CDFG" : "fpadd503_1528_Pipeline_VITIS_LOOP_34_1",
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
			{"Name" : "zext_ln36_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "392", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1528_fu_154.grp_fpadd503_1528_Pipeline_VITIS_LOOP_34_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "391"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1528_fu_154.grp_fpadd503_1528_Pipeline_VITIS_LOOP_40_2_fu_63", "Parent" : "390", "Child" : ["394", "395"],
		"CDFG" : "fpadd503_1528_Pipeline_VITIS_LOOP_40_2",
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
			{"Name" : "zext_ln36_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1528_fu_154.grp_fpadd503_1528_Pipeline_VITIS_LOOP_40_2_fu_63.p503x2_1_U", "Parent" : "393"},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1528_fu_154.grp_fpadd503_1528_Pipeline_VITIS_LOOP_40_2_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "393"},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1528_fu_154.grp_fpadd503_1528_Pipeline_VITIS_LOOP_47_3_fu_73", "Parent" : "390", "Child" : ["397", "398"],
		"CDFG" : "fpadd503_1528_Pipeline_VITIS_LOOP_47_3",
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
			{"Name" : "zext_ln36_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1528_fu_154.grp_fpadd503_1528_Pipeline_VITIS_LOOP_47_3_fu_73.p503x2_1_U", "Parent" : "396"},
	{"ID" : "398", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpadd503_1528_fu_154.grp_fpadd503_1528_Pipeline_VITIS_LOOP_47_3_fu_73.flow_control_loop_pipe_sequential_init_U", "Parent" : "396"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_2_32_fu_173", "Parent" : "11", "Child" : ["400", "402"],
		"CDFG" : "fpsub503_2_32",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "400", "SubInstance" : "grp_fpsub503_2_32_Pipeline_VITIS_LOOP_62_1_fu_38", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "400", "SubInstance" : "grp_fpsub503_2_32_Pipeline_VITIS_LOOP_62_1_fu_38", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "402", "SubInstance" : "grp_fpsub503_2_32_Pipeline_VITIS_LOOP_69_2_fu_49", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "402", "SubInstance" : "grp_fpsub503_2_32_Pipeline_VITIS_LOOP_69_2_fu_49", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_2_32_fu_173.grp_fpsub503_2_32_Pipeline_VITIS_LOOP_62_1_fu_38", "Parent" : "399", "Child" : ["401"],
		"CDFG" : "fpsub503_2_32_Pipeline_VITIS_LOOP_62_1",
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
			{"Name" : "zext_ln64_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln64_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "401", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_2_32_fu_173.grp_fpsub503_2_32_Pipeline_VITIS_LOOP_62_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "400"},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_2_32_fu_173.grp_fpsub503_2_32_Pipeline_VITIS_LOOP_69_2_fu_49", "Parent" : "399", "Child" : ["403", "404"],
		"CDFG" : "fpsub503_2_32_Pipeline_VITIS_LOOP_69_2",
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
			{"Name" : "zext_ln64_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "403", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_2_32_fu_173.grp_fpsub503_2_32_Pipeline_VITIS_LOOP_69_2_fu_49.p503x2_1_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fpsub503_2_32_fu_173.grp_fpsub503_2_32_Pipeline_VITIS_LOOP_69_2_fu_49.flow_control_loop_pipe_sequential_init_U", "Parent" : "402"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188", "Parent" : "11", "Child" : ["406", "407", "408", "409", "410", "411", "417", "419", "421", "423", "426", "428", "474", "480"],
		"CDFG" : "fp2mul503_mont_3301",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "558", "EstimateLatencyMax" : "558",
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
					{"ID" : "411", "SubInstance" : "grp_mp_mul_5146100_fu_54", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "417", "SubInstance" : "grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1_fu_70", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "428", "SubInstance" : "grp_rdc_mont_298_fu_106", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_mp_mul_5146100_fu_54", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "419", "SubInstance" : "grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1200_fu_77", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "423", "SubInstance" : "grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_209_1_fu_92", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.t1_U", "Parent" : "405"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.t2_U", "Parent" : "405"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.tt1_U", "Parent" : "405"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.tt2_U", "Parent" : "405"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.tt3_U", "Parent" : "405"},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_mp_mul_5146100_fu_54", "Parent" : "405", "Child" : ["412"],
		"CDFG" : "mp_mul_5146100",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "412", "SubInstance" : "grp_mul_3101_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "412", "SubInstance" : "grp_mul_3101_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "412", "SubInstance" : "grp_mul_3101_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "412", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_mp_mul_5146100_fu_54.grp_mul_3101_fu_26", "Parent" : "411", "Child" : ["413"],
		"CDFG" : "mul_3101",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "128", "EstimateLatencyMax" : "128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "413", "SubInstance" : "grp_mul_3101_Pipeline_COL_fu_326", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_mp_mul_5146100_fu_54.grp_mul_3101_fu_26.grp_mul_3101_Pipeline_COL_fu_326", "Parent" : "412", "Child" : ["414", "415", "416"],
		"CDFG" : "mul_3101_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zext_ln69_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_596_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "414", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_mp_mul_5146100_fu_54.grp_mul_3101_fu_26.grp_mul_3101_Pipeline_COL_fu_326.mul_64ns_64ns_128_1_1_U654", "Parent" : "413"},
	{"ID" : "415", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_mp_mul_5146100_fu_54.grp_mul_3101_fu_26.grp_mul_3101_Pipeline_COL_fu_326.sparsemux_31_4_64_1_1_U655", "Parent" : "413"},
	{"ID" : "416", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_mp_mul_5146100_fu_54.grp_mul_3101_fu_26.grp_mul_3101_Pipeline_COL_fu_326.flow_control_loop_pipe_sequential_init_U", "Parent" : "413"},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1_fu_70", "Parent" : "405", "Child" : ["418"],
		"CDFG" : "fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "418", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1200_fu_77", "Parent" : "405", "Child" : ["420"],
		"CDFG" : "fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1200",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1200_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1_fu_84", "Parent" : "405", "Child" : ["422"],
		"CDFG" : "fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "422", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "421"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_209_1_fu_92", "Parent" : "405", "Child" : ["424", "425"],
		"CDFG" : "fp2mul503_mont_3301_Pipeline_VITIS_LOOP_209_1",
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
			{"Name" : "sext_ln201", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_209_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "424", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_209_1_fu_92.p503_1_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_209_1_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "423"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1201_fu_100", "Parent" : "405", "Child" : ["427"],
		"CDFG" : "fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1201",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "427", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1201_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106", "Parent" : "405", "Child" : ["429", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "449", "454", "459", "464", "469"],
		"CDFG" : "rdc_mont_298",
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
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "429", "SubInstance" : "grp_rdc_mont_298_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "429", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_rdc_mont_298_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "428", "Child" : ["430"],
		"CDFG" : "rdc_mont_298_Pipeline_VITIS_LOOP_299_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln301", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_299_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "430", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_rdc_mont_298_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_305", "Parent" : "428",
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
	{"ID" : "432", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_312", "Parent" : "428",
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
	{"ID" : "433", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_319", "Parent" : "428",
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
	{"ID" : "434", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_325", "Parent" : "428",
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
	{"ID" : "435", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_331", "Parent" : "428",
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
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_338", "Parent" : "428",
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
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_345", "Parent" : "428",
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
	{"ID" : "438", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_351", "Parent" : "428",
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
	{"ID" : "439", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_358", "Parent" : "428",
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
	{"ID" : "440", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_367", "Parent" : "428",
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
	{"ID" : "441", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_is_digit_lessthan_ct_fu_374", "Parent" : "428",
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
	{"ID" : "442", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.tmp_44_is_digit_lessthan_ct_fu_380", "Parent" : "428",
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
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.tmp_45_is_digit_lessthan_ct_fu_387", "Parent" : "428",
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
	{"ID" : "444", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_394", "Parent" : "428", "Child" : ["445", "446", "447", "448"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "445", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U399", "Parent" : "444"},
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U400", "Parent" : "444"},
	{"ID" : "447", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U401", "Parent" : "444"},
	{"ID" : "448", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U402", "Parent" : "444"},
	{"ID" : "449", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_401", "Parent" : "428", "Child" : ["450", "451", "452", "453"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "450", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U399", "Parent" : "449"},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U400", "Parent" : "449"},
	{"ID" : "452", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U401", "Parent" : "449"},
	{"ID" : "453", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U402", "Parent" : "449"},
	{"ID" : "454", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_408", "Parent" : "428", "Child" : ["455", "456", "457", "458"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "455", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U399", "Parent" : "454"},
	{"ID" : "456", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U400", "Parent" : "454"},
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U401", "Parent" : "454"},
	{"ID" : "458", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U402", "Parent" : "454"},
	{"ID" : "459", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_415", "Parent" : "428", "Child" : ["460", "461", "462", "463"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "460", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U399", "Parent" : "459"},
	{"ID" : "461", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U400", "Parent" : "459"},
	{"ID" : "462", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U401", "Parent" : "459"},
	{"ID" : "463", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U402", "Parent" : "459"},
	{"ID" : "464", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_422", "Parent" : "428", "Child" : ["465", "466", "467", "468"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "465", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U399", "Parent" : "464"},
	{"ID" : "466", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U400", "Parent" : "464"},
	{"ID" : "467", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U401", "Parent" : "464"},
	{"ID" : "468", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U402", "Parent" : "464"},
	{"ID" : "469", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_429", "Parent" : "428", "Child" : ["470", "471", "472", "473"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
	{"ID" : "470", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U399", "Parent" : "469"},
	{"ID" : "471", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U400", "Parent" : "469"},
	{"ID" : "472", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U401", "Parent" : "469"},
	{"ID" : "473", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_rdc_mont_298_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U402", "Parent" : "469"},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_mp_mul_5149_fu_116", "Parent" : "405", "Child" : ["475"],
		"CDFG" : "mp_mul_5149",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "475", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "475", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "475", "SubInstance" : "grp_mul_4157_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "475", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8", "Parent" : "474", "Child" : ["476"],
		"CDFG" : "mul_4157",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "128", "EstimateLatencyMax" : "128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "476", "SubInstance" : "grp_mul_4157_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "476", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306", "Parent" : "475", "Child" : ["477", "478", "479"],
		"CDFG" : "mul_4157_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_590_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "477", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U411", "Parent" : "476"},
	{"ID" : "478", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U412", "Parent" : "476"},
	{"ID" : "479", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_mp_mul_5149_fu_116.grp_mul_4157_fu_8.grp_mul_4157_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "476"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1202_fu_123", "Parent" : "405", "Child" : ["481"],
		"CDFG" : "fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1202",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_182_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "481", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_eval_4_isog_fu_100.grp_fp2mul503_mont_3301_fu_188.grp_fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1202_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "480"},
	{"ID" : "482", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1277_fu_112", "Parent" : "0", "Child" : ["483"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1277",
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
			{"Name" : "zext_ln18_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pts_X_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pt_new_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pt_new_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln175", "Type" : "None", "Direction" : "I"},
			{"Name" : "npts_4", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_313_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1277_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "482"}]}


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
	EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1273 {
		zext_ln18_14 {Type I LastRead 0 FirstWrite -1}
		pts_X {Type I LastRead 0 FirstWrite -1}
		pt_new_X {Type O LastRead -1 FirstWrite 1}}
	EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1275 {
		zext_ln18_14 {Type I LastRead 0 FirstWrite -1}
		pts_Z {Type I LastRead 0 FirstWrite -1}
		pt_new_Z {Type O LastRead -1 FirstWrite 1}}
	EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1274 {
		zext_ln18_14 {Type I LastRead 0 FirstWrite -1}
		pts_X_4 {Type I LastRead 0 FirstWrite -1}
		pt_new_X {Type O LastRead -1 FirstWrite 1}}
	EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_17_1276 {
		zext_ln18_14 {Type I LastRead 0 FirstWrite -1}
		pts_Z_4 {Type I LastRead 0 FirstWrite -1}
		pt_new_Z {Type O LastRead -1 FirstWrite 1}}
	eval_4_isog {
		P_X {Type IO LastRead 1 FirstWrite -1}
		P_Z {Type IO LastRead 10 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1515 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset2 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1515_Pipeline_VITIS_LOOP_34_1 {
		zext_ln36_22 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln36_21 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		zext_ln36_20 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_1515_Pipeline_VITIS_LOOP_40_2 {
		zext_ln36_20 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1515_Pipeline_VITIS_LOOP_47_3 {
		zext_ln36_20 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_27 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset2 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_27_Pipeline_VITIS_LOOP_62_1 {
		zext_ln64_10 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln64_9 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		zext_ln64_8 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_27_Pipeline_VITIS_LOOP_69_2 {
		zext_ln64_8 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_436 {
		a {Type I LastRead 1 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_51 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_60 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_60_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_589_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1 {
		a {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1182 {
		b_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		add_ln205 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_436_Pipeline_VITIS_LOOP_209_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln201 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_436_Pipeline_VITIS_LOOP_400_1183 {
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_298 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}
		mc_offset1 {Type I LastRead 2 FirstWrite -1}}
	rdc_mont_298_Pipeline_VITIS_LOOP_299_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln301 {Type I LastRead 0 FirstWrite -1}}
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
	mp_mul_5149 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_590_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_436_Pipeline_VITIS_LOOP_182_1184 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_331_2 {
		c {Type IO LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_514743 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_245 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_245_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		zext_ln69_9 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_597_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1191 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_209_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln201 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_400_1192 {
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_1 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}
		mc_offset {Type I LastRead 2 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_299_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln301 {Type I LastRead 0 FirstWrite -1}}
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
	mp_mul_5149 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_590_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_331_2_Pipeline_VITIS_LOOP_182_1193 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_44 {
		c {Type IO LastRead 1 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_52 {
		a {Type I LastRead 1 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_61 {
		a {Type I LastRead 1 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_61_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		coeff {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_588_out {Type O LastRead -1 FirstWrite 0}}
	mp_mul_51 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_60 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_60_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_589_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1179 {
		coeff {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_44_Pipeline_VITIS_LOOP_209_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln201 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_44_Pipeline_VITIS_LOOP_400_1180 {
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_1 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}
		mc_offset {Type I LastRead 2 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_299_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln301 {Type I LastRead 0 FirstWrite -1}}
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
	mp_mul_5149 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_590_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_44_Pipeline_VITIS_LOOP_182_1181 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fpsub503_2_4 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset2 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_2_4_Pipeline_VITIS_LOOP_62_1 {
		zext_ln64_15 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln64_14 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_2_4_Pipeline_VITIS_LOOP_69_2 {
		zext_ln64_14 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1 {
		c {Type IO LastRead 10 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_400_1169 {
		c {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_6 {
		ma {Type I LastRead 6 FirstWrite -1}
		mb {Type I LastRead 10 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 16}}
	mul_4_1 {
		a {Type I LastRead 6 FirstWrite -1}
		b {Type I LastRead 10 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 16}}
	fpmul503_mont_5_1 {
		ma {Type I LastRead 6 FirstWrite -1}
		mc {Type IO LastRead 10 FirstWrite 16}}
	mul_5_1 {
		a {Type I LastRead 6 FirstWrite -1}
		c {Type IO LastRead 10 FirstWrite 16}}
	fp2sqr503_mont {
		c {Type IO LastRead 10 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_62_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_69_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_400_1172 {
		c {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_4 {
		ma {Type I LastRead 6 FirstWrite -1}
		mb {Type I LastRead 10 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 16}}
	mul_6 {
		a {Type I LastRead 6 FirstWrite -1}
		b {Type I LastRead 10 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 16}}
	fpmul503_mont_3 {
		ma {Type I LastRead 6 FirstWrite -1}
		mc {Type IO LastRead 10 FirstWrite 16}}
	mul_7 {
		a {Type I LastRead 6 FirstWrite -1}
		c {Type IO LastRead 10 FirstWrite 16}}
	fpadd503_1528 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset1 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1528_Pipeline_VITIS_LOOP_34_1 {
		zext_ln36_19 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln36_18 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		zext_ln36_17 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_1528_Pipeline_VITIS_LOOP_40_2 {
		zext_ln36_17 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1528_Pipeline_VITIS_LOOP_47_3 {
		zext_ln36_17 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_2_32 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_2_32_Pipeline_VITIS_LOOP_62_1 {
		zext_ln64_17 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln64_16 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_2_32_Pipeline_VITIS_LOOP_69_2 {
		zext_ln64_16 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_3301 {
		c {Type IO LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_5146100 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_3101 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_3101_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		zext_ln69_8 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_596_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1200 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_3301_Pipeline_VITIS_LOOP_209_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln201 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_3301_Pipeline_VITIS_LOOP_400_1201 {
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_298 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}
		mc_offset1 {Type I LastRead 2 FirstWrite -1}}
	rdc_mont_298_Pipeline_VITIS_LOOP_299_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln301 {Type I LastRead 0 FirstWrite -1}}
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
	mp_mul_5149 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4157_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_590_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_3301_Pipeline_VITIS_LOOP_182_1202 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1277 {
		pts_Z_4 {Type IO LastRead 0 FirstWrite 1}
		zext_ln18_14 {Type I LastRead 0 FirstWrite -1}
		pts_Z {Type IO LastRead 0 FirstWrite 1}
		pts_X_4 {Type IO LastRead 0 FirstWrite 1}
		pts_X {Type IO LastRead 0 FirstWrite 1}
		pt_new_X {Type I LastRead 1 FirstWrite -1}
		pt_new_Z {Type I LastRead 1 FirstWrite -1}
		zext_ln175 {Type I LastRead 0 FirstWrite -1}
		npts_4 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26342", "Max" : "26342"}
	, {"Name" : "Interval", "Min" : "26342", "Max" : "26342"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	coeff { ap_memory {  { coeff_address0 mem_address 1 6 }  { coeff_ce0 mem_ce 1 1 }  { coeff_q0 mem_dout 0 64 }  { coeff_address1 MemPortADDR2 1 6 }  { coeff_ce1 MemPortCE2 1 1 }  { coeff_q1 MemPortDOUT2 0 64 } } }
	npts_4 { ap_none {  { npts_4 in_data 0 32 } } }
	pts_Z_4 { ap_memory {  { pts_Z_4_address0 mem_address 1 6 }  { pts_Z_4_ce0 mem_ce 1 1 }  { pts_Z_4_we0 mem_we 1 1 }  { pts_Z_4_d0 mem_din 1 64 }  { pts_Z_4_q0 mem_dout 0 64 }  { pts_Z_4_address1 MemPortADDR2 1 6 }  { pts_Z_4_ce1 MemPortCE2 1 1 }  { pts_Z_4_q1 MemPortDOUT2 0 64 } } }
	pts_Z { ap_memory {  { pts_Z_address0 mem_address 1 6 }  { pts_Z_ce0 mem_ce 1 1 }  { pts_Z_we0 mem_we 1 1 }  { pts_Z_d0 mem_din 1 64 }  { pts_Z_q0 mem_dout 0 64 }  { pts_Z_address1 MemPortADDR2 1 6 }  { pts_Z_ce1 MemPortCE2 1 1 }  { pts_Z_q1 MemPortDOUT2 0 64 } } }
	pts_X_4 { ap_memory {  { pts_X_4_address0 mem_address 1 6 }  { pts_X_4_ce0 mem_ce 1 1 }  { pts_X_4_we0 mem_we 1 1 }  { pts_X_4_d0 mem_din 1 64 }  { pts_X_4_q0 mem_dout 0 64 }  { pts_X_4_address1 MemPortADDR2 1 6 }  { pts_X_4_ce1 MemPortCE2 1 1 }  { pts_X_4_q1 MemPortDOUT2 0 64 } } }
	pts_X { ap_memory {  { pts_X_address0 mem_address 1 6 }  { pts_X_ce0 mem_ce 1 1 }  { pts_X_we0 mem_we 1 1 }  { pts_X_d0 mem_din 1 64 }  { pts_X_q0 mem_dout 0 64 }  { pts_X_address1 MemPortADDR2 1 6 }  { pts_X_ce1 MemPortCE2 1 1 }  { pts_X_q1 MemPortDOUT2 0 64 } } }
}
