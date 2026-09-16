set moduleName fp2sqr503_mont_44
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
set C_modelName {fp2sqr503_mont.44}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict coeff { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c_0 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ coeff int 64 regular {array 48 { 1 } 1 1 }  }
	{ c_0 int 64 regular {array 8 { 0 } 0 1 }  }
	{ c_1 int 64 regular {array 8 { 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "coeff", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c_0", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
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
	{ c_0_address0 sc_out sc_lv 3 signal 1 } 
	{ c_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ c_0_we0 sc_out sc_logic 1 signal 1 } 
	{ c_0_d0 sc_out sc_lv 64 signal 1 } 
	{ c_1_address0 sc_out sc_lv 3 signal 2 } 
	{ c_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ c_1_we0 sc_out sc_logic 1 signal 2 } 
	{ c_1_d0 sc_out sc_lv 64 signal 2 } 
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
 	{ "name": "c_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_0", "role": "address0" }} , 
 	{ "name": "c_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "ce0" }} , 
 	{ "name": "c_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "we0" }} , 
 	{ "name": "c_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_0", "role": "d0" }} , 
 	{ "name": "c_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_1", "role": "address0" }} , 
 	{ "name": "c_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "ce0" }} , 
 	{ "name": "c_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "we0" }} , 
 	{ "name": "c_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "8", "11", "13", "44"],
		"CDFG" : "fp2sqr503_mont_44",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "92", "EstimateLatencyMax" : "92",
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
					{"ID" : "4", "SubInstance" : "grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_396_1_fu_48", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "coeff", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "11", "SubInstance" : "grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_396_199_fu_72", "Port" : "coeff", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "44", "SubInstance" : "grp_fpmul503_mont_54_fu_87", "Port" : "coeff", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_fpmul503_mont_2_fu_79", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_fpmul503_mont_54_fu_87", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_68_2_fu_64", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_396_1_fu_48", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "fp2sqr503_mont_44_Pipeline_VITIS_LOOP_396_1",
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
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_396_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_61_1_fu_56", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "fp2sqr503_mont_44_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_61_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_68_2_fu_64", "Parent" : "0", "Child" : ["9", "10"],
		"CDFG" : "fp2sqr503_mont_44_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_68_2_fu_64.p503x2_1_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_68_2_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_396_199_fu_72", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "fp2sqr503_mont_44_Pipeline_VITIS_LOOP_396_199",
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
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_44_Pipeline_VITIS_LOOP_396_199_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79", "Parent" : "0", "Child" : ["14"],
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
					{"ID" : "14", "SubInstance" : "grp_mul_2_3_2_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_mul_2_3_2_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_mul_2_3_2_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18", "Parent" : "13", "Child" : ["15"],
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
					{"ID" : "15", "SubInstance" : "grp_mul_2_1_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_mul_2_1_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_mul_2_1_1_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18", "Parent" : "14", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"],
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
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U761", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U762", "Parent" : "15"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U763", "Parent" : "15"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U764", "Parent" : "15"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U765", "Parent" : "15"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U766", "Parent" : "15"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U767", "Parent" : "15"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U768", "Parent" : "15"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U769", "Parent" : "15"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_56ns_119_1_1_U770", "Parent" : "15"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_56ns_119_1_1_U771", "Parent" : "15"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U772", "Parent" : "15"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U773", "Parent" : "15"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U774", "Parent" : "15"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U775", "Parent" : "15"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_127_1_1_U776", "Parent" : "15"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_127_1_1_U777", "Parent" : "15"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_65ns_128_1_1_U778", "Parent" : "15"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_65ns_128_1_1_U779", "Parent" : "15"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U780", "Parent" : "15"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U781", "Parent" : "15"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U782", "Parent" : "15"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_62ns_64_1_1_U783", "Parent" : "15"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U784", "Parent" : "15"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_62ns_64_1_1_U785", "Parent" : "15"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U786", "Parent" : "15"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64s_64_1_1_U787", "Parent" : "15"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_2_fu_79.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64s_64_1_1_U788", "Parent" : "15"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87", "Parent" : "0", "Child" : ["45"],
		"CDFG" : "fpmul503_mont_54",
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
					{"ID" : "45", "SubInstance" : "grp_mul_63_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_mul_63_fu_18", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_mul_63_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18", "Parent" : "44", "Child" : ["46"],
		"CDFG" : "mul_63",
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
					{"ID" : "46", "SubInstance" : "grp_mul_72_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_mul_72_fu_18", "Port" : "coeff", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_mul_72_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18", "Parent" : "45", "Child" : ["47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
		"CDFG" : "mul_72",
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
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_64ns_128_1_1_U1127", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_64ns_128_1_1_U1128", "Parent" : "46"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_64ns_128_1_1_U1129", "Parent" : "46"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_64ns_128_1_1_U1130", "Parent" : "46"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_64ns_128_1_1_U1131", "Parent" : "46"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_64ns_128_1_1_U1132", "Parent" : "46"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_64ns_128_1_1_U1133", "Parent" : "46"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_64ns_128_1_1_U1134", "Parent" : "46"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_64ns_128_1_1_U1135", "Parent" : "46"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_56ns_119_1_1_U1136", "Parent" : "46"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_56ns_119_1_1_U1137", "Parent" : "46"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_62ns_125_1_1_U1138", "Parent" : "46"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_62ns_125_1_1_U1139", "Parent" : "46"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_62ns_125_1_1_U1140", "Parent" : "46"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_62ns_125_1_1_U1141", "Parent" : "46"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_64ns_127_1_1_U1142", "Parent" : "46"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_64ns_127_1_1_U1143", "Parent" : "46"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_65ns_128_1_1_U1144", "Parent" : "46"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64ns_65ns_128_1_1_U1145", "Parent" : "46"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64s_64ns_64_1_1_U1146", "Parent" : "46"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64s_64ns_64_1_1_U1147", "Parent" : "46"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64s_64ns_64_1_1_U1148", "Parent" : "46"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64s_62ns_64_1_1_U1149", "Parent" : "46"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64s_64ns_64_1_1_U1150", "Parent" : "46"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64s_62ns_64_1_1_U1151", "Parent" : "46"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64s_64ns_64_1_1_U1152", "Parent" : "46"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64s_64s_64_1_1_U1153", "Parent" : "46"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_54_fu_87.grp_mul_63_fu_18.grp_mul_72_fu_18.mul_64s_64s_64_1_1_U1154", "Parent" : "46"}]}


set ArgLastReadFirstWriteLatency {
	fp2sqr503_mont_44 {
		coeff {Type I LastRead 13 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 20}
		c_1 {Type O LastRead -1 FirstWrite 20}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_44_Pipeline_VITIS_LOOP_396_1 {
		coeff {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 2}}
	fp2sqr503_mont_44_Pipeline_VITIS_LOOP_61_1 {
		coeff {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_44_Pipeline_VITIS_LOOP_68_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_44_Pipeline_VITIS_LOOP_396_199 {
		coeff {Type I LastRead 0 FirstWrite -1}
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
	fpmul503_mont_54 {
		ma {Type I LastRead 11 FirstWrite -1}
		coeff {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_63 {
		a {Type I LastRead 11 FirstWrite -1}
		coeff {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_72 {
		a {Type I LastRead 11 FirstWrite -1}
		coeff {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "92", "Max" : "92"}
	, {"Name" : "Interval", "Min" : "92", "Max" : "92"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	coeff { ap_memory {  { coeff_address0 mem_address 1 6 }  { coeff_ce0 mem_ce 1 1 }  { coeff_q0 mem_dout 0 64 } } }
	c_0 { ap_memory {  { c_0_address0 mem_address 1 3 }  { c_0_ce0 mem_ce 1 1 }  { c_0_we0 mem_we 1 1 }  { c_0_d0 mem_din 1 64 } } }
	c_1 { ap_memory {  { c_1_address0 mem_address 1 3 }  { c_1_ce0 mem_ce 1 1 }  { c_1_we0 mem_we 1 1 }  { c_1_d0 mem_din 1 64 } } }
}
