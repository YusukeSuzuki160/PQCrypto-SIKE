set moduleName montMult_words
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
set cdfgNum 11
set C_modelName {montMult_words}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict x { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict y { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict m { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict out_r { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ x int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ y int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ m int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ mprime int 32 regular  }
	{ out_r int 32 regular {array 16 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mprime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_address0 sc_out sc_lv 4 signal 0 } 
	{ x_ce0 sc_out sc_logic 1 signal 0 } 
	{ x_q0 sc_in sc_lv 32 signal 0 } 
	{ y_address0 sc_out sc_lv 4 signal 1 } 
	{ y_ce0 sc_out sc_logic 1 signal 1 } 
	{ y_q0 sc_in sc_lv 32 signal 1 } 
	{ y_address1 sc_out sc_lv 4 signal 1 } 
	{ y_ce1 sc_out sc_logic 1 signal 1 } 
	{ y_q1 sc_in sc_lv 32 signal 1 } 
	{ m_address0 sc_out sc_lv 4 signal 2 } 
	{ m_ce0 sc_out sc_logic 1 signal 2 } 
	{ m_q0 sc_in sc_lv 32 signal 2 } 
	{ m_address1 sc_out sc_lv 4 signal 2 } 
	{ m_ce1 sc_out sc_logic 1 signal 2 } 
	{ m_q1 sc_in sc_lv 32 signal 2 } 
	{ mprime sc_in sc_lv 32 signal 3 } 
	{ out_r_address0 sc_out sc_lv 4 signal 4 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 4 } 
	{ out_r_we0 sc_out sc_logic 1 signal 4 } 
	{ out_r_d0 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "q0" }} , 
 	{ "name": "y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y", "role": "address1" }} , 
 	{ "name": "y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce1" }} , 
 	{ "name": "y_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "q1" }} , 
 	{ "name": "m_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m", "role": "address0" }} , 
 	{ "name": "m_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "ce0" }} , 
 	{ "name": "m_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m", "role": "q0" }} , 
 	{ "name": "m_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m", "role": "address1" }} , 
 	{ "name": "m_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "ce1" }} , 
 	{ "name": "m_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m", "role": "q1" }} , 
 	{ "name": "mprime", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mprime", "role": "default" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "25", "29", "31"],
		"CDFG" : "montMult_words",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616", "Port" : "x", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_montMult_words_Pipeline_VITIS_LOOP_88_6_fu_697", "Port" : "m", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "29", "SubInstance" : "grp_montMult_words_Pipeline_VITIS_LOOP_98_7_fu_705", "Port" : "m", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_montMult_words_Pipeline_VITIS_LOOP_107_8_fu_713", "Port" : "out_r", "Inst_start_state" : "27", "Inst_end_state" : "28"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sub_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_28_1_fu_610", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "montMult_words_Pipeline_VITIS_LOOP_28_1",
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_28_1_fu_610.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "montMult_words_Pipeline_VITIS_LOOP_33_2",
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
			{"Name" : "t_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv16", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv16_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv48_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "add6822_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv6321_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1520_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1419_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1318_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1217_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_1015_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_914_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_813_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_712_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_611_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_510_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv52_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U9", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U10", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U11", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U12", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U13", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U14", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U15", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U16", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U17", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U18", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U19", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U20", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U21", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U22", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U23", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U24", "Parent" : "5"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32ns_32ns_64_1_1_U25", "Parent" : "5"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.mul_32s_32s_32_1_1_U26", "Parent" : "5"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_33_2_fu_616.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_88_6_fu_697", "Parent" : "0", "Child" : ["26", "27", "28"],
		"CDFG" : "montMult_words_Pipeline_VITIS_LOOP_88_6",
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ge_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_88_6_fu_697.sparsemux_7_2_32_1_1_U98", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_88_6_fu_697.sparsemux_7_2_32_1_1_U99", "Parent" : "25"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_88_6_fu_697.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_98_7_fu_705", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "montMult_words_Pipeline_VITIS_LOOP_98_7",
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_98_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_98_7_fu_705.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_107_8_fu_713", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "montMult_words_Pipeline_VITIS_LOOP_107_8",
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
			{"Name" : "sub", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mask", "Type" : "None", "Direction" : "I"},
			{"Name" : "neg", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_words_Pipeline_VITIS_LOOP_107_8_fu_713.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"}]}


set ArgLastReadFirstWriteLatency {
	montMult_words {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 11 FirstWrite -1}
		m {Type I LastRead 11 FirstWrite -1}
		mprime {Type I LastRead 11 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}
	montMult_words_Pipeline_VITIS_LOOP_28_1 {
		t {Type O LastRead -1 FirstWrite 0}}
	montMult_words_Pipeline_VITIS_LOOP_33_2 {
		t_load_17 {Type I LastRead 0 FirstWrite -1}
		t_load_16 {Type I LastRead 0 FirstWrite -1}
		t_load_15 {Type I LastRead 0 FirstWrite -1}
		t_load_14 {Type I LastRead 0 FirstWrite -1}
		t_load_13 {Type I LastRead 0 FirstWrite -1}
		t_load_12 {Type I LastRead 0 FirstWrite -1}
		t_load_11 {Type I LastRead 0 FirstWrite -1}
		t_load_10 {Type I LastRead 0 FirstWrite -1}
		t_load_9 {Type I LastRead 0 FirstWrite -1}
		t_load_8 {Type I LastRead 0 FirstWrite -1}
		t_load_7 {Type I LastRead 0 FirstWrite -1}
		t_load_6 {Type I LastRead 0 FirstWrite -1}
		t_load_5 {Type I LastRead 0 FirstWrite -1}
		t_load_4 {Type I LastRead 0 FirstWrite -1}
		t_load_3 {Type I LastRead 0 FirstWrite -1}
		t_load_2 {Type I LastRead 0 FirstWrite -1}
		t_load_1 {Type I LastRead 0 FirstWrite -1}
		t_load {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		conv16 {Type I LastRead 0 FirstWrite -1}
		conv16_1 {Type I LastRead 0 FirstWrite -1}
		conv16_2 {Type I LastRead 0 FirstWrite -1}
		conv16_3 {Type I LastRead 0 FirstWrite -1}
		conv16_4 {Type I LastRead 0 FirstWrite -1}
		conv16_5 {Type I LastRead 0 FirstWrite -1}
		conv16_6 {Type I LastRead 0 FirstWrite -1}
		conv16_7 {Type I LastRead 0 FirstWrite -1}
		conv16_8 {Type I LastRead 0 FirstWrite -1}
		conv16_9 {Type I LastRead 0 FirstWrite -1}
		conv16_10 {Type I LastRead 0 FirstWrite -1}
		conv16_11 {Type I LastRead 0 FirstWrite -1}
		conv16_12 {Type I LastRead 0 FirstWrite -1}
		conv16_13 {Type I LastRead 0 FirstWrite -1}
		conv16_14 {Type I LastRead 0 FirstWrite -1}
		conv16_15 {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		conv48 {Type I LastRead 0 FirstWrite -1}
		conv48_1 {Type I LastRead 0 FirstWrite -1}
		conv48_2 {Type I LastRead 0 FirstWrite -1}
		conv48_3 {Type I LastRead 0 FirstWrite -1}
		conv48_4 {Type I LastRead 0 FirstWrite -1}
		conv48_5 {Type I LastRead 0 FirstWrite -1}
		conv48_6 {Type I LastRead 0 FirstWrite -1}
		conv48_7 {Type I LastRead 0 FirstWrite -1}
		conv48_8 {Type I LastRead 0 FirstWrite -1}
		conv48_9 {Type I LastRead 0 FirstWrite -1}
		conv48_10 {Type I LastRead 0 FirstWrite -1}
		conv48_11 {Type I LastRead 0 FirstWrite -1}
		conv48_12 {Type I LastRead 0 FirstWrite -1}
		conv48_13 {Type I LastRead 0 FirstWrite -1}
		conv48_14 {Type I LastRead 0 FirstWrite -1}
		conv48_15 {Type I LastRead 0 FirstWrite -1}
		add6822_out {Type O LastRead -1 FirstWrite 6}
		conv6321_out {Type O LastRead -1 FirstWrite 6}
		conv52_1520_out {Type O LastRead -1 FirstWrite 6}
		conv52_1419_out {Type O LastRead -1 FirstWrite 6}
		conv52_1318_out {Type O LastRead -1 FirstWrite 6}
		conv52_1217_out {Type O LastRead -1 FirstWrite 6}
		conv52_1116_out {Type O LastRead -1 FirstWrite 6}
		conv52_1015_out {Type O LastRead -1 FirstWrite 6}
		conv52_914_out {Type O LastRead -1 FirstWrite 6}
		conv52_813_out {Type O LastRead -1 FirstWrite 6}
		conv52_712_out {Type O LastRead -1 FirstWrite 6}
		conv52_611_out {Type O LastRead -1 FirstWrite 6}
		conv52_510_out {Type O LastRead -1 FirstWrite 6}
		conv52_49_out {Type O LastRead -1 FirstWrite 6}
		conv52_38_out {Type O LastRead -1 FirstWrite 6}
		conv52_27_out {Type O LastRead -1 FirstWrite 6}
		conv52_16_out {Type O LastRead -1 FirstWrite 6}}
	montMult_words_Pipeline_VITIS_LOOP_88_6 {
		t {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		ge_out {Type O LastRead -1 FirstWrite 0}}
	montMult_words_Pipeline_VITIS_LOOP_98_7 {
		t {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		sub {Type O LastRead -1 FirstWrite 1}}
	montMult_words_Pipeline_VITIS_LOOP_107_8 {
		sub {Type I LastRead 0 FirstWrite -1}
		t {Type I LastRead 0 FirstWrite -1}
		mask {Type I LastRead 0 FirstWrite -1}
		neg {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "141", "Max" : "141"}
	, {"Name" : "Interval", "Min" : "141", "Max" : "141"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x { ap_memory {  { x_address0 mem_address 1 4 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 32 } } }
	y { ap_memory {  { y_address0 mem_address 1 4 }  { y_ce0 mem_ce 1 1 }  { y_q0 mem_dout 0 32 }  { y_address1 MemPortADDR2 1 4 }  { y_ce1 MemPortCE2 1 1 }  { y_q1 MemPortDOUT2 0 32 } } }
	m { ap_memory {  { m_address0 mem_address 1 4 }  { m_ce0 mem_ce 1 1 }  { m_q0 mem_dout 0 32 }  { m_address1 MemPortADDR2 1 4 }  { m_ce1 MemPortCE2 1 1 }  { m_q1 MemPortDOUT2 0 32 } } }
	mprime { ap_none {  { mprime in_data 0 32 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 4 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 32 } } }
}
