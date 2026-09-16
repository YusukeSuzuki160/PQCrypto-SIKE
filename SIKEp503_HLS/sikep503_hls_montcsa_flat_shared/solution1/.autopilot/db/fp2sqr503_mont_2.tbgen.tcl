set moduleName fp2sqr503_mont_2
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
set C_modelName {fp2sqr503_mont.2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ a int 64 regular {array 16 { 1 1 } 1 1 }  }
	{ c int 64 regular {array 16 { 0 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_address0 sc_out sc_lv 4 signal 0 } 
	{ a_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_q0 sc_in sc_lv 64 signal 0 } 
	{ a_address1 sc_out sc_lv 4 signal 0 } 
	{ a_ce1 sc_out sc_logic 1 signal 0 } 
	{ a_q1 sc_in sc_lv 64 signal 0 } 
	{ c_address0 sc_out sc_lv 4 signal 1 } 
	{ c_ce0 sc_out sc_logic 1 signal 1 } 
	{ c_we0 sc_out sc_logic 1 signal 1 } 
	{ c_d0 sc_out sc_lv 64 signal 1 } 
	{ c_address1 sc_out sc_lv 4 signal 1 } 
	{ c_ce1 sc_out sc_logic 1 signal 1 } 
	{ c_we1 sc_out sc_logic 1 signal 1 } 
	{ c_d1 sc_out sc_lv 64 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "q1" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we0" }} , 
 	{ "name": "c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "d0" }} , 
 	{ "name": "c_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "address1" }} , 
 	{ "name": "c_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce1" }} , 
 	{ "name": "c_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we1" }} , 
 	{ "name": "c_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "8", "11", "13", "39"],
		"CDFG" : "fp2sqr503_mont_2",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_400_1_fu_36", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_62_1_fu_44", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "11", "SubInstance" : "grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_400_1170_fu_60", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "39", "SubInstance" : "grp_fpmul503_mont_5_fu_75", "Port" : "mb", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_fpmul503_mont_6_fu_67", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "39", "SubInstance" : "grp_fpmul503_mont_5_fu_75", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_69_2_fu_52", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_400_1_fu_36", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "fp2sqr503_mont_2_Pipeline_VITIS_LOOP_400_1",
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_400_1_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_62_1_fu_44", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "fp2sqr503_mont_2_Pipeline_VITIS_LOOP_62_1",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_62_1_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_69_2_fu_52", "Parent" : "0", "Child" : ["9", "10"],
		"CDFG" : "fp2sqr503_mont_2_Pipeline_VITIS_LOOP_69_2",
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_69_2_fu_52.p503x2_1_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_69_2_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_400_1170_fu_60", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "fp2sqr503_mont_2_Pipeline_VITIS_LOOP_400_1170",
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
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_400_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_Pipeline_VITIS_LOOP_400_1170_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67", "Parent" : "0", "Child" : ["14"],
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
					{"ID" : "14", "SubInstance" : "grp_mul_4_1_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_mul_4_1_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_mul_4_1_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8", "Parent" : "13", "Child" : ["15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U893", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U894", "Parent" : "14"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U895", "Parent" : "14"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U896", "Parent" : "14"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U897", "Parent" : "14"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U898", "Parent" : "14"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U899", "Parent" : "14"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U900", "Parent" : "14"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U901", "Parent" : "14"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U902", "Parent" : "14"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U903", "Parent" : "14"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U904", "Parent" : "14"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U905", "Parent" : "14"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_56ns_119_1_1_U906", "Parent" : "14"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_62ns_125_1_1_U907", "Parent" : "14"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_62ns_125_1_1_U908", "Parent" : "14"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_64ns_127_1_1_U909", "Parent" : "14"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_65ns_128_1_1_U910", "Parent" : "14"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64ns_65ns_128_1_1_U911", "Parent" : "14"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64s_64ns_64_1_1_U912", "Parent" : "14"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64s_64ns_64_1_1_U913", "Parent" : "14"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64s_62ns_64_1_1_U914", "Parent" : "14"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64s_62ns_64_1_1_U915", "Parent" : "14"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_6_fu_67.grp_mul_4_1_fu_8.mul_64s_64s_64_1_1_U916", "Parent" : "14"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75", "Parent" : "0", "Child" : ["40"],
		"CDFG" : "fpmul503_mont_5",
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
					{"ID" : "40", "SubInstance" : "grp_mul_5_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_mul_5_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_mul_5_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8", "Parent" : "39", "Child" : ["41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"],
		"CDFG" : "mul_5",
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
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2593", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2594", "Parent" : "40"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2595", "Parent" : "40"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2596", "Parent" : "40"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2597", "Parent" : "40"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2598", "Parent" : "40"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2599", "Parent" : "40"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2600", "Parent" : "40"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2601", "Parent" : "40"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2602", "Parent" : "40"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2603", "Parent" : "40"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2604", "Parent" : "40"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_128_1_1_U2605", "Parent" : "40"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_56ns_119_1_1_U2606", "Parent" : "40"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_62ns_125_1_1_U2607", "Parent" : "40"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_62ns_125_1_1_U2608", "Parent" : "40"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_64ns_127_1_1_U2609", "Parent" : "40"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_65ns_128_1_1_U2610", "Parent" : "40"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64ns_65ns_128_1_1_U2611", "Parent" : "40"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64s_64ns_64_1_1_U2612", "Parent" : "40"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64s_64ns_64_1_1_U2613", "Parent" : "40"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64s_62ns_64_1_1_U2614", "Parent" : "40"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64s_62ns_64_1_1_U2615", "Parent" : "40"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_5_fu_75.grp_mul_5_fu_8.mul_64s_64s_64_1_1_U2616", "Parent" : "40"}]}


set ArgLastReadFirstWriteLatency {
	fp2sqr503_mont_2 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 16}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_Pipeline_VITIS_LOOP_400_1 {
		a {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_2_Pipeline_VITIS_LOOP_62_1 {
		a {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_2_Pipeline_VITIS_LOOP_69_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_Pipeline_VITIS_LOOP_400_1170 {
		a {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_6 {
		ma {Type I LastRead 6 FirstWrite -1}
		mb {Type I LastRead 10 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 16}}
	mul_4_1 {
		a {Type I LastRead 6 FirstWrite -1}
		b {Type I LastRead 10 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 16}}
	fpmul503_mont_5 {
		ma {Type I LastRead 6 FirstWrite -1}
		mb {Type I LastRead 10 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 16}}
	mul_5 {
		a {Type I LastRead 6 FirstWrite -1}
		b {Type I LastRead 10 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "79", "Max" : "79"}
	, {"Name" : "Interval", "Min" : "79", "Max" : "79"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { ap_memory {  { a_address0 mem_address 1 4 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 64 }  { a_address1 MemPortADDR2 1 4 }  { a_ce1 MemPortCE2 1 1 }  { a_q1 MemPortDOUT2 0 64 } } }
	c { ap_memory {  { c_address0 mem_address 1 4 }  { c_ce0 mem_ce 1 1 }  { c_we0 mem_we 1 1 }  { c_d0 mem_din 1 64 }  { c_address1 MemPortADDR2 1 4 }  { c_ce1 MemPortCE2 1 1 }  { c_we1 MemPortWE2 1 1 }  { c_d1 MemPortDIN2 1 64 } } }
}
