set moduleName EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_156_3
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
set cdfgNum 818
set C_modelName {EphemeralKeyGeneration_A.1_Outline_VITIS_LOOP_156_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict coeff { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_X { MEM_WIDTH 64 MEM_SIZE 896 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pts_Z { MEM_WIDTH 64 MEM_SIZE 896 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ npts_5 int 32 regular  }
	{ coeff int 64 regular {array 48 { 1 } 1 1 }  }
	{ pts_X int 64 regular {array 112 { 2 } 1 1 }  }
	{ pts_Z int 64 regular {array 112 { 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "npts_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coeff", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pts_X", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ npts_5 sc_in sc_lv 32 signal 0 } 
	{ coeff_address0 sc_out sc_lv 6 signal 1 } 
	{ coeff_ce0 sc_out sc_logic 1 signal 1 } 
	{ coeff_q0 sc_in sc_lv 64 signal 1 } 
	{ pts_X_address0 sc_out sc_lv 7 signal 2 } 
	{ pts_X_ce0 sc_out sc_logic 1 signal 2 } 
	{ pts_X_we0 sc_out sc_logic 1 signal 2 } 
	{ pts_X_d0 sc_out sc_lv 64 signal 2 } 
	{ pts_X_q0 sc_in sc_lv 64 signal 2 } 
	{ pts_Z_address0 sc_out sc_lv 7 signal 3 } 
	{ pts_Z_ce0 sc_out sc_logic 1 signal 3 } 
	{ pts_Z_we0 sc_out sc_logic 1 signal 3 } 
	{ pts_Z_d0 sc_out sc_lv 64 signal 3 } 
	{ pts_Z_q0 sc_in sc_lv 64 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "npts_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "npts_5", "role": "default" }} , 
 	{ "name": "coeff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "coeff", "role": "address0" }} , 
 	{ "name": "coeff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeff", "role": "ce0" }} , 
 	{ "name": "coeff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "coeff", "role": "q0" }} , 
 	{ "name": "pts_X_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pts_X", "role": "address0" }} , 
 	{ "name": "pts_X_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "ce0" }} , 
 	{ "name": "pts_X_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "we0" }} , 
 	{ "name": "pts_X_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X", "role": "d0" }} , 
 	{ "name": "pts_X_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X", "role": "q0" }} , 
 	{ "name": "pts_Z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pts_Z", "role": "address0" }} , 
 	{ "name": "pts_Z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "ce0" }} , 
 	{ "name": "pts_Z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "we0" }} , 
 	{ "name": "pts_Z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z", "role": "d0" }} , 
 	{ "name": "pts_Z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "14", "20", "113", "206", "321", "327", "402", "477", "486", "492"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_156_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "npts_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_fp2mul503_mont_71_fu_222", "Port" : "coeff", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "206", "SubInstance" : "grp_fp2mul503_mont_59_fu_253", "Port" : "coeff", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_fpadd503_358_fu_184", "Port" : "a", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "14", "SubInstance" : "grp_fpsub503_4_fu_203", "Port" : "a", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "20", "SubInstance" : "grp_fp2mul503_mont_71_fu_222", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "321", "SubInstance" : "grp_fpsub503_4_2109_fu_265", "Port" : "a", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "477", "SubInstance" : "grp_fpadd503_357_fu_300", "Port" : "c", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "492", "SubInstance" : "grp_fp2mul503_mont_2_fu_327", "Port" : "c", "Inst_start_state" : "30", "Inst_end_state" : "31"}]},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_fpadd503_358_fu_184", "Port" : "b", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "14", "SubInstance" : "grp_fpsub503_4_fu_203", "Port" : "b", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "20", "SubInstance" : "grp_fp2mul503_mont_71_fu_222", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "321", "SubInstance" : "grp_fpsub503_4_2109_fu_265", "Port" : "c", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "402", "SubInstance" : "grp_fp2sqr503_mont_fu_291", "Port" : "c", "Inst_start_state" : "24", "Inst_end_state" : "25"},
					{"ID" : "486", "SubInstance" : "grp_fpsub503_4_1_fu_314", "Port" : "a", "Inst_start_state" : "28", "Inst_end_state" : "29"},
					{"ID" : "492", "SubInstance" : "grp_fp2mul503_mont_2_fu_327", "Port" : "c", "Inst_start_state" : "30", "Inst_end_state" : "31"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_fpadd503_358_fu_184", "Port" : "p503x2_1", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "14", "SubInstance" : "grp_fpsub503_4_fu_203", "Port" : "p503x2_1", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "321", "SubInstance" : "grp_fpsub503_4_2109_fu_265", "Port" : "p503x2_1", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "327", "SubInstance" : "grp_fp2sqr503_mont_7_2_fu_283", "Port" : "p503x2_1", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "402", "SubInstance" : "grp_fp2sqr503_mont_fu_291", "Port" : "p503x2_1", "Inst_start_state" : "24", "Inst_end_state" : "25"},
					{"ID" : "477", "SubInstance" : "grp_fpadd503_357_fu_300", "Port" : "p503x2_1", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "486", "SubInstance" : "grp_fpsub503_4_1_fu_314", "Port" : "p503x2_1", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_fp2mul503_mont_71_fu_222", "Port" : "p503_1", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "113", "SubInstance" : "grp_fp2mul503_mont_231_3_fu_241", "Port" : "p503_1", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "206", "SubInstance" : "grp_fp2mul503_mont_59_fu_253", "Port" : "p503_1", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "492", "SubInstance" : "grp_fp2mul503_mont_2_fu_327", "Port" : "p503_1", "Inst_start_state" : "30", "Inst_end_state" : "31"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_fp2mul503_mont_71_fu_222", "Port" : "p503p1_1", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "113", "SubInstance" : "grp_fp2mul503_mont_231_3_fu_241", "Port" : "p503p1_1", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "206", "SubInstance" : "grp_fp2mul503_mont_59_fu_253", "Port" : "p503p1_1", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "492", "SubInstance" : "grp_fp2mul503_mont_2_fu_327", "Port" : "p503p1_1", "Inst_start_state" : "30", "Inst_end_state" : "31"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "31", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state31"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_8_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_8_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_358_fu_184", "Parent" : "0", "Child" : ["6", "8", "11"],
		"CDFG" : "fpadd503_358",
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
					{"ID" : "6", "SubInstance" : "grp_fpadd503_358_Pipeline_VITIS_LOOP_33_1_fu_68", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_fpadd503_358_Pipeline_VITIS_LOOP_33_1_fu_68", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset4", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_fpadd503_358_Pipeline_VITIS_LOOP_33_1_fu_68", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "8", "SubInstance" : "grp_fpadd503_358_Pipeline_VITIS_LOOP_39_2_fu_80", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "11", "SubInstance" : "grp_fpadd503_358_Pipeline_VITIS_LOOP_46_3_fu_89", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_fpadd503_358_Pipeline_VITIS_LOOP_39_2_fu_80", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "11", "SubInstance" : "grp_fpadd503_358_Pipeline_VITIS_LOOP_46_3_fu_89", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_358_fu_184.grp_fpadd503_358_Pipeline_VITIS_LOOP_33_1_fu_68", "Parent" : "5", "Child" : ["7"],
		"CDFG" : "fpadd503_358_Pipeline_VITIS_LOOP_33_1",
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
			{"Name" : "zext_ln35_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln35_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_358_fu_184.grp_fpadd503_358_Pipeline_VITIS_LOOP_33_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_358_fu_184.grp_fpadd503_358_Pipeline_VITIS_LOOP_39_2_fu_80", "Parent" : "5", "Child" : ["9", "10"],
		"CDFG" : "fpadd503_358_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "carry_168_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_358_fu_184.grp_fpadd503_358_Pipeline_VITIS_LOOP_39_2_fu_80.p503x2_1_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_358_fu_184.grp_fpadd503_358_Pipeline_VITIS_LOOP_39_2_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_358_fu_184.grp_fpadd503_358_Pipeline_VITIS_LOOP_46_3_fu_89", "Parent" : "5", "Child" : ["12", "13"],
		"CDFG" : "fpadd503_358_Pipeline_VITIS_LOOP_46_3",
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_358_fu_184.grp_fpadd503_358_Pipeline_VITIS_LOOP_46_3_fu_89.p503x2_1_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_358_fu_184.grp_fpadd503_358_Pipeline_VITIS_LOOP_46_3_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_fu_203", "Parent" : "0", "Child" : ["15", "17"],
		"CDFG" : "fpsub503_4",
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
					{"ID" : "15", "SubInstance" : "grp_fpsub503_4_Pipeline_VITIS_LOOP_61_1_fu_68", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_fpsub503_4_Pipeline_VITIS_LOOP_61_1_fu_68", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset4", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_fpsub503_4_Pipeline_VITIS_LOOP_61_1_fu_68", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "17", "SubInstance" : "grp_fpsub503_4_Pipeline_VITIS_LOOP_68_2_fu_81", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_fpsub503_4_Pipeline_VITIS_LOOP_68_2_fu_81", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_fu_203.grp_fpsub503_4_Pipeline_VITIS_LOOP_61_1_fu_68", "Parent" : "14", "Child" : ["16"],
		"CDFG" : "fpsub503_4_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "zext_ln63_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln63_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_fu_203.grp_fpsub503_4_Pipeline_VITIS_LOOP_61_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_fu_203.grp_fpsub503_4_Pipeline_VITIS_LOOP_68_2_fu_81", "Parent" : "14", "Child" : ["18", "19"],
		"CDFG" : "fpsub503_4_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_fu_203.grp_fpsub503_4_Pipeline_VITIS_LOOP_68_2_fu_81.p503x2_1_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_fu_203.grp_fpsub503_4_Pipeline_VITIS_LOOP_68_2_fu_81.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222", "Parent" : "0", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28", "50", "52", "54", "56", "59", "61", "75", "97", "99"],
		"CDFG" : "fp2mul503_mont_71",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "28", "SubInstance" : "grp_mp_mul_73_fu_98", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "50", "SubInstance" : "grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1_fu_113", "Port" : "a_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_mp_mul_73_fu_98", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "50", "SubInstance" : "grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1_fu_113", "Port" : "a_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_mp_mul_73_fu_98", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "52", "SubInstance" : "grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1139_fu_122", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_offset_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_rdc_mont_136_fu_157", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "99", "SubInstance" : "grp_rdc_mont_3_fu_184", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_198_1_fu_141", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_rdc_mont_136_fu_157", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "99", "SubInstance" : "grp_rdc_mont_3_fu_184", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.t1_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.t2_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.tt1_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.tt1_1_U", "Parent" : "20"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.tt2_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.tt2_1_U", "Parent" : "20"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.tt3_U", "Parent" : "20"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98", "Parent" : "20", "Child" : ["29"],
		"CDFG" : "mp_mul_73",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "29", "SubInstance" : "grp_mul_84_fu_30", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_mul_84_fu_30", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_mul_84_fu_30", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_mul_84_fu_30", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30", "Parent" : "28", "Child" : ["30", "31", "32", "34", "37", "40", "42", "45"],
		"CDFG" : "mul_84",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "34", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "45", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "45", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.acc_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.acc_1_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60", "Parent" : "29", "Child" : ["33"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68", "Parent" : "29", "Child" : ["35", "36"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68.partset_512ns_512ns_64ns_32ns_512_1_1_U1478", "Parent" : "34"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75", "Parent" : "29", "Child" : ["38", "39"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_27_1106",
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
			{"Name" : "B_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75.partset_512ns_512ns_64ns_32ns_512_1_1_U1481", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_77_2_fu_84", "Parent" : "29", "Child" : ["41"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_77_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_92", "Parent" : "29", "Child" : ["43", "44"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_92.mul_64ns_64ns_128_1_1_U1487", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100", "Parent" : "29", "Child" : ["46", "48"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "48", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "48", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "45", "Child" : ["47"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "45", "Child" : ["49"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "49", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_73_fu_98.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1_fu_113", "Parent" : "20", "Child" : ["51"],
		"CDFG" : "fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1_fu_113.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1139_fu_122", "Parent" : "20", "Child" : ["53"],
		"CDFG" : "fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1139",
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
			{"Name" : "b_offset_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln194", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1139_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_171_1_fu_131", "Parent" : "20", "Child" : ["55"],
		"CDFG" : "fp2mul503_mont_71_Pipeline_VITIS_LOOP_171_1",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_171_1_fu_131.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_198_1_fu_141", "Parent" : "20", "Child" : ["57", "58"],
		"CDFG" : "fp2mul503_mont_71_Pipeline_VITIS_LOOP_198_1",
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
			{"Name" : "sext_ln190", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_198_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_198_1_fu_141.p503_1_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_198_1_fu_141.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1140_fu_149", "Parent" : "20", "Child" : ["60"],
		"CDFG" : "fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1140",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1140_fu_149.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157", "Parent" : "20", "Child" : ["62", "64", "67", "70"],
		"CDFG" : "rdc_mont_136",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_rdc_mont_136_Pipeline_VITIS_LOOP_306_1_fu_202", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "64", "SubInstance" : "grp_rdc_mont_136_Pipeline_VITIS_LOOP_314_3_fu_210", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "67", "SubInstance" : "grp_rdc_mont_136_Pipeline_VITIS_LOOP_340_5_fu_227", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_rdc_mont_136_Pipeline_VITIS_LOOP_314_3_fu_210", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "67", "SubInstance" : "grp_rdc_mont_136_Pipeline_VITIS_LOOP_340_5_fu_227", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_rdc_mont_136_Pipeline_VITIS_LOOP_306_1_fu_202", "Parent" : "61", "Child" : ["63"],
		"CDFG" : "rdc_mont_136_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "zext_ln299", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_rdc_mont_136_Pipeline_VITIS_LOOP_306_1_fu_202.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_rdc_mont_136_Pipeline_VITIS_LOOP_314_3_fu_210", "Parent" : "61", "Child" : ["65", "66"],
		"CDFG" : "rdc_mont_136_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_026", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_rdc_mont_136_Pipeline_VITIS_LOOP_314_3_fu_210.p503p1_1_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_rdc_mont_136_Pipeline_VITIS_LOOP_314_3_fu_210.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_rdc_mont_136_Pipeline_VITIS_LOOP_340_5_fu_227", "Parent" : "61", "Child" : ["68", "69"],
		"CDFG" : "rdc_mont_136_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_rdc_mont_136_Pipeline_VITIS_LOOP_340_5_fu_227.p503p1_1_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_rdc_mont_136_Pipeline_VITIS_LOOP_340_5_fu_227.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_digit_x_digit_fu_902", "Parent" : "61", "Child" : ["71", "72", "73", "74"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_digit_x_digit_fu_902.mul_32ns_32ns_64_1_1_U338", "Parent" : "70"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_digit_x_digit_fu_902.mul_32ns_32ns_64_1_1_U339", "Parent" : "70"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_digit_x_digit_fu_902.mul_32ns_32ns_64_1_1_U340", "Parent" : "70"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_136_fu_157.grp_digit_x_digit_fu_902.mul_32ns_32ns_64_1_1_U341", "Parent" : "70"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168", "Parent" : "20", "Child" : ["76"],
		"CDFG" : "mp_mul_7163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "76", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18", "Parent" : "75", "Child" : ["77", "78", "79", "81", "84", "87", "89", "92"],
		"CDFG" : "mul_6170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "81", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "92", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "92", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.acc_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.acc_1_U", "Parent" : "76"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "76", "Child" : ["80"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "76", "Child" : ["82", "83"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "81"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "76", "Child" : ["85", "86"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1113",
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
			{"Name" : "B_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "84"},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "76", "Child" : ["88"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "76", "Child" : ["90", "91"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "89"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "76", "Child" : ["93", "95"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "95", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "95", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "92", "Child" : ["94"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "92", "Child" : ["96"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "96", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_mp_mul_7163_fu_168.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_171_1141_fu_176", "Parent" : "20", "Child" : ["98"],
		"CDFG" : "fp2mul503_mont_71_Pipeline_VITIS_LOOP_171_1141",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_fp2mul503_mont_71_Pipeline_VITIS_LOOP_171_1141_fu_176.flow_control_loop_pipe_sequential_init_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184", "Parent" : "20", "Child" : ["100", "102", "105", "108"],
		"CDFG" : "rdc_mont_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "grp_rdc_mont_3_Pipeline_VITIS_LOOP_306_1_fu_225", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "102", "SubInstance" : "grp_rdc_mont_3_Pipeline_VITIS_LOOP_314_3_fu_232", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "105", "SubInstance" : "grp_rdc_mont_3_Pipeline_VITIS_LOOP_340_5_fu_249", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_rdc_mont_3_Pipeline_VITIS_LOOP_314_3_fu_232", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "105", "SubInstance" : "grp_rdc_mont_3_Pipeline_VITIS_LOOP_340_5_fu_249", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_rdc_mont_3_Pipeline_VITIS_LOOP_306_1_fu_225", "Parent" : "99", "Child" : ["101"],
		"CDFG" : "rdc_mont_3_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "zext_ln299", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_rdc_mont_3_Pipeline_VITIS_LOOP_306_1_fu_225.flow_control_loop_pipe_sequential_init_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_rdc_mont_3_Pipeline_VITIS_LOOP_314_3_fu_232", "Parent" : "99", "Child" : ["103", "104"],
		"CDFG" : "rdc_mont_3_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_rdc_mont_3_Pipeline_VITIS_LOOP_314_3_fu_232.p503p1_1_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_rdc_mont_3_Pipeline_VITIS_LOOP_314_3_fu_232.flow_control_loop_pipe_sequential_init_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_rdc_mont_3_Pipeline_VITIS_LOOP_340_5_fu_249", "Parent" : "99", "Child" : ["106", "107"],
		"CDFG" : "rdc_mont_3_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln299", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_rdc_mont_3_Pipeline_VITIS_LOOP_340_5_fu_249.p503p1_1_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_rdc_mont_3_Pipeline_VITIS_LOOP_340_5_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_digit_x_digit_fu_992", "Parent" : "99", "Child" : ["109", "110", "111", "112"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U338", "Parent" : "108"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U339", "Parent" : "108"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U340", "Parent" : "108"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_71_fu_222.grp_rdc_mont_3_fu_184.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U341", "Parent" : "108"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241", "Parent" : "0", "Child" : ["114", "115", "116", "117", "118", "119", "120", "121", "143", "165", "167", "169", "171", "174", "176", "190", "192"],
		"CDFG" : "fp2mul503_mont_231_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "121", "SubInstance" : "grp_mp_mul_7163_fu_74", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "165", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1_fu_98", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "176", "SubInstance" : "grp_rdc_mont_138_fu_142", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_mp_mul_7163_fu_86", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "165", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1_fu_98", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "192", "SubInstance" : "grp_rdc_mont_6_fu_159", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_mp_mul_7163_fu_74", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "167", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172_fu_107", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_mp_mul_7163_fu_86", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "167", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172_fu_107", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1_fu_126", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "grp_rdc_mont_138_fu_142", "Port" : "p503p1_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "192", "SubInstance" : "grp_rdc_mont_6_fu_159", "Port" : "p503p1_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.t1_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.t2_U", "Parent" : "113"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.tt1_U", "Parent" : "113"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.tt1_1_U", "Parent" : "113"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.tt2_U", "Parent" : "113"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.tt2_1_U", "Parent" : "113"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.tt3_U", "Parent" : "113"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74", "Parent" : "113", "Child" : ["122"],
		"CDFG" : "mp_mul_7163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "122", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18", "Parent" : "121", "Child" : ["123", "124", "125", "127", "130", "133", "135", "138"],
		"CDFG" : "mul_6170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "127", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "138", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "138", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.acc_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.acc_1_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "122", "Child" : ["126"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "126", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "122", "Child" : ["128", "129"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "128", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "127"},
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "122", "Child" : ["131", "132"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1113",
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
			{"Name" : "B_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "130"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "122", "Child" : ["134"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "122", "Child" : ["136", "137"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "135"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "122", "Child" : ["139", "141"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "141", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "141", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "138", "Child" : ["140"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "140", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "138", "Child" : ["142"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "142", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86", "Parent" : "113", "Child" : ["144"],
		"CDFG" : "mp_mul_7163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "144", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "144", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18", "Parent" : "143", "Child" : ["145", "146", "147", "149", "152", "155", "157", "160"],
		"CDFG" : "mul_6170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "149", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "160", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "160", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.acc_U", "Parent" : "144"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.acc_1_U", "Parent" : "144"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "144", "Child" : ["148"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "147"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "144", "Child" : ["150", "151"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "149"},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "149"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "144", "Child" : ["153", "154"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1113",
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
			{"Name" : "B_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "152"},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "152"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "144", "Child" : ["156"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "144", "Child" : ["158", "159"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "157"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "157"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "144", "Child" : ["161", "163"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "161", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "163", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "161", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "163", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "160", "Child" : ["162"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "162", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "160", "Child" : ["164"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "164", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "163"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1_fu_98", "Parent" : "113", "Child" : ["166"],
		"CDFG" : "fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172_fu_107", "Parent" : "113", "Child" : ["168"],
		"CDFG" : "fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1_fu_116", "Parent" : "113", "Child" : ["170"],
		"CDFG" : "fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1_fu_126", "Parent" : "113", "Child" : ["172", "173"],
		"CDFG" : "fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1",
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
			{"Name" : "sext_ln190", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_198_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1_fu_126.p503_1_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "171"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1173_fu_134", "Parent" : "113", "Child" : ["175"],
		"CDFG" : "fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1173",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1173_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "174"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142", "Parent" : "113", "Child" : ["177", "179", "182", "185"],
		"CDFG" : "rdc_mont_138",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "179", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "182", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "182", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186", "Parent" : "176", "Child" : ["178"],
		"CDFG" : "rdc_mont_138_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Parent" : "176", "Child" : ["180", "181"],
		"CDFG" : "rdc_mont_138_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_026", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192.p503p1_1_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192.flow_control_loop_pipe_sequential_init_U", "Parent" : "179"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Parent" : "176", "Child" : ["183", "184"],
		"CDFG" : "rdc_mont_138_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208.p503p1_1_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208.flow_control_loop_pipe_sequential_init_U", "Parent" : "182"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820", "Parent" : "176", "Child" : ["186", "187", "188", "189"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U338", "Parent" : "185"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U339", "Parent" : "185"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U340", "Parent" : "185"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U341", "Parent" : "185"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1174_fu_151", "Parent" : "113", "Child" : ["191"],
		"CDFG" : "fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1174",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1174_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159", "Parent" : "113", "Child" : ["193", "195", "198", "201"],
		"CDFG" : "rdc_mont_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "195", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "198", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "198", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213", "Parent" : "192", "Child" : ["194"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213.flow_control_loop_pipe_sequential_init_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Parent" : "192", "Child" : ["196", "197"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219.p503p1_1_U", "Parent" : "195"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "195"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Parent" : "192", "Child" : ["199", "200"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235.p503p1_1_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235.flow_control_loop_pipe_sequential_init_U", "Parent" : "198"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907", "Parent" : "192", "Child" : ["202", "203", "204", "205"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U338", "Parent" : "201"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U339", "Parent" : "201"},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U340", "Parent" : "201"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_241.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U341", "Parent" : "201"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253", "Parent" : "0", "Child" : ["207", "208", "209", "210", "211", "212", "213", "214", "236", "258", "260", "262", "264", "267", "269", "283", "305", "307"],
		"CDFG" : "fp2mul503_mont_59",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "214", "SubInstance" : "grp_mp_mul_74_fu_78", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "258", "SubInstance" : "grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1_fu_102", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "269", "SubInstance" : "grp_rdc_mont_138_fu_144", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_mp_mul_73_fu_90", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "258", "SubInstance" : "grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1_fu_102", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "307", "SubInstance" : "grp_rdc_mont_6_fu_169", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "214", "SubInstance" : "grp_mp_mul_74_fu_78", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "236", "SubInstance" : "grp_mp_mul_73_fu_90", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "260", "SubInstance" : "grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1148_fu_111", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "264", "SubInstance" : "grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_198_1_fu_128", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_rdc_mont_138_fu_144", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "307", "SubInstance" : "grp_rdc_mont_6_fu_169", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.t1_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.t2_U", "Parent" : "206"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.tt1_U", "Parent" : "206"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.tt1_1_U", "Parent" : "206"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.tt2_U", "Parent" : "206"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.tt2_1_U", "Parent" : "206"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.tt3_U", "Parent" : "206"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78", "Parent" : "206", "Child" : ["215"],
		"CDFG" : "mp_mul_74",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "215", "SubInstance" : "grp_mul_85_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_mul_85_fu_20", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_mul_85_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_mul_85_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20", "Parent" : "214", "Child" : ["216", "217", "218", "220", "223", "226", "228", "231"],
		"CDFG" : "mul_85",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "220", "SubInstance" : "grp_mul_85_Pipeline_VITIS_LOOP_27_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "grp_mul_85_Pipeline_VITIS_LOOP_27_1105_fu_65", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_mul_85_Pipeline_VITIS_LOOP_54_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "231", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_mul_85_Pipeline_VITIS_LOOP_54_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "231", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.acc_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.acc_1_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_54_1_fu_50", "Parent" : "215", "Child" : ["219"],
		"CDFG" : "mul_85_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_54_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_27_1_fu_58", "Parent" : "215", "Child" : ["221", "222"],
		"CDFG" : "mul_85_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_27_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U1586", "Parent" : "220"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_27_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "220"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_27_1105_fu_65", "Parent" : "215", "Child" : ["224", "225"],
		"CDFG" : "mul_85_Pipeline_VITIS_LOOP_27_1105",
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
			{"Name" : "B_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_27_1105_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U1589", "Parent" : "223"},
	{"ID" : "225", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_27_1105_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "223"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_77_2_fu_72", "Parent" : "215", "Child" : ["227"],
		"CDFG" : "mul_85_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "227", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_77_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_80", "Parent" : "215", "Child" : ["229", "230"],
		"CDFG" : "mul_85_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "229", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_80.mul_64ns_64ns_128_1_1_U1594", "Parent" : "228"},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_mul_85_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "228"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "215", "Child" : ["232", "234"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "232", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "234", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "232", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "234", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "231", "Child" : ["233"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "233", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "231", "Child" : ["235"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "235", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_74_fu_78.grp_mul_85_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "234"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90", "Parent" : "206", "Child" : ["237"],
		"CDFG" : "mp_mul_73",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "237", "SubInstance" : "grp_mul_84_fu_30", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_mul_84_fu_30", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_mul_84_fu_30", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_mul_84_fu_30", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30", "Parent" : "236", "Child" : ["238", "239", "240", "242", "245", "248", "250", "253"],
		"CDFG" : "mul_84",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "242", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "245", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "240", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "253", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "240", "SubInstance" : "grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "253", "SubInstance" : "grp_convert_blocks_to_digits_fu_100", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.acc_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.acc_1_U", "Parent" : "237"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60", "Parent" : "237", "Child" : ["241"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_54_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68", "Parent" : "237", "Child" : ["243", "244"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68.partset_512ns_512ns_64ns_32ns_512_1_1_U1478", "Parent" : "242"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "242"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75", "Parent" : "237", "Child" : ["246", "247"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_27_1106",
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
			{"Name" : "B_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75.partset_512ns_512ns_64ns_32ns_512_1_1_U1481", "Parent" : "245"},
	{"ID" : "247", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_27_1106_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "245"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_77_2_fu_84", "Parent" : "237", "Child" : ["249"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "249", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_77_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_92", "Parent" : "237", "Child" : ["251", "252"],
		"CDFG" : "mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_92.mul_64ns_64ns_128_1_1_U1487", "Parent" : "250"},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "250"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100", "Parent" : "237", "Child" : ["254", "256"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "256", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "256", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "253", "Child" : ["255"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "255", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "253", "Child" : ["257"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "257", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_73_fu_90.grp_mul_84_fu_30.grp_convert_blocks_to_digits_fu_100.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1_fu_102", "Parent" : "206", "Child" : ["259"],
		"CDFG" : "fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "258"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1148_fu_111", "Parent" : "206", "Child" : ["261"],
		"CDFG" : "fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1148",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1148_fu_111.flow_control_loop_pipe_sequential_init_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1_fu_118", "Parent" : "206", "Child" : ["263"],
		"CDFG" : "fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_198_1_fu_128", "Parent" : "206", "Child" : ["265", "266"],
		"CDFG" : "fp2mul503_mont_59_Pipeline_VITIS_LOOP_198_1",
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
			{"Name" : "sext_ln190", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_198_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_198_1_fu_128.p503_1_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_198_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "264"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1149_fu_136", "Parent" : "206", "Child" : ["268"],
		"CDFG" : "fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1149",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1149_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144", "Parent" : "206", "Child" : ["270", "272", "275", "278"],
		"CDFG" : "rdc_mont_138",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "272", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "275", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "275", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186", "Parent" : "269", "Child" : ["271"],
		"CDFG" : "rdc_mont_138_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Parent" : "269", "Child" : ["273", "274"],
		"CDFG" : "rdc_mont_138_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_026", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192.p503p1_1_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192.flow_control_loop_pipe_sequential_init_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Parent" : "269", "Child" : ["276", "277"],
		"CDFG" : "rdc_mont_138_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208.p503p1_1_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208.flow_control_loop_pipe_sequential_init_U", "Parent" : "275"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820", "Parent" : "269", "Child" : ["279", "280", "281", "282"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U338", "Parent" : "278"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U339", "Parent" : "278"},
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U340", "Parent" : "278"},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U341", "Parent" : "278"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153", "Parent" : "206", "Child" : ["284"],
		"CDFG" : "mp_mul_7163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "284", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "284", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "284", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "284", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18", "Parent" : "283", "Child" : ["285", "286", "287", "289", "292", "295", "297", "300"],
		"CDFG" : "mul_6170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "289", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "292", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "300", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.acc_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.acc_1_U", "Parent" : "284"},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "284", "Child" : ["288"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "284", "Child" : ["290", "291"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "289"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "289"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "284", "Child" : ["293", "294"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1113",
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
			{"Name" : "B_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "293", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "292"},
	{"ID" : "294", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "292"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "284", "Child" : ["296"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "284", "Child" : ["298", "299"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "297"},
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "297"},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "284", "Child" : ["301", "303"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "303", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "303", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "300", "Child" : ["302"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "302", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "301"},
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "300", "Child" : ["304"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "304", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "303"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1150_fu_161", "Parent" : "206", "Child" : ["306"],
		"CDFG" : "fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1150",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1150_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169", "Parent" : "206", "Child" : ["308", "310", "313", "316"],
		"CDFG" : "rdc_mont_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "310", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "313", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "310", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "313", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213", "Parent" : "307", "Child" : ["309"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213.flow_control_loop_pipe_sequential_init_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Parent" : "307", "Child" : ["311", "312"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219.p503p1_1_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "310"},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Parent" : "307", "Child" : ["314", "315"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "314", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235.p503p1_1_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235.flow_control_loop_pipe_sequential_init_U", "Parent" : "313"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907", "Parent" : "307", "Child" : ["317", "318", "319", "320"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U338", "Parent" : "316"},
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U339", "Parent" : "316"},
	{"ID" : "319", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U340", "Parent" : "316"},
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_59_fu_253.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U341", "Parent" : "316"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2109_fu_265", "Parent" : "0", "Child" : ["322", "324"],
		"CDFG" : "fpsub503_4_2109",
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
					{"ID" : "322", "SubInstance" : "grp_fpsub503_4_2109_Pipeline_VITIS_LOOP_61_1_fu_66", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "322", "SubInstance" : "grp_fpsub503_4_2109_Pipeline_VITIS_LOOP_61_1_fu_66", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "324", "SubInstance" : "grp_fpsub503_4_2109_Pipeline_VITIS_LOOP_68_2_fu_77", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_offset4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "324", "SubInstance" : "grp_fpsub503_4_2109_Pipeline_VITIS_LOOP_68_2_fu_77", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2109_fu_265.grp_fpsub503_4_2109_Pipeline_VITIS_LOOP_61_1_fu_66", "Parent" : "321", "Child" : ["323"],
		"CDFG" : "fpsub503_4_2109_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "zext_ln63_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln63_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2109_fu_265.grp_fpsub503_4_2109_Pipeline_VITIS_LOOP_61_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "322"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2109_fu_265.grp_fpsub503_4_2109_Pipeline_VITIS_LOOP_68_2_fu_77", "Parent" : "321", "Child" : ["325", "326"],
		"CDFG" : "fpsub503_4_2109_Pipeline_VITIS_LOOP_68_2",
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
			{"Name" : "zext_ln63_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2109_fu_265.grp_fpsub503_4_2109_Pipeline_VITIS_LOOP_68_2_fu_77.p503x2_1_U", "Parent" : "324"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2109_fu_265.grp_fpsub503_4_2109_Pipeline_VITIS_LOOP_68_2_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "324"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283", "Parent" : "0", "Child" : ["328", "329", "330", "331", "333", "335", "338", "340", "371"],
		"CDFG" : "fp2sqr503_mont_7_2",
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
					{"ID" : "331", "SubInstance" : "grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "333", "SubInstance" : "grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "338", "SubInstance" : "grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1125_fu_74", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "340", "SubInstance" : "grp_fpmul503_mont_7_fu_81", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "333", "SubInstance" : "grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "371", "SubInstance" : "grp_fpmul503_mont_2_4_fu_89", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_68_2_fu_66", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.t1_U", "Parent" : "327"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.t2_U", "Parent" : "327"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.t3_U", "Parent" : "327"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1_fu_46", "Parent" : "327", "Child" : ["332"],
		"CDFG" : "fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_61_1_fu_56", "Parent" : "327", "Child" : ["334"],
		"CDFG" : "fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_61_1",
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
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_61_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_68_2_fu_66", "Parent" : "327", "Child" : ["336", "337"],
		"CDFG" : "fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_68_2_fu_66.p503x2_1_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_68_2_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "335"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1125_fu_74", "Parent" : "327", "Child" : ["339"],
		"CDFG" : "fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1125",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1125_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "338"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81", "Parent" : "327", "Child" : ["341"],
		"CDFG" : "fpmul503_mont_7",
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
					{"ID" : "341", "SubInstance" : "grp_mul_7_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "grp_mul_7_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "grp_mul_7_1_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18", "Parent" : "340", "Child" : ["342"],
		"CDFG" : "mul_7_1",
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
					{"ID" : "342", "SubInstance" : "grp_mul_7_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "342", "SubInstance" : "grp_mul_7_fu_16", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "342", "SubInstance" : "grp_mul_7_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16", "Parent" : "341", "Child" : ["343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370"],
		"CDFG" : "mul_7",
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
	{"ID" : "343", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U864", "Parent" : "342"},
	{"ID" : "344", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U865", "Parent" : "342"},
	{"ID" : "345", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U866", "Parent" : "342"},
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U867", "Parent" : "342"},
	{"ID" : "347", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U868", "Parent" : "342"},
	{"ID" : "348", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U869", "Parent" : "342"},
	{"ID" : "349", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U870", "Parent" : "342"},
	{"ID" : "350", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U871", "Parent" : "342"},
	{"ID" : "351", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_128_1_1_U872", "Parent" : "342"},
	{"ID" : "352", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_56ns_119_1_1_U873", "Parent" : "342"},
	{"ID" : "353", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_56ns_119_1_1_U874", "Parent" : "342"},
	{"ID" : "354", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_62ns_125_1_1_U875", "Parent" : "342"},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_62ns_125_1_1_U876", "Parent" : "342"},
	{"ID" : "356", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_62ns_125_1_1_U877", "Parent" : "342"},
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_62ns_125_1_1_U878", "Parent" : "342"},
	{"ID" : "358", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_127_1_1_U879", "Parent" : "342"},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_64ns_127_1_1_U880", "Parent" : "342"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_65ns_128_1_1_U881", "Parent" : "342"},
	{"ID" : "361", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64ns_65ns_128_1_1_U882", "Parent" : "342"},
	{"ID" : "362", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64ns_64_1_1_U883", "Parent" : "342"},
	{"ID" : "363", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64ns_64_1_1_U884", "Parent" : "342"},
	{"ID" : "364", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64ns_64_1_1_U885", "Parent" : "342"},
	{"ID" : "365", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_62ns_64_1_1_U886", "Parent" : "342"},
	{"ID" : "366", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64ns_64_1_1_U887", "Parent" : "342"},
	{"ID" : "367", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_62ns_64_1_1_U888", "Parent" : "342"},
	{"ID" : "368", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64ns_64_1_1_U889", "Parent" : "342"},
	{"ID" : "369", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64s_64_1_1_U890", "Parent" : "342"},
	{"ID" : "370", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_7_fu_81.grp_mul_7_1_fu_18.grp_mul_7_fu_16.mul_64s_64s_64_1_1_U891", "Parent" : "342"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89", "Parent" : "327", "Child" : ["372"],
		"CDFG" : "fpmul503_mont_2_4",
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
					{"ID" : "372", "SubInstance" : "grp_mul_2_5_1_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_mul_2_5_1_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16", "Parent" : "371", "Child" : ["373"],
		"CDFG" : "mul_2_5_1",
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
					{"ID" : "373", "SubInstance" : "grp_mul_2_5_fu_14", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_mul_2_5_fu_14", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "373", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14", "Parent" : "372", "Child" : ["374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401"],
		"CDFG" : "mul_2_5",
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
	{"ID" : "374", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U901", "Parent" : "373"},
	{"ID" : "375", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U902", "Parent" : "373"},
	{"ID" : "376", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U903", "Parent" : "373"},
	{"ID" : "377", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U904", "Parent" : "373"},
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U905", "Parent" : "373"},
	{"ID" : "379", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U906", "Parent" : "373"},
	{"ID" : "380", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U907", "Parent" : "373"},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U908", "Parent" : "373"},
	{"ID" : "382", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_128_1_1_U909", "Parent" : "373"},
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_56ns_119_1_1_U910", "Parent" : "373"},
	{"ID" : "384", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_56ns_119_1_1_U911", "Parent" : "373"},
	{"ID" : "385", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_62ns_125_1_1_U912", "Parent" : "373"},
	{"ID" : "386", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_62ns_125_1_1_U913", "Parent" : "373"},
	{"ID" : "387", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_62ns_125_1_1_U914", "Parent" : "373"},
	{"ID" : "388", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_62ns_125_1_1_U915", "Parent" : "373"},
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_127_1_1_U916", "Parent" : "373"},
	{"ID" : "390", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_64ns_127_1_1_U917", "Parent" : "373"},
	{"ID" : "391", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_65ns_128_1_1_U918", "Parent" : "373"},
	{"ID" : "392", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64ns_65ns_128_1_1_U919", "Parent" : "373"},
	{"ID" : "393", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64ns_64_1_1_U920", "Parent" : "373"},
	{"ID" : "394", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64ns_64_1_1_U921", "Parent" : "373"},
	{"ID" : "395", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64ns_64_1_1_U922", "Parent" : "373"},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_62ns_64_1_1_U923", "Parent" : "373"},
	{"ID" : "397", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64ns_64_1_1_U924", "Parent" : "373"},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_62ns_64_1_1_U925", "Parent" : "373"},
	{"ID" : "399", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64ns_64_1_1_U926", "Parent" : "373"},
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64s_64_1_1_U927", "Parent" : "373"},
	{"ID" : "401", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_2_fu_283.grp_fpmul503_mont_2_4_fu_89.grp_mul_2_5_1_fu_16.grp_mul_2_5_fu_14.mul_64s_64s_64_1_1_U928", "Parent" : "373"},
	{"ID" : "402", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291", "Parent" : "0", "Child" : ["403", "404", "405", "406", "408", "410", "413", "415", "446"],
		"CDFG" : "fp2sqr503_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125", "EstimateLatencyMax" : "125",
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
					{"ID" : "406", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_389_1_fu_58", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "408", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_68", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "413", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_389_1135_fu_86", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "415", "SubInstance" : "grp_fpmul503_mont_4_fu_94", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "446", "SubInstance" : "grp_fpmul503_mont_3_fu_103", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_78", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.t1_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.t2_U", "Parent" : "402"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.t3_U", "Parent" : "402"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_389_1_fu_58", "Parent" : "402", "Child" : ["407"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln392_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_389_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_68", "Parent" : "402", "Child" : ["409"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln392_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "408"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_78", "Parent" : "402", "Child" : ["411", "412"],
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
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_78.p503x2_1_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "410"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_389_1135_fu_86", "Parent" : "402", "Child" : ["414"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_389_1135",
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
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_389_1135_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "413"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94", "Parent" : "402", "Child" : ["416"],
		"CDFG" : "fpmul503_mont_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30", "EstimateLatencyMax" : "30",
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
					{"ID" : "416", "SubInstance" : "grp_mul_4_2_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_mul_4_2_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_mul_4_2_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28", "Parent" : "415", "Child" : ["417"],
		"CDFG" : "mul_4_2",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "417", "SubInstance" : "grp_mul_4_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "417", "SubInstance" : "grp_mul_4_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "417", "SubInstance" : "grp_mul_4_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "417", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26", "Parent" : "416", "Child" : ["418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445"],
		"CDFG" : "mul_4_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "418", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_64ns_128_1_1_U1660", "Parent" : "417"},
	{"ID" : "419", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_64ns_128_1_1_U1661", "Parent" : "417"},
	{"ID" : "420", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_64ns_128_1_1_U1662", "Parent" : "417"},
	{"ID" : "421", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_64ns_128_1_1_U1663", "Parent" : "417"},
	{"ID" : "422", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_64ns_128_1_1_U1664", "Parent" : "417"},
	{"ID" : "423", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_64ns_128_1_1_U1665", "Parent" : "417"},
	{"ID" : "424", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_64ns_128_1_1_U1666", "Parent" : "417"},
	{"ID" : "425", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_64ns_128_1_1_U1667", "Parent" : "417"},
	{"ID" : "426", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_64ns_128_1_1_U1668", "Parent" : "417"},
	{"ID" : "427", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_56ns_119_1_1_U1669", "Parent" : "417"},
	{"ID" : "428", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_56ns_119_1_1_U1670", "Parent" : "417"},
	{"ID" : "429", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_62ns_125_1_1_U1671", "Parent" : "417"},
	{"ID" : "430", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_62ns_125_1_1_U1672", "Parent" : "417"},
	{"ID" : "431", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_62ns_125_1_1_U1673", "Parent" : "417"},
	{"ID" : "432", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_62ns_125_1_1_U1674", "Parent" : "417"},
	{"ID" : "433", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_64ns_127_1_1_U1675", "Parent" : "417"},
	{"ID" : "434", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_64ns_127_1_1_U1676", "Parent" : "417"},
	{"ID" : "435", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_65ns_128_1_1_U1677", "Parent" : "417"},
	{"ID" : "436", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64ns_65ns_128_1_1_U1678", "Parent" : "417"},
	{"ID" : "437", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64s_64ns_64_1_1_U1679", "Parent" : "417"},
	{"ID" : "438", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64s_64ns_64_1_1_U1680", "Parent" : "417"},
	{"ID" : "439", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64s_64ns_64_1_1_U1681", "Parent" : "417"},
	{"ID" : "440", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64s_62ns_64_1_1_U1682", "Parent" : "417"},
	{"ID" : "441", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64s_64ns_64_1_1_U1683", "Parent" : "417"},
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64s_62ns_64_1_1_U1684", "Parent" : "417"},
	{"ID" : "443", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64s_64ns_64_1_1_U1685", "Parent" : "417"},
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64s_64s_64_1_1_U1686", "Parent" : "417"},
	{"ID" : "445", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_4_fu_94.grp_mul_4_2_fu_28.grp_mul_4_1_fu_26.mul_64s_64s_64_1_1_U1687", "Parent" : "417"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103", "Parent" : "402", "Child" : ["447"],
		"CDFG" : "fpmul503_mont_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30", "EstimateLatencyMax" : "30",
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
					{"ID" : "447", "SubInstance" : "grp_mul_5_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "447", "SubInstance" : "grp_mul_5_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26", "Parent" : "446", "Child" : ["448"],
		"CDFG" : "mul_5_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "448", "SubInstance" : "grp_mul_3_fu_24", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "448", "SubInstance" : "grp_mul_3_fu_24", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "448", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24", "Parent" : "447", "Child" : ["449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476"],
		"CDFG" : "mul_3",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "449", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_64ns_128_1_1_U1700", "Parent" : "448"},
	{"ID" : "450", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_64ns_128_1_1_U1701", "Parent" : "448"},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_64ns_128_1_1_U1702", "Parent" : "448"},
	{"ID" : "452", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_64ns_128_1_1_U1703", "Parent" : "448"},
	{"ID" : "453", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_64ns_128_1_1_U1704", "Parent" : "448"},
	{"ID" : "454", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_64ns_128_1_1_U1705", "Parent" : "448"},
	{"ID" : "455", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_64ns_128_1_1_U1706", "Parent" : "448"},
	{"ID" : "456", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_64ns_128_1_1_U1707", "Parent" : "448"},
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_64ns_128_1_1_U1708", "Parent" : "448"},
	{"ID" : "458", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_56ns_119_1_1_U1709", "Parent" : "448"},
	{"ID" : "459", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_56ns_119_1_1_U1710", "Parent" : "448"},
	{"ID" : "460", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_62ns_125_1_1_U1711", "Parent" : "448"},
	{"ID" : "461", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_62ns_125_1_1_U1712", "Parent" : "448"},
	{"ID" : "462", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_62ns_125_1_1_U1713", "Parent" : "448"},
	{"ID" : "463", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_62ns_125_1_1_U1714", "Parent" : "448"},
	{"ID" : "464", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_64ns_127_1_1_U1715", "Parent" : "448"},
	{"ID" : "465", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_64ns_127_1_1_U1716", "Parent" : "448"},
	{"ID" : "466", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_65ns_128_1_1_U1717", "Parent" : "448"},
	{"ID" : "467", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64ns_65ns_128_1_1_U1718", "Parent" : "448"},
	{"ID" : "468", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64s_64ns_64_1_1_U1719", "Parent" : "448"},
	{"ID" : "469", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64s_64ns_64_1_1_U1720", "Parent" : "448"},
	{"ID" : "470", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64s_64ns_64_1_1_U1721", "Parent" : "448"},
	{"ID" : "471", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64s_62ns_64_1_1_U1722", "Parent" : "448"},
	{"ID" : "472", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64s_64ns_64_1_1_U1723", "Parent" : "448"},
	{"ID" : "473", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64s_62ns_64_1_1_U1724", "Parent" : "448"},
	{"ID" : "474", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64s_64ns_64_1_1_U1725", "Parent" : "448"},
	{"ID" : "475", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64s_64s_64_1_1_U1726", "Parent" : "448"},
	{"ID" : "476", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_291.grp_fpmul503_mont_3_fu_103.grp_mul_5_1_fu_26.grp_mul_3_fu_24.mul_64s_64s_64_1_1_U1727", "Parent" : "448"},
	{"ID" : "477", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_357_fu_300", "Parent" : "0", "Child" : ["478", "480", "483"],
		"CDFG" : "fpadd503_357",
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
					{"ID" : "478", "SubInstance" : "grp_fpadd503_357_Pipeline_VITIS_LOOP_33_1_fu_52", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "478", "SubInstance" : "grp_fpadd503_357_Pipeline_VITIS_LOOP_33_1_fu_52", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "478", "SubInstance" : "grp_fpadd503_357_Pipeline_VITIS_LOOP_33_1_fu_52", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "480", "SubInstance" : "grp_fpadd503_357_Pipeline_VITIS_LOOP_39_2_fu_63", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "483", "SubInstance" : "grp_fpadd503_357_Pipeline_VITIS_LOOP_46_3_fu_73", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "480", "SubInstance" : "grp_fpadd503_357_Pipeline_VITIS_LOOP_39_2_fu_63", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "483", "SubInstance" : "grp_fpadd503_357_Pipeline_VITIS_LOOP_46_3_fu_73", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_357_fu_300.grp_fpadd503_357_Pipeline_VITIS_LOOP_33_1_fu_52", "Parent" : "477", "Child" : ["479"],
		"CDFG" : "fpadd503_357_Pipeline_VITIS_LOOP_33_1",
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
			{"Name" : "zext_ln35_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_357_fu_300.grp_fpadd503_357_Pipeline_VITIS_LOOP_33_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "478"},
	{"ID" : "480", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_357_fu_300.grp_fpadd503_357_Pipeline_VITIS_LOOP_39_2_fu_63", "Parent" : "477", "Child" : ["481", "482"],
		"CDFG" : "fpadd503_357_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "zext_ln35_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_183_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_357_fu_300.grp_fpadd503_357_Pipeline_VITIS_LOOP_39_2_fu_63.p503x2_1_U", "Parent" : "480"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_357_fu_300.grp_fpadd503_357_Pipeline_VITIS_LOOP_39_2_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "480"},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_357_fu_300.grp_fpadd503_357_Pipeline_VITIS_LOOP_46_3_fu_73", "Parent" : "477", "Child" : ["484", "485"],
		"CDFG" : "fpadd503_357_Pipeline_VITIS_LOOP_46_3",
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
			{"Name" : "zext_ln35_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_357_fu_300.grp_fpadd503_357_Pipeline_VITIS_LOOP_46_3_fu_73.p503x2_1_U", "Parent" : "483"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_357_fu_300.grp_fpadd503_357_Pipeline_VITIS_LOOP_46_3_fu_73.flow_control_loop_pipe_sequential_init_U", "Parent" : "483"},
	{"ID" : "486", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_1_fu_314", "Parent" : "0", "Child" : ["487", "489"],
		"CDFG" : "fpsub503_4_1",
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
					{"ID" : "487", "SubInstance" : "grp_fpsub503_4_1_Pipeline_VITIS_LOOP_61_1_fu_50", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "487", "SubInstance" : "grp_fpsub503_4_1_Pipeline_VITIS_LOOP_61_1_fu_50", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "489", "SubInstance" : "grp_fpsub503_4_1_Pipeline_VITIS_LOOP_68_2_fu_60", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "489", "SubInstance" : "grp_fpsub503_4_1_Pipeline_VITIS_LOOP_68_2_fu_60", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_1_fu_314.grp_fpsub503_4_1_Pipeline_VITIS_LOOP_61_1_fu_50", "Parent" : "486", "Child" : ["488"],
		"CDFG" : "fpsub503_4_1_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "zext_ln63_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_1_fu_314.grp_fpsub503_4_1_Pipeline_VITIS_LOOP_61_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "487"},
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_1_fu_314.grp_fpsub503_4_1_Pipeline_VITIS_LOOP_68_2_fu_60", "Parent" : "486", "Child" : ["490", "491"],
		"CDFG" : "fpsub503_4_1_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_1_fu_314.grp_fpsub503_4_1_Pipeline_VITIS_LOOP_68_2_fu_60.p503x2_1_U", "Parent" : "489"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_1_fu_314.grp_fpsub503_4_1_Pipeline_VITIS_LOOP_68_2_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "489"},
	{"ID" : "492", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327", "Parent" : "0", "Child" : ["493", "494", "495", "496", "497", "498", "499", "500", "522", "524", "526", "528", "531", "533", "547", "569", "571"],
		"CDFG" : "fp2mul503_mont_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "500", "SubInstance" : "grp_mp_mul_7161_fu_92", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "522", "SubInstance" : "grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1_fu_110", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "533", "SubInstance" : "grp_rdc_mont_136_fu_154", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "571", "SubInstance" : "grp_rdc_mont_3_fu_180", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "grp_mp_mul_7161_fu_92", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "524", "SubInstance" : "grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1202_fu_119", "Port" : "b_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "500", "SubInstance" : "grp_mp_mul_7161_fu_92", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "524", "SubInstance" : "grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1202_fu_119", "Port" : "b_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "528", "SubInstance" : "grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_198_1_fu_138", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "533", "SubInstance" : "grp_rdc_mont_136_fu_154", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "571", "SubInstance" : "grp_rdc_mont_3_fu_180", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.t1_U", "Parent" : "492"},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.t2_U", "Parent" : "492"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.tt1_U", "Parent" : "492"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.tt1_1_U", "Parent" : "492"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.tt2_U", "Parent" : "492"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.tt2_1_U", "Parent" : "492"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.tt3_U", "Parent" : "492"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92", "Parent" : "492", "Child" : ["501"],
		"CDFG" : "mp_mul_7161",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "501", "SubInstance" : "grp_mul_4_fu_38", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "501", "SubInstance" : "grp_mul_4_fu_38", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "501", "SubInstance" : "grp_mul_4_fu_38", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "501", "SubInstance" : "grp_mul_4_fu_38", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38", "Parent" : "500", "Child" : ["502", "503", "504", "506", "509", "512", "514", "517"],
		"CDFG" : "mul_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "506", "SubInstance" : "grp_mul_4_Pipeline_VITIS_LOOP_27_1_fu_80", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "509", "SubInstance" : "grp_mul_4_Pipeline_VITIS_LOOP_27_1119_fu_88", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "grp_mul_4_Pipeline_VITIS_LOOP_54_1_fu_72", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "517", "SubInstance" : "grp_convert_blocks_to_digits_fu_111", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "grp_mul_4_Pipeline_VITIS_LOOP_54_1_fu_72", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "517", "SubInstance" : "grp_convert_blocks_to_digits_fu_111", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "502", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.acc_U", "Parent" : "501"},
	{"ID" : "503", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.acc_1_U", "Parent" : "501"},
	{"ID" : "504", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_54_1_fu_72", "Parent" : "501", "Child" : ["505"],
		"CDFG" : "mul_4_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "505", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_54_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "504"},
	{"ID" : "506", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_27_1_fu_80", "Parent" : "501", "Child" : ["507", "508"],
		"CDFG" : "mul_4_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "zext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "507", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_27_1_fu_80.partset_512ns_512ns_64ns_32ns_512_1_1_U1766", "Parent" : "506"},
	{"ID" : "508", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_27_1_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "506"},
	{"ID" : "509", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_27_1119_fu_88", "Parent" : "501", "Child" : ["510", "511"],
		"CDFG" : "mul_4_Pipeline_VITIS_LOOP_27_1119",
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
			{"Name" : "B_15_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "510", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_27_1119_fu_88.partset_512ns_512ns_64ns_32ns_512_1_1_U1770", "Parent" : "509"},
	{"ID" : "511", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_27_1119_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "509"},
	{"ID" : "512", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_77_2_fu_95", "Parent" : "501", "Child" : ["513"],
		"CDFG" : "mul_4_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "513", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_77_2_fu_95.flow_control_loop_pipe_sequential_init_U", "Parent" : "512"},
	{"ID" : "514", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_103", "Parent" : "501", "Child" : ["515", "516"],
		"CDFG" : "mul_4_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "515", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_103.mul_64ns_64ns_128_1_1_U1775", "Parent" : "514"},
	{"ID" : "516", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_mul_4_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "514"},
	{"ID" : "517", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_convert_blocks_to_digits_fu_111", "Parent" : "501", "Child" : ["518", "520"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "518", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "520", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "518", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "520", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "518", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_convert_blocks_to_digits_fu_111.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "517", "Child" : ["519"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "519", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_convert_blocks_to_digits_fu_111.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "518"},
	{"ID" : "520", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_convert_blocks_to_digits_fu_111.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "517", "Child" : ["521"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "521", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7161_fu_92.grp_mul_4_fu_38.grp_convert_blocks_to_digits_fu_111.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "520"},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1_fu_110", "Parent" : "492", "Child" : ["523"],
		"CDFG" : "fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln392_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "522"},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1202_fu_119", "Parent" : "492", "Child" : ["525"],
		"CDFG" : "fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1202",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "525", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1202_fu_119.flow_control_loop_pipe_sequential_init_U", "Parent" : "524"},
	{"ID" : "526", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_171_1_fu_128", "Parent" : "492", "Child" : ["527"],
		"CDFG" : "fp2mul503_mont_2_Pipeline_VITIS_LOOP_171_1",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "527", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_171_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "526"},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_198_1_fu_138", "Parent" : "492", "Child" : ["529", "530"],
		"CDFG" : "fp2mul503_mont_2_Pipeline_VITIS_LOOP_198_1",
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
			{"Name" : "sext_ln190", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_198_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_198_1_fu_138.p503_1_U", "Parent" : "528"},
	{"ID" : "530", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_198_1_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "528"},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1203_fu_146", "Parent" : "492", "Child" : ["532"],
		"CDFG" : "fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1203",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "532", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1203_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "531"},
	{"ID" : "533", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154", "Parent" : "492", "Child" : ["534", "536", "539", "542"],
		"CDFG" : "rdc_mont_136",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "534", "SubInstance" : "grp_rdc_mont_136_Pipeline_VITIS_LOOP_306_1_fu_202", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "536", "SubInstance" : "grp_rdc_mont_136_Pipeline_VITIS_LOOP_314_3_fu_210", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "539", "SubInstance" : "grp_rdc_mont_136_Pipeline_VITIS_LOOP_340_5_fu_227", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "536", "SubInstance" : "grp_rdc_mont_136_Pipeline_VITIS_LOOP_314_3_fu_210", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "539", "SubInstance" : "grp_rdc_mont_136_Pipeline_VITIS_LOOP_340_5_fu_227", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "534", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_rdc_mont_136_Pipeline_VITIS_LOOP_306_1_fu_202", "Parent" : "533", "Child" : ["535"],
		"CDFG" : "rdc_mont_136_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "zext_ln299", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "535", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_rdc_mont_136_Pipeline_VITIS_LOOP_306_1_fu_202.flow_control_loop_pipe_sequential_init_U", "Parent" : "534"},
	{"ID" : "536", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_rdc_mont_136_Pipeline_VITIS_LOOP_314_3_fu_210", "Parent" : "533", "Child" : ["537", "538"],
		"CDFG" : "rdc_mont_136_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_026", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "537", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_rdc_mont_136_Pipeline_VITIS_LOOP_314_3_fu_210.p503p1_1_U", "Parent" : "536"},
	{"ID" : "538", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_rdc_mont_136_Pipeline_VITIS_LOOP_314_3_fu_210.flow_control_loop_pipe_sequential_init_U", "Parent" : "536"},
	{"ID" : "539", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_rdc_mont_136_Pipeline_VITIS_LOOP_340_5_fu_227", "Parent" : "533", "Child" : ["540", "541"],
		"CDFG" : "rdc_mont_136_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "540", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_rdc_mont_136_Pipeline_VITIS_LOOP_340_5_fu_227.p503p1_1_U", "Parent" : "539"},
	{"ID" : "541", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_rdc_mont_136_Pipeline_VITIS_LOOP_340_5_fu_227.flow_control_loop_pipe_sequential_init_U", "Parent" : "539"},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_digit_x_digit_fu_902", "Parent" : "533", "Child" : ["543", "544", "545", "546"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "543", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_digit_x_digit_fu_902.mul_32ns_32ns_64_1_1_U338", "Parent" : "542"},
	{"ID" : "544", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_digit_x_digit_fu_902.mul_32ns_32ns_64_1_1_U339", "Parent" : "542"},
	{"ID" : "545", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_digit_x_digit_fu_902.mul_32ns_32ns_64_1_1_U340", "Parent" : "542"},
	{"ID" : "546", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_136_fu_154.grp_digit_x_digit_fu_902.mul_32ns_32ns_64_1_1_U341", "Parent" : "542"},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164", "Parent" : "492", "Child" : ["548"],
		"CDFG" : "mp_mul_7163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "548", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "548", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "548", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "548", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18", "Parent" : "547", "Child" : ["549", "550", "551", "553", "556", "559", "561", "564"],
		"CDFG" : "mul_6170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "553", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "556", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "551", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "564", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "551", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "564", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "549", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.acc_U", "Parent" : "548"},
	{"ID" : "550", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.acc_1_U", "Parent" : "548"},
	{"ID" : "551", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "548", "Child" : ["552"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "552", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "551"},
	{"ID" : "553", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "548", "Child" : ["554", "555"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "554", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "553"},
	{"ID" : "555", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "553"},
	{"ID" : "556", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "548", "Child" : ["557", "558"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1113",
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
			{"Name" : "B_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "557", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "556"},
	{"ID" : "558", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "556"},
	{"ID" : "559", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "548", "Child" : ["560"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "560", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "559"},
	{"ID" : "561", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "548", "Child" : ["562", "563"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "562", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "561"},
	{"ID" : "563", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "561"},
	{"ID" : "564", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "548", "Child" : ["565", "567"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "565", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "567", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "565", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "567", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "565", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "564", "Child" : ["566"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "566", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "565"},
	{"ID" : "567", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "564", "Child" : ["568"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "568", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_mp_mul_7163_fu_164.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "567"},
	{"ID" : "569", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_171_1204_fu_172", "Parent" : "492", "Child" : ["570"],
		"CDFG" : "fp2mul503_mont_2_Pipeline_VITIS_LOOP_171_1204",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_171_1204_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "569"},
	{"ID" : "571", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180", "Parent" : "492", "Child" : ["572", "574", "577", "580"],
		"CDFG" : "rdc_mont_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "572", "SubInstance" : "grp_rdc_mont_3_Pipeline_VITIS_LOOP_306_1_fu_225", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "574", "SubInstance" : "grp_rdc_mont_3_Pipeline_VITIS_LOOP_314_3_fu_232", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "577", "SubInstance" : "grp_rdc_mont_3_Pipeline_VITIS_LOOP_340_5_fu_249", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "574", "SubInstance" : "grp_rdc_mont_3_Pipeline_VITIS_LOOP_314_3_fu_232", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "577", "SubInstance" : "grp_rdc_mont_3_Pipeline_VITIS_LOOP_340_5_fu_249", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "572", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_rdc_mont_3_Pipeline_VITIS_LOOP_306_1_fu_225", "Parent" : "571", "Child" : ["573"],
		"CDFG" : "rdc_mont_3_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "zext_ln299", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "573", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_rdc_mont_3_Pipeline_VITIS_LOOP_306_1_fu_225.flow_control_loop_pipe_sequential_init_U", "Parent" : "572"},
	{"ID" : "574", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_rdc_mont_3_Pipeline_VITIS_LOOP_314_3_fu_232", "Parent" : "571", "Child" : ["575", "576"],
		"CDFG" : "rdc_mont_3_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "575", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_rdc_mont_3_Pipeline_VITIS_LOOP_314_3_fu_232.p503p1_1_U", "Parent" : "574"},
	{"ID" : "576", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_rdc_mont_3_Pipeline_VITIS_LOOP_314_3_fu_232.flow_control_loop_pipe_sequential_init_U", "Parent" : "574"},
	{"ID" : "577", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_rdc_mont_3_Pipeline_VITIS_LOOP_340_5_fu_249", "Parent" : "571", "Child" : ["578", "579"],
		"CDFG" : "rdc_mont_3_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln299", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "578", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_rdc_mont_3_Pipeline_VITIS_LOOP_340_5_fu_249.p503p1_1_U", "Parent" : "577"},
	{"ID" : "579", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_rdc_mont_3_Pipeline_VITIS_LOOP_340_5_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "577"},
	{"ID" : "580", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_digit_x_digit_fu_992", "Parent" : "571", "Child" : ["581", "582", "583", "584"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "581", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U338", "Parent" : "580"},
	{"ID" : "582", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U339", "Parent" : "580"},
	{"ID" : "583", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U340", "Parent" : "580"},
	{"ID" : "584", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_327.grp_rdc_mont_3_fu_180.grp_digit_x_digit_fu_992.mul_32ns_32ns_64_1_1_U341", "Parent" : "580"}]}


set ArgLastReadFirstWriteLatency {
	EphemeralKeyGeneration_A_1_Outline_VITIS_LOOP_156_3 {
		npts_5 {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		pts_X {Type IO LastRead 1 FirstWrite -1}
		pts_Z {Type IO LastRead 13 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_358 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		b_offset4 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_358_Pipeline_VITIS_LOOP_33_1 {
		zext_ln35_15 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln35_14 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_358_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_168_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_358_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		b_offset4 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_Pipeline_VITIS_LOOP_61_1 {
		zext_ln63_14 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln63_13 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_4_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_71 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		b_offset_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite -1}
		c_offset {Type I LastRead 8 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_73 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_84 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_27_1106 {
		b {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		B_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_2_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1139 {
		b_offset_offset {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		add_ln194 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_71_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_71_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_71_Pipeline_VITIS_LOOP_389_1140 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_136 {
		ma {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_136_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln299 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_136_Pipeline_VITIS_LOOP_314_3 {
		v_026 {Type I LastRead 0 FirstWrite -1}
		u_025 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_77_out {Type O LastRead -1 FirstWrite 2}
		u_36_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_136_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_81_out {Type O LastRead -1 FirstWrite 2}
		u_40_out {Type O LastRead -1 FirstWrite 2}
		t_20_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_7163 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1113 {
		b {Type I LastRead 0 FirstWrite -1}
		B_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_9_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_71_Pipeline_VITIS_LOOP_171_1141 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_3 {
		ma_0 {Type I LastRead 4 FirstWrite -1}
		ma_1 {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_3_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln299 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_3_Pipeline_VITIS_LOOP_314_3 {
		v {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_49_out {Type O LastRead -1 FirstWrite 2}
		u_27_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_3_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_26 {Type I LastRead 0 FirstWrite -1}
		u_23 {Type I LastRead 0 FirstWrite -1}
		zext_ln299 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_53_out {Type O LastRead -1 FirstWrite 2}
		u_31_out {Type O LastRead -1 FirstWrite 2}
		t_15_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_231_3 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_7163 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1113 {
		b {Type I LastRead 0 FirstWrite -1}
		B_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_9_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	mp_mul_7163 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1113 {
		b {Type I LastRead 0 FirstWrite -1}
		B_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_9_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1173 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_138 {
		ma {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_138_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_138_Pipeline_VITIS_LOOP_314_3 {
		v_026 {Type I LastRead 0 FirstWrite -1}
		u_025 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_68_out {Type O LastRead -1 FirstWrite 2}
		u_36_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_138_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_72_out {Type O LastRead -1 FirstWrite 2}
		u_40_out {Type O LastRead -1 FirstWrite 2}
		t_20_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1174 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_6 {
		ma_0 {Type I LastRead 4 FirstWrite -1}
		ma_1 {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_6_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_6_Pipeline_VITIS_LOOP_314_3 {
		v {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_29_out {Type O LastRead -1 FirstWrite 2}
		u_26_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_6_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_26 {Type I LastRead 0 FirstWrite -1}
		u_23 {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_33_out {Type O LastRead -1 FirstWrite 2}
		u_30_out {Type O LastRead -1 FirstWrite 2}
		t_15_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_59 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_74 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_85 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_85_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_85_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_85_Pipeline_VITIS_LOOP_27_1105 {
		coeff {Type I LastRead 0 FirstWrite -1}
		B_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_85_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_85_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_1_reload {Type I LastRead 0 FirstWrite -1}
		B_1_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	mp_mul_73 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_84 {
		a {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_27_1106 {
		b {Type I LastRead 0 FirstWrite -1}
		coeff {Type I LastRead 0 FirstWrite -1}
		B_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_84_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_2_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1148 {
		coeff {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_59_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_59_Pipeline_VITIS_LOOP_389_1149 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_138 {
		ma {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_138_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_138_Pipeline_VITIS_LOOP_314_3 {
		v_026 {Type I LastRead 0 FirstWrite -1}
		u_025 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_68_out {Type O LastRead -1 FirstWrite 2}
		u_36_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_138_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_72_out {Type O LastRead -1 FirstWrite 2}
		u_40_out {Type O LastRead -1 FirstWrite 2}
		t_20_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_7163 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1113 {
		b {Type I LastRead 0 FirstWrite -1}
		B_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_9_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_59_Pipeline_VITIS_LOOP_171_1150 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_6 {
		ma_0 {Type I LastRead 4 FirstWrite -1}
		ma_1 {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_6_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_6_Pipeline_VITIS_LOOP_314_3 {
		v {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_29_out {Type O LastRead -1 FirstWrite 2}
		u_26_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_6_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_26 {Type I LastRead 0 FirstWrite -1}
		u_23 {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_33_out {Type O LastRead -1 FirstWrite 2}
		u_30_out {Type O LastRead -1 FirstWrite 2}
		t_15_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpsub503_4_2109 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		c_offset4 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_2109_Pipeline_VITIS_LOOP_61_1 {
		zext_ln63_10 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln63_9 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_4_2109_Pipeline_VITIS_LOOP_68_2 {
		zext_ln63_9 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_7_2 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 13 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_61_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_68_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_7_2_Pipeline_VITIS_LOOP_389_1125 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_7 {
		ma {Type I LastRead 10 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_7_1 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_7 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	fpmul503_mont_2_4 {
		ma {Type I LastRead 10 FirstWrite -1}
		mc {Type IO LastRead 13 FirstWrite 20}}
	mul_2_5_1 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	mul_2_5 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	fp2sqr503_mont {
		c {Type IO LastRead 13 FirstWrite -1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_389_1 {
		c_offset {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 1 FirstWrite -1}
		zext_ln392_9 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 2}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_61_1 {
		c_offset {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 1 FirstWrite -1}
		zext_ln392_9 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_68_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_389_1135 {
		c_offset {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_4 {
		ma {Type I LastRead 10 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 21}
		mc_offset {Type I LastRead 0 FirstWrite -1}}
	mul_4_2 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 21}
		c_offset {Type I LastRead 0 FirstWrite -1}}
	mul_4_1 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 21}
		c_offset {Type I LastRead 21 FirstWrite -1}}
	fpmul503_mont_3 {
		ma {Type I LastRead 10 FirstWrite -1}
		mc {Type IO LastRead 13 FirstWrite 21}
		mb_offset {Type I LastRead 0 FirstWrite -1}}
	mul_5_1 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 21}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	mul_3 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 21}
		b_offset {Type I LastRead 0 FirstWrite -1}}
	fpadd503_357 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		c_offset2 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_357_Pipeline_VITIS_LOOP_33_1 {
		zext_ln35_16 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_357_Pipeline_VITIS_LOOP_39_2 {
		zext_ln35_16 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		carry_183_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_357_Pipeline_VITIS_LOOP_46_3 {
		zext_ln35_16 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_1 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_1_Pipeline_VITIS_LOOP_61_1 {
		zext_ln63_12 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_4_1_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_2 {
		c {Type IO LastRead 1 FirstWrite -1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_7161 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_4_Pipeline_VITIS_LOOP_27_1 {
		zext_ln31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_4_Pipeline_VITIS_LOOP_27_1119 {
		b {Type I LastRead 0 FirstWrite -1}
		B_15_out {Type O LastRead -1 FirstWrite 0}}
	mul_4_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_4_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_15_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1 {
		c_offset {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 1 FirstWrite -1}
		zext_ln392_68 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1202 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_2_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_2_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_2_Pipeline_VITIS_LOOP_389_1203 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_136 {
		ma {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_136_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln299 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_136_Pipeline_VITIS_LOOP_314_3 {
		v_026 {Type I LastRead 0 FirstWrite -1}
		u_025 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_77_out {Type O LastRead -1 FirstWrite 2}
		u_36_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_136_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_81_out {Type O LastRead -1 FirstWrite 2}
		u_40_out {Type O LastRead -1 FirstWrite 2}
		t_20_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_7163 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1113 {
		b {Type I LastRead 0 FirstWrite -1}
		B_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_9_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_2_Pipeline_VITIS_LOOP_171_1204 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_3 {
		ma_0 {Type I LastRead 4 FirstWrite -1}
		ma_1 {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_3_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln299 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_3_Pipeline_VITIS_LOOP_314_3 {
		v {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_49_out {Type O LastRead -1 FirstWrite 2}
		u_27_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_3_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_26 {Type I LastRead 0 FirstWrite -1}
		u_23 {Type I LastRead 0 FirstWrite -1}
		zext_ln299 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_53_out {Type O LastRead -1 FirstWrite 2}
		u_31_out {Type O LastRead -1 FirstWrite 2}
		t_15_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	npts_5 { ap_none {  { npts_5 in_data 0 32 } } }
	coeff { ap_memory {  { coeff_address0 mem_address 1 6 }  { coeff_ce0 mem_ce 1 1 }  { coeff_q0 mem_dout 0 64 } } }
	pts_X { ap_memory {  { pts_X_address0 mem_address 1 7 }  { pts_X_ce0 mem_ce 1 1 }  { pts_X_we0 mem_we 1 1 }  { pts_X_d0 mem_din 1 64 }  { pts_X_q0 mem_dout 0 64 } } }
	pts_Z { ap_memory {  { pts_Z_address0 mem_address 1 7 }  { pts_Z_ce0 mem_ce 1 1 }  { pts_Z_we0 mem_we 1 1 }  { pts_Z_d0 mem_din 1 64 }  { pts_Z_q0 mem_dout 0 64 } } }
}
