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
set cdfgNum 56
set C_modelName {mul}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict b { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ a int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ b int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ c int 64 regular {array 16 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_address0 sc_out sc_lv 3 signal 0 } 
	{ a_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_q0 sc_in sc_lv 64 signal 0 } 
	{ b_address0 sc_out sc_lv 3 signal 1 } 
	{ b_ce0 sc_out sc_logic 1 signal 1 } 
	{ b_q0 sc_in sc_lv 64 signal 1 } 
	{ c_address0 sc_out sc_lv 4 signal 2 } 
	{ c_ce0 sc_out sc_logic 1 signal 2 } 
	{ c_we0 sc_out sc_logic 1 signal 2 } 
	{ c_d0 sc_out sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "q0" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we0" }} , 
 	{ "name": "c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "782", "EstimateLatencyMax" : "1395",
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
					{"ID" : "1", "SubInstance" : "grp_mul_sized_8u_s_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_sized_8u_s_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_sized_8u_s_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "13", "15", "17", "154", "156", "158", "295"],
		"CDFG" : "mul_sized_8u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "781", "EstimateLatencyMax" : "1394",
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
					{"ID" : "11", "SubInstance" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "15", "SubInstance" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "15", "SubInstance" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "grp_karatsuba_combine_fu_167", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.Al_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.Ah_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.Bl_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.Bh_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.z0_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.z2_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.z1_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.Sal_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.Sbl_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106", "Parent" : "1", "Child" : ["12"],
		"CDFG" : "mul_sized_8u_Pipeline_VITIS_LOOP_175_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_187_3_fu_118", "Parent" : "1", "Child" : ["14"],
		"CDFG" : "mul_sized_8u_Pipeline_VITIS_LOOP_187_3",
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
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_187_3_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126", "Parent" : "1", "Child" : ["16"],
		"CDFG" : "mul_sized_8u_Pipeline_VITIS_LOOP_181_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136", "Parent" : "1", "Child" : ["18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "29", "31", "33", "81", "83", "85", "140"],
		"CDFG" : "mul_sized_4u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "243", "EstimateLatencyMax" : "441",
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
					{"ID" : "27", "SubInstance" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "31", "SubInstance" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "31", "SubInstance" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_karatsuba_combine_fu_171", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Al_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Ah_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Bl_U", "Parent" : "17"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Bh_U", "Parent" : "17"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.z0_U", "Parent" : "17"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.z2_U", "Parent" : "17"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.z1_U", "Parent" : "17"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Sal_U", "Parent" : "17"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Sbl_U", "Parent" : "17"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108", "Parent" : "17", "Child" : ["28"],
		"CDFG" : "mul_sized_4u_Pipeline_VITIS_LOOP_175_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_187_3_fu_120", "Parent" : "17", "Child" : ["30"],
		"CDFG" : "mul_sized_4u_Pipeline_VITIS_LOOP_187_3",
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
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_187_3_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128", "Parent" : "17", "Child" : ["32"],
		"CDFG" : "mul_sized_4u_Pipeline_VITIS_LOOP_181_2",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138", "Parent" : "17", "Child" : ["34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "45", "47", "49", "56", "58", "60", "67"],
		"CDFG" : "mul_sized_2u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "130",
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
					{"ID" : "43", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "47", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "47", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_karatsuba_combine_fu_178", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.Al_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.Ah_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.Bl_U", "Parent" : "33"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.Bh_U", "Parent" : "33"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.z0_U", "Parent" : "33"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.z2_U", "Parent" : "33"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.z1_U", "Parent" : "33"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.Sal_U", "Parent" : "33"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.Sbl_U", "Parent" : "33"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112", "Parent" : "33", "Child" : ["44"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_175_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_187_3_fu_124", "Parent" : "33", "Child" : ["46"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_187_3",
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
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_187_3_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132", "Parent" : "33", "Child" : ["48"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_181_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143", "Parent" : "33", "Child" : ["50", "52", "55"],
		"CDFG" : "mul_sized_1u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66", "Parent" : "49", "Child" : ["51"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_110_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "51", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Parent" : "49", "Child" : ["53", "54"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.partselect_64ns_128ns_32ns_64_1_1_U38", "Parent" : "52"},
	{"ID" : "54", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_s_fu_143.mul_64ns_64ns_128_1_1_U43", "Parent" : "49"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_1_fu_152", "Parent" : "33", "Child" : ["57"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_91_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_1_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_15_fu_161", "Parent" : "33", "Child" : ["59"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_91_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_15_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170", "Parent" : "33", "Child" : ["61", "63", "66"],
		"CDFG" : "mul_sized_1u_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64", "Parent" : "60", "Child" : ["62"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Parent" : "60", "Child" : ["64", "65"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.partselect_64ns_128ns_32ns_64_1_1_U63", "Parent" : "63"},
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_1u_4_fu_170.mul_64ns_64ns_128_1_1_U67", "Parent" : "60"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178", "Parent" : "33", "Child" : ["68", "70", "72", "74", "78"],
		"CDFG" : "karatsuba_combine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "55",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "67", "Child" : ["69"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "69", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Parent" : "67", "Child" : ["71"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Parent" : "67", "Child" : ["73"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_110",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "67", "Child" : ["75", "76", "77"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U81", "Parent" : "74"},
	{"ID" : "76", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U82", "Parent" : "74"},
	{"ID" : "77", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "67", "Child" : ["79", "80"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U88", "Parent" : "78"},
	{"ID" : "80", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_1_fu_147", "Parent" : "17", "Child" : ["82"],
		"CDFG" : "mul_sized_4u_Pipeline_VITIS_LOOP_91_1",
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
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_1_fu_147.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_13_fu_155", "Parent" : "17", "Child" : ["84"],
		"CDFG" : "mul_sized_4u_Pipeline_VITIS_LOOP_91_13",
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
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_13_fu_155.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163", "Parent" : "17", "Child" : ["86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "97", "99", "101", "108", "115", "117", "119", "126"],
		"CDFG" : "mul_sized_2u_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "62", "EstimateLatencyMax" : "98",
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
					{"ID" : "95", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "97", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "97", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_karatsuba_combine_3_fu_191", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.Al_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.Ah_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.Bl_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.Bh_U", "Parent" : "85"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.z0_U", "Parent" : "85"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.z2_U", "Parent" : "85"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.z1_U", "Parent" : "85"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.Sal_U", "Parent" : "85"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.Sbl_U", "Parent" : "85"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114", "Parent" : "85", "Child" : ["96"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127", "Parent" : "85", "Child" : ["98"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3_fu_139", "Parent" : "85", "Child" : ["100"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3",
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
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3_fu_139.flow_control_loop_pipe_sequential_init_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145", "Parent" : "85", "Child" : ["102", "104", "107"],
		"CDFG" : "mul_sized_1u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66", "Parent" : "101", "Child" : ["103"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_110_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Parent" : "101", "Child" : ["105", "106"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.partselect_64ns_128ns_32ns_64_1_1_U38", "Parent" : "104"},
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_145.mul_64ns_64ns_128_1_1_U43", "Parent" : "101"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153", "Parent" : "85", "Child" : ["109", "111", "114"],
		"CDFG" : "mul_sized_1u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66", "Parent" : "108", "Child" : ["110"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_110_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "110", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Parent" : "108", "Child" : ["112", "113"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "112", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.partselect_64ns_128ns_32ns_64_1_1_U38", "Parent" : "111"},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_s_fu_153.mul_64ns_64ns_128_1_1_U43", "Parent" : "108"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1_fu_161", "Parent" : "85", "Child" : ["116"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14_fu_172", "Parent" : "85", "Child" : ["118"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183", "Parent" : "85", "Child" : ["120", "122", "125"],
		"CDFG" : "mul_sized_1u_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "120", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64", "Parent" : "119", "Child" : ["121"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Parent" : "119", "Child" : ["123", "124"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.partselect_64ns_128ns_32ns_64_1_1_U63", "Parent" : "122"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_1u_4_fu_183.mul_64ns_64ns_128_1_1_U67", "Parent" : "119"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191", "Parent" : "85", "Child" : ["127", "129", "131", "133", "137"],
		"CDFG" : "karatsuba_combine_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "126", "Child" : ["128"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94", "Parent" : "126", "Child" : ["130"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "130", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102", "Parent" : "126", "Child" : ["132"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "132", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "126", "Child" : ["134", "135", "136"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "134", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U153", "Parent" : "133"},
	{"ID" : "135", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U154", "Parent" : "133"},
	{"ID" : "136", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "133"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "126", "Child" : ["138", "139"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "138", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U158", "Parent" : "137"},
	{"ID" : "139", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "137"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171", "Parent" : "17", "Child" : ["141", "143", "145", "147", "151"],
		"CDFG" : "karatsuba_combine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "55",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "140", "Child" : ["142"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Parent" : "140", "Child" : ["144"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Parent" : "140", "Child" : ["146"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_110",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "140", "Child" : ["148", "149", "150"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U81", "Parent" : "147"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U82", "Parent" : "147"},
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "147"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "140", "Child" : ["152", "153"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U88", "Parent" : "151"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_1_fu_143", "Parent" : "1", "Child" : ["155"],
		"CDFG" : "mul_sized_8u_Pipeline_VITIS_LOOP_91_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_1_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_11_fu_151", "Parent" : "1", "Child" : ["157"],
		"CDFG" : "mul_sized_8u_Pipeline_VITIS_LOOP_91_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_11_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159", "Parent" : "1", "Child" : ["159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "170", "172", "174", "222", "224", "226", "281"],
		"CDFG" : "mul_sized_4u_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "242", "EstimateLatencyMax" : "427",
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
					{"ID" : "168", "SubInstance" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "172", "SubInstance" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "172", "SubInstance" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "281", "SubInstance" : "grp_karatsuba_combine_3_fu_178", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Al_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Ah_U", "Parent" : "158"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Bl_U", "Parent" : "158"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Bh_U", "Parent" : "158"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.z0_U", "Parent" : "158"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.z2_U", "Parent" : "158"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.z1_U", "Parent" : "158"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Sal_U", "Parent" : "158"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Sbl_U", "Parent" : "158"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112", "Parent" : "158", "Child" : ["169"],
		"CDFG" : "mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_187_3_fu_124", "Parent" : "158", "Child" : ["171"],
		"CDFG" : "mul_sized_4u_1_Pipeline_VITIS_LOOP_187_3",
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
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_187_3_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132", "Parent" : "158", "Child" : ["173"],
		"CDFG" : "mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143", "Parent" : "158", "Child" : ["175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "186", "188", "190", "197", "199", "201", "208"],
		"CDFG" : "mul_sized_2u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "130",
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
					{"ID" : "184", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "188", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "188", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "208", "SubInstance" : "grp_karatsuba_combine_fu_178", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.Al_U", "Parent" : "174"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.Ah_U", "Parent" : "174"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.Bl_U", "Parent" : "174"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.Bh_U", "Parent" : "174"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.z0_U", "Parent" : "174"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.z2_U", "Parent" : "174"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.z1_U", "Parent" : "174"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.Sal_U", "Parent" : "174"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.Sbl_U", "Parent" : "174"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112", "Parent" : "174", "Child" : ["185"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_175_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_175_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "184"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_187_3_fu_124", "Parent" : "174", "Child" : ["187"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_187_3",
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
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_187_3_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132", "Parent" : "174", "Child" : ["189"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_181_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_181_2_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143", "Parent" : "174", "Child" : ["191", "193", "196"],
		"CDFG" : "mul_sized_1u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66", "Parent" : "190", "Child" : ["192"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_110_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "192", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "191"},
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Parent" : "190", "Child" : ["194", "195"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "194", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.partselect_64ns_128ns_32ns_64_1_1_U38", "Parent" : "193"},
	{"ID" : "195", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "193"},
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_s_fu_143.mul_64ns_64ns_128_1_1_U43", "Parent" : "190"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_1_fu_152", "Parent" : "174", "Child" : ["198"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_91_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_1_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_15_fu_161", "Parent" : "174", "Child" : ["200"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_91_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_91_15_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170", "Parent" : "174", "Child" : ["202", "204", "207"],
		"CDFG" : "mul_sized_1u_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64", "Parent" : "201", "Child" : ["203"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "203", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "202"},
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Parent" : "201", "Child" : ["205", "206"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "205", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.partselect_64ns_128ns_32ns_64_1_1_U63", "Parent" : "204"},
	{"ID" : "206", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "204"},
	{"ID" : "207", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_1u_4_fu_170.mul_64ns_64ns_128_1_1_U67", "Parent" : "201"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178", "Parent" : "174", "Child" : ["209", "211", "213", "215", "219"],
		"CDFG" : "karatsuba_combine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "55",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "209", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "211", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "219", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "208", "Child" : ["210"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "210", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Parent" : "208", "Child" : ["212"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "212", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Parent" : "208", "Child" : ["214"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_110",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "214", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "208", "Child" : ["216", "217", "218"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "216", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U81", "Parent" : "215"},
	{"ID" : "217", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U82", "Parent" : "215"},
	{"ID" : "218", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "215"},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "208", "Child" : ["220", "221"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "220", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U88", "Parent" : "219"},
	{"ID" : "221", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_karatsuba_combine_fu_178.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "219"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_1_fu_152", "Parent" : "158", "Child" : ["223"],
		"CDFG" : "mul_sized_4u_1_Pipeline_VITIS_LOOP_91_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_1_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_12_fu_161", "Parent" : "158", "Child" : ["225"],
		"CDFG" : "mul_sized_4u_1_Pipeline_VITIS_LOOP_91_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_12_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "224"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170", "Parent" : "158", "Child" : ["227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "238", "240", "242", "249", "256", "258", "260", "267"],
		"CDFG" : "mul_sized_2u_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "62", "EstimateLatencyMax" : "98",
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
					{"ID" : "236", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "238", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "238", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "grp_karatsuba_combine_3_fu_191", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.Al_U", "Parent" : "226"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.Ah_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.Bl_U", "Parent" : "226"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.Bh_U", "Parent" : "226"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.z0_U", "Parent" : "226"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.z2_U", "Parent" : "226"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.z1_U", "Parent" : "226"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.Sal_U", "Parent" : "226"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.Sbl_U", "Parent" : "226"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114", "Parent" : "226", "Child" : ["237"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "236"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127", "Parent" : "226", "Child" : ["239"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3_fu_139", "Parent" : "226", "Child" : ["241"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3",
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
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3_fu_139.flow_control_loop_pipe_sequential_init_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145", "Parent" : "226", "Child" : ["243", "245", "248"],
		"CDFG" : "mul_sized_1u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "245", "SubInstance" : "grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66", "Parent" : "242", "Child" : ["244"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_110_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "244", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "243"},
	{"ID" : "245", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Parent" : "242", "Child" : ["246", "247"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "246", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.partselect_64ns_128ns_32ns_64_1_1_U38", "Parent" : "245"},
	{"ID" : "247", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "245"},
	{"ID" : "248", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_145.mul_64ns_64ns_128_1_1_U43", "Parent" : "242"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153", "Parent" : "226", "Child" : ["250", "252", "255"],
		"CDFG" : "mul_sized_1u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "15",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "252", "SubInstance" : "grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66", "Parent" : "249", "Child" : ["251"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_110_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "251", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_110_1_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76", "Parent" : "249", "Child" : ["253", "254"],
		"CDFG" : "mul_sized_1u_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "253", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.partselect_64ns_128ns_32ns_64_1_1_U38", "Parent" : "252"},
	{"ID" : "254", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153.grp_mul_sized_1u_Pipeline_VITIS_LOOP_117_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "252"},
	{"ID" : "255", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_s_fu_153.mul_64ns_64ns_128_1_1_U43", "Parent" : "249"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1_fu_161", "Parent" : "226", "Child" : ["257"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14_fu_172", "Parent" : "226", "Child" : ["259"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Sbl", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "carry_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14_fu_172.flow_control_loop_pipe_sequential_init_U", "Parent" : "258"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183", "Parent" : "226", "Child" : ["261", "263", "266"],
		"CDFG" : "mul_sized_1u_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "263", "SubInstance" : "grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64", "Parent" : "260", "Child" : ["262"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "262", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74", "Parent" : "260", "Child" : ["264", "265"],
		"CDFG" : "mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "264", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.partselect_64ns_128ns_32ns_64_1_1_U63", "Parent" : "263"},
	{"ID" : "265", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183.grp_mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "263"},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_1u_4_fu_183.mul_64ns_64ns_128_1_1_U67", "Parent" : "260"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191", "Parent" : "226", "Child" : ["268", "270", "272", "274", "278"],
		"CDFG" : "karatsuba_combine_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "268", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "268", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "267", "Child" : ["269"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "269", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94", "Parent" : "267", "Child" : ["271"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "271", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102", "Parent" : "267", "Child" : ["273"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "273", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "267", "Child" : ["275", "276", "277"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "275", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U153", "Parent" : "274"},
	{"ID" : "276", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U154", "Parent" : "274"},
	{"ID" : "277", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "274"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "267", "Child" : ["279", "280"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "279", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U158", "Parent" : "278"},
	{"ID" : "280", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_karatsuba_combine_3_fu_191.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "278"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178", "Parent" : "158", "Child" : ["282", "284", "286", "288", "292"],
		"CDFG" : "karatsuba_combine_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "282", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "284", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "286", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "292", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "281", "Child" : ["283"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94", "Parent" : "281", "Child" : ["285"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "285", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102", "Parent" : "281", "Child" : ["287"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "287", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "286"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "281", "Child" : ["289", "290", "291"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "289", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U153", "Parent" : "288"},
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U154", "Parent" : "288"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "288"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "281", "Child" : ["293", "294"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "293", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U158", "Parent" : "292"},
	{"ID" : "294", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "292"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167", "Parent" : "1", "Child" : ["296", "298", "300", "302", "306"],
		"CDFG" : "karatsuba_combine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "55",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "298", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "300", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "306", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "295", "Child" : ["297"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94", "Parent" : "295", "Child" : ["299"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_19_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102", "Parent" : "295", "Child" : ["301"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_110",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_110_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "300"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "295", "Child" : ["303", "304", "305"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln146_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_148_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U81", "Parent" : "302"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U82", "Parent" : "302"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "302"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "295", "Child" : ["307", "308"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_words_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U88", "Parent" : "306"},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "306"}]}


set ArgLastReadFirstWriteLatency {
	mul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_8u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_8u_Pipeline_VITIS_LOOP_175_1 {
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_8u_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_8u_Pipeline_VITIS_LOOP_181_2 {
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_4u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_Pipeline_VITIS_LOOP_175_1 {
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_4u_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_Pipeline_VITIS_LOOP_181_2 {
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 2 FirstWrite -1}}
	mul_sized_2u_Pipeline_VITIS_LOOP_175_1 {
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_181_2 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_91_1 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		Al {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_91_15 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		Bl {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_13_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_4 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 3 FirstWrite -1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine {
		nwords {Type I LastRead 4 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_19 {
		nz_3 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_110 {
		nz_4 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_2 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_Pipeline_VITIS_LOOP_91_1 {
		Al {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_Pipeline_VITIS_LOOP_91_13 {
		Bl {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_8_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1 {
		n_lo {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		n_lo_2 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1 {
		n {Type I LastRead 0 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		Al {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14 {
		n {Type I LastRead 0 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		Bl {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_10_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_4 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 3 FirstWrite -1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3 {
		nwords {Type I LastRead 3 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17 {
		nz_1 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18 {
		nz_2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_1 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine {
		nwords {Type I LastRead 4 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_19 {
		nz_3 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_110 {
		nz_4 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_2 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_8u_Pipeline_VITIS_LOOP_91_1 {
		Al {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_8u_Pipeline_VITIS_LOOP_91_11 {
		Bl {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 2 FirstWrite -1}}
	mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1 {
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_4u_1_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 2 FirstWrite -1}}
	mul_sized_2u_Pipeline_VITIS_LOOP_175_1 {
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_181_2 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_91_1 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		Al {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_91_15 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		Bl {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_13_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_4 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 3 FirstWrite -1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine {
		nwords {Type I LastRead 4 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_19 {
		nz_3 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_110 {
		nz_4 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_2 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_1_Pipeline_VITIS_LOOP_91_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		Al {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_4u_1_Pipeline_VITIS_LOOP_91_12 {
		empty {Type I LastRead 0 FirstWrite -1}
		Bl {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_4_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_175_1 {
		n_lo {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Al {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_181_2 {
		n_hi {Type I LastRead 0 FirstWrite -1}
		n_lo_2 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		Ah {Type O LastRead -1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh {Type O LastRead -1 FirstWrite 1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_187_3 {
		Sal {Type O LastRead -1 FirstWrite 0}
		Sbl {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_s {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 0 FirstWrite -1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_91_1 {
		n {Type I LastRead 0 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		Al {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		Ah {Type I LastRead 0 FirstWrite -1}
		Sal {Type O LastRead -1 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_91_14 {
		n {Type I LastRead 0 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		Bl {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		Bh {Type I LastRead 0 FirstWrite -1}
		Sbl {Type O LastRead -1 FirstWrite 1}
		carry_10_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_1u_4 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		nwords {Type I LastRead 3 FirstWrite -1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_110_1 {
		a_load {Type I LastRead 0 FirstWrite -1}
		b_load {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 1}
		B_out {Type O LastRead -1 FirstWrite 1}}
	mul_sized_1u_4_Pipeline_VITIS_LOOP_117_2 {
		mul13_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3 {
		nwords {Type I LastRead 3 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17 {
		nz_1 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18 {
		nz_2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_1 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3 {
		nwords {Type I LastRead 3 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_17 {
		nz_1 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_18 {
		nz_2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_1 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine {
		nwords {Type I LastRead 4 FirstWrite -1}
		n_lo {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_1 {
		nz {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_19 {
		nz_3 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_110 {
		nz_4 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_148_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		sext_ln146_2 {Type I LastRead 0 FirstWrite -1}
		out_out {Type O LastRead -1 FirstWrite 1}}
	karatsuba_combine_Pipeline_VITIS_LOOP_77_1 {
		out_words_assign {Type I LastRead 0 FirstWrite -1}
		out_reload {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "782", "Max" : "1395"}
	, {"Name" : "Interval", "Min" : "782", "Max" : "1395"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { ap_memory {  { a_address0 mem_address 1 3 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 64 } } }
	b { ap_memory {  { b_address0 mem_address 1 3 }  { b_ce0 mem_ce 1 1 }  { b_q0 mem_dout 0 64 } } }
	c { ap_memory {  { c_address0 mem_address 1 4 }  { c_ce0 mem_ce 1 1 }  { c_we0 mem_we 1 1 }  { c_d0 mem_din 1 64 } } }
}
