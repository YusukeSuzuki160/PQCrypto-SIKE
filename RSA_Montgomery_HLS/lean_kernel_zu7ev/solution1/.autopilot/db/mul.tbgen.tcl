set moduleName mul
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
set cdfgNum 8
set C_modelName {mul}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict b { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict mod_r { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ a int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ b int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ c int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ mod_r int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ mprime int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mod_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mprime", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_address0 sc_out sc_lv 4 signal 0 } 
	{ a_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_q0 sc_in sc_lv 32 signal 0 } 
	{ a_address1 sc_out sc_lv 4 signal 0 } 
	{ a_ce1 sc_out sc_logic 1 signal 0 } 
	{ a_q1 sc_in sc_lv 32 signal 0 } 
	{ b_address0 sc_out sc_lv 4 signal 1 } 
	{ b_ce0 sc_out sc_logic 1 signal 1 } 
	{ b_q0 sc_in sc_lv 32 signal 1 } 
	{ c_address0 sc_out sc_lv 4 signal 2 } 
	{ c_ce0 sc_out sc_logic 1 signal 2 } 
	{ c_we0 sc_out sc_logic 1 signal 2 } 
	{ c_d0 sc_out sc_lv 32 signal 2 } 
	{ c_address1 sc_out sc_lv 4 signal 2 } 
	{ c_ce1 sc_out sc_logic 1 signal 2 } 
	{ c_we1 sc_out sc_logic 1 signal 2 } 
	{ c_d1 sc_out sc_lv 32 signal 2 } 
	{ mod_r_address0 sc_out sc_lv 4 signal 3 } 
	{ mod_r_ce0 sc_out sc_logic 1 signal 3 } 
	{ mod_r_q0 sc_in sc_lv 32 signal 3 } 
	{ mod_r_address1 sc_out sc_lv 4 signal 3 } 
	{ mod_r_ce1 sc_out sc_logic 1 signal 3 } 
	{ mod_r_q1 sc_in sc_lv 32 signal 3 } 
	{ mprime sc_in sc_lv 32 signal 4 } 
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
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "q1" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "q0" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we0" }} , 
 	{ "name": "c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "d0" }} , 
 	{ "name": "c_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "address1" }} , 
 	{ "name": "c_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce1" }} , 
 	{ "name": "c_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we1" }} , 
 	{ "name": "c_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "d1" }} , 
 	{ "name": "mod_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mod_r", "role": "address0" }} , 
 	{ "name": "mod_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mod_r", "role": "ce0" }} , 
 	{ "name": "mod_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mod_r", "role": "q0" }} , 
 	{ "name": "mod_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mod_r", "role": "address1" }} , 
 	{ "name": "mod_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mod_r", "role": "ce1" }} , 
 	{ "name": "mod_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mod_r", "role": "q1" }} , 
 	{ "name": "mprime", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mprime", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "58", "EstimateLatencyMax" : "58",
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
					{"ID" : "1", "SubInstance" : "grp_mul_Pipeline_CIOS_LOOP_fu_585", "Port" : "b", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mod_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "mul_Pipeline_CIOS_LOOP",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv13", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv13_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "mprime", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv46", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv62_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv8525_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1424_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1323_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1222_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_1020_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_919_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_818_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_717_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_616_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_515_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_414_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_313_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_212_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv67_111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "conv6710_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "CIOS_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U8", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U9", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U10", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U11", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U12", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U13", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U14", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U15", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U16", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U17", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U18", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U19", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U20", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U21", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U22", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U23", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32ns_32ns_64_1_1_U24", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.mul_32s_32s_32_1_1_U25", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_CIOS_LOOP_fu_585.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	mul {
		a {Type I LastRead 8 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 11}
		mod_r {Type I LastRead 8 FirstWrite -1}
		mprime {Type I LastRead 8 FirstWrite -1}}
	mul_Pipeline_CIOS_LOOP {
		b {Type I LastRead 0 FirstWrite -1}
		conv13 {Type I LastRead 0 FirstWrite -1}
		conv13_1 {Type I LastRead 0 FirstWrite -1}
		conv13_2 {Type I LastRead 0 FirstWrite -1}
		conv13_3 {Type I LastRead 0 FirstWrite -1}
		conv13_4 {Type I LastRead 0 FirstWrite -1}
		conv13_5 {Type I LastRead 0 FirstWrite -1}
		conv13_6 {Type I LastRead 0 FirstWrite -1}
		conv13_7 {Type I LastRead 0 FirstWrite -1}
		conv13_8 {Type I LastRead 0 FirstWrite -1}
		conv13_9 {Type I LastRead 0 FirstWrite -1}
		conv13_10 {Type I LastRead 0 FirstWrite -1}
		conv13_11 {Type I LastRead 0 FirstWrite -1}
		conv13_12 {Type I LastRead 0 FirstWrite -1}
		conv13_13 {Type I LastRead 0 FirstWrite -1}
		conv13_14 {Type I LastRead 0 FirstWrite -1}
		conv13_15 {Type I LastRead 0 FirstWrite -1}
		mprime {Type I LastRead 0 FirstWrite -1}
		conv46 {Type I LastRead 0 FirstWrite -1}
		conv62 {Type I LastRead 0 FirstWrite -1}
		conv62_1 {Type I LastRead 0 FirstWrite -1}
		conv62_2 {Type I LastRead 0 FirstWrite -1}
		conv62_3 {Type I LastRead 0 FirstWrite -1}
		conv62_4 {Type I LastRead 0 FirstWrite -1}
		conv62_5 {Type I LastRead 0 FirstWrite -1}
		conv62_6 {Type I LastRead 0 FirstWrite -1}
		conv62_7 {Type I LastRead 0 FirstWrite -1}
		conv62_8 {Type I LastRead 0 FirstWrite -1}
		conv62_9 {Type I LastRead 0 FirstWrite -1}
		conv62_10 {Type I LastRead 0 FirstWrite -1}
		conv62_11 {Type I LastRead 0 FirstWrite -1}
		conv62_12 {Type I LastRead 0 FirstWrite -1}
		conv62_13 {Type I LastRead 0 FirstWrite -1}
		conv62_14 {Type I LastRead 0 FirstWrite -1}
		conv8525_out {Type O LastRead -1 FirstWrite 6}
		p_out {Type O LastRead -1 FirstWrite 6}
		conv67_1424_out {Type O LastRead -1 FirstWrite 6}
		conv67_1323_out {Type O LastRead -1 FirstWrite 6}
		conv67_1222_out {Type O LastRead -1 FirstWrite 6}
		conv67_1121_out {Type O LastRead -1 FirstWrite 6}
		conv67_1020_out {Type O LastRead -1 FirstWrite 6}
		conv67_919_out {Type O LastRead -1 FirstWrite 6}
		conv67_818_out {Type O LastRead -1 FirstWrite 6}
		conv67_717_out {Type O LastRead -1 FirstWrite 6}
		conv67_616_out {Type O LastRead -1 FirstWrite 6}
		conv67_515_out {Type O LastRead -1 FirstWrite 6}
		conv67_414_out {Type O LastRead -1 FirstWrite 6}
		conv67_313_out {Type O LastRead -1 FirstWrite 6}
		conv67_212_out {Type O LastRead -1 FirstWrite 6}
		conv67_111_out {Type O LastRead -1 FirstWrite 6}
		conv6710_out {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "58", "Max" : "58"}
	, {"Name" : "Interval", "Min" : "58", "Max" : "58"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { ap_memory {  { a_address0 mem_address 1 4 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 32 }  { a_address1 MemPortADDR2 1 4 }  { a_ce1 MemPortCE2 1 1 }  { a_q1 MemPortDOUT2 0 32 } } }
	b { ap_memory {  { b_address0 mem_address 1 4 }  { b_ce0 mem_ce 1 1 }  { b_q0 mem_dout 0 32 } } }
	c { ap_memory {  { c_address0 mem_address 1 4 }  { c_ce0 mem_ce 1 1 }  { c_we0 mem_we 1 1 }  { c_d0 mem_din 1 32 }  { c_address1 MemPortADDR2 1 4 }  { c_ce1 MemPortCE2 1 1 }  { c_we1 MemPortWE2 1 1 }  { c_d1 MemPortDIN2 1 32 } } }
	mod_r { ap_memory {  { mod_r_address0 mem_address 1 4 }  { mod_r_ce0 mem_ce 1 1 }  { mod_r_q0 mem_dout 0 32 }  { mod_r_address1 MemPortADDR2 1 4 }  { mod_r_ce1 MemPortCE2 1 1 }  { mod_r_q1 MemPortDOUT2 0 32 } } }
	mprime { ap_none {  { mprime in_data 0 32 } } }
}
