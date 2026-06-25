set moduleName mul_1
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
set cdfgNum 44
set C_modelName {mul.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict b { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ a int 64 regular {bram 8 { 1 3 } 1 1 }  }
	{ b int 64 regular {bram 8 { 1 3 } 1 1 }  }
	{ c int 64 regular {bram 16 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "bram", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "bram", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "bram", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_Addr_A sc_out sc_lv 32 signal 0 } 
	{ a_EN_A sc_out sc_logic 1 signal 0 } 
	{ a_WEN_A sc_out sc_lv 8 signal 0 } 
	{ a_Din_A sc_out sc_lv 64 signal 0 } 
	{ a_Dout_A sc_in sc_lv 64 signal 0 } 
	{ b_Addr_A sc_out sc_lv 32 signal 1 } 
	{ b_EN_A sc_out sc_logic 1 signal 1 } 
	{ b_WEN_A sc_out sc_lv 8 signal 1 } 
	{ b_Din_A sc_out sc_lv 64 signal 1 } 
	{ b_Dout_A sc_in sc_lv 64 signal 1 } 
	{ c_Addr_A sc_out sc_lv 32 signal 2 } 
	{ c_EN_A sc_out sc_logic 1 signal 2 } 
	{ c_WEN_A sc_out sc_lv 8 signal 2 } 
	{ c_Din_A sc_out sc_lv 64 signal 2 } 
	{ c_Dout_A sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "Addr_A" }} , 
 	{ "name": "a_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "EN_A" }} , 
 	{ "name": "a_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "WEN_A" }} , 
 	{ "name": "a_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "Din_A" }} , 
 	{ "name": "a_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "Dout_A" }} , 
 	{ "name": "b_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "Addr_A" }} , 
 	{ "name": "b_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "EN_A" }} , 
 	{ "name": "b_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b", "role": "WEN_A" }} , 
 	{ "name": "b_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "Din_A" }} , 
 	{ "name": "b_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "Dout_A" }} , 
 	{ "name": "c_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "Addr_A" }} , 
 	{ "name": "c_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "EN_A" }} , 
 	{ "name": "c_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c", "role": "WEN_A" }} , 
 	{ "name": "c_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "Din_A" }} , 
 	{ "name": "c_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "Dout_A" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "8", "139"],
		"CDFG" : "mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "411", "EstimateLatencyMax" : "510",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_256_1_fu_363", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_256_14_fu_370", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_276_1_fu_384", "Port" : "c", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lb_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lc_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_Pipeline_VITIS_LOOP_256_1_fu_363", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_256_1",
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
			{"Name" : "a", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "la", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_256_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_Pipeline_VITIS_LOOP_256_1_fu_363.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_Pipeline_VITIS_LOOP_256_14_fu_370", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_256_14",
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
			{"Name" : "b", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "lb", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_256_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_Pipeline_VITIS_LOOP_256_14_fu_370.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "471",
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
					{"ID" : "9", "SubInstance" : "grp_mul_sized_8u_s_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_mul_sized_8u_s_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_mul_sized_8u_s_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8", "Parent" : "8", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "21", "23", "25", "73", "75", "77", "125"],
		"CDFG" : "mul_sized_8u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "371", "EstimateLatencyMax" : "470",
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
					{"ID" : "19", "SubInstance" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "23", "SubInstance" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "23", "SubInstance" : "grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "grp_karatsuba_combine_fu_167", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.Al_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.Ah_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.Bl_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.Bh_U", "Parent" : "9"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.z0_U", "Parent" : "9"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.z2_U", "Parent" : "9"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.z1_U", "Parent" : "9"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.Sal_U", "Parent" : "9"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.Sbl_U", "Parent" : "9"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106", "Parent" : "9", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_175_1_fu_106.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_187_3_fu_118", "Parent" : "9", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_187_3_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126", "Parent" : "9", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_181_2_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136", "Parent" : "9", "Child" : ["26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "37", "39", "41", "48", "50", "52", "59"],
		"CDFG" : "mul_sized_4u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "103", "EstimateLatencyMax" : "133",
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
					{"ID" : "35", "SubInstance" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "39", "SubInstance" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "39", "SubInstance" : "grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_karatsuba_combine_fu_171", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Al_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Ah_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Bl_U", "Parent" : "25"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Bh_U", "Parent" : "25"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.z0_U", "Parent" : "25"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.z2_U", "Parent" : "25"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.z1_U", "Parent" : "25"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Sal_U", "Parent" : "25"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.Sbl_U", "Parent" : "25"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108", "Parent" : "25", "Child" : ["36"],
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
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_175_1_fu_108.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_187_3_fu_120", "Parent" : "25", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_187_3_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128", "Parent" : "25", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_181_2_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138", "Parent" : "25", "Child" : ["42", "44", "47"],
		"CDFG" : "mul_sized_2u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "16",
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
					{"ID" : "42", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_110_1_fu_34", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_110_1_fu_34", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_117_2_fu_44", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_110_1_fu_34", "Parent" : "41", "Child" : ["43"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_110_1_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_117_2_fu_44", "Parent" : "41", "Child" : ["45", "46"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul15_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "45", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_117_2_fu_44.partselect_64ns_256ns_32ns_64_1_1_U27", "Parent" : "44"},
	{"ID" : "46", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.grp_mul_sized_2u_Pipeline_VITIS_LOOP_117_2_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_s_fu_138.mul_128ns_128ns_256_1_1_U32", "Parent" : "41"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_1_fu_147", "Parent" : "25", "Child" : ["49"],
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
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_1_fu_147.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_13_fu_155", "Parent" : "25", "Child" : ["51"],
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
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_4u_Pipeline_VITIS_LOOP_91_13_fu_155.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163", "Parent" : "25", "Child" : ["53", "55", "58"],
		"CDFG" : "mul_sized_2u_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "18",
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
					{"ID" : "53", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1_fu_34", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1_fu_34", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2_fu_44", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1_fu_34", "Parent" : "52", "Child" : ["54"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "54", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2_fu_44", "Parent" : "52", "Child" : ["56", "57"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul15_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "56", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2_fu_44.partselect_64ns_256ns_32ns_64_1_1_U50", "Parent" : "55"},
	{"ID" : "57", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_mul_sized_2u_2_fu_163.mul_128ns_128ns_256_1_1_U54", "Parent" : "52"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171", "Parent" : "25", "Child" : ["60", "62", "64", "66", "70"],
		"CDFG" : "karatsuba_combine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "55",
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
					{"ID" : "60", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_17_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_18_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "59", "Child" : ["61"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "10",
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
	{"ID" : "61", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_17_fu_94", "Parent" : "59", "Child" : ["63"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_17_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_18_fu_102", "Parent" : "59", "Child" : ["65"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_18",
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
			{"Name" : "nz_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_18_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "59", "Child" : ["67", "68", "69"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "18",
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
	{"ID" : "67", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U68", "Parent" : "66"},
	{"ID" : "68", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U69", "Parent" : "66"},
	{"ID" : "69", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "66"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "59", "Child" : ["71", "72"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "18",
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
	{"ID" : "71", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U75", "Parent" : "70"},
	{"ID" : "72", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_s_fu_136.grp_karatsuba_combine_fu_171.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_1_fu_143", "Parent" : "9", "Child" : ["74"],
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
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_1_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_11_fu_151", "Parent" : "9", "Child" : ["76"],
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
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_8u_Pipeline_VITIS_LOOP_91_11_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159", "Parent" : "9", "Child" : ["78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "89", "91", "93", "100", "102", "104", "111"],
		"CDFG" : "mul_sized_4u_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "119",
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
					{"ID" : "87", "SubInstance" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "91", "SubInstance" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "91", "SubInstance" : "grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_karatsuba_combine_3_fu_178", "Port" : "c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Al_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Ah_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Bl_U", "Parent" : "77"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Bh_U", "Parent" : "77"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.z0_U", "Parent" : "77"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.z2_U", "Parent" : "77"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.z1_U", "Parent" : "77"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Sal_U", "Parent" : "77"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.Sbl_U", "Parent" : "77"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112", "Parent" : "77", "Child" : ["88"],
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
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_175_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_187_3_fu_124", "Parent" : "77", "Child" : ["90"],
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
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_187_3_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132", "Parent" : "77", "Child" : ["92"],
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
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_181_2_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143", "Parent" : "77", "Child" : ["94", "96", "99"],
		"CDFG" : "mul_sized_2u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "16",
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
					{"ID" : "94", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_110_1_fu_34", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_110_1_fu_34", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_mul_sized_2u_Pipeline_VITIS_LOOP_117_2_fu_44", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_110_1_fu_34", "Parent" : "93", "Child" : ["95"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "95", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_110_1_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_117_2_fu_44", "Parent" : "93", "Child" : ["97", "98"],
		"CDFG" : "mul_sized_2u_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul15_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "97", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_117_2_fu_44.partselect_64ns_256ns_32ns_64_1_1_U27", "Parent" : "96"},
	{"ID" : "98", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.grp_mul_sized_2u_Pipeline_VITIS_LOOP_117_2_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "96"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_s_fu_143.mul_128ns_128ns_256_1_1_U32", "Parent" : "93"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_1_fu_152", "Parent" : "77", "Child" : ["101"],
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
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_1_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "100"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_12_fu_161", "Parent" : "77", "Child" : ["103"],
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
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_4u_1_Pipeline_VITIS_LOOP_91_12_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170", "Parent" : "77", "Child" : ["105", "107", "110"],
		"CDFG" : "mul_sized_2u_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "18",
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
					{"ID" : "105", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1_fu_34", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1_fu_34", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2_fu_44", "Port" : "c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1_fu_34", "Parent" : "104", "Child" : ["106"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2_fu_44", "Parent" : "104", "Child" : ["108", "109"],
		"CDFG" : "mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul15_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "108", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2_fu_44.partselect_64ns_256ns_32ns_64_1_1_U50", "Parent" : "107"},
	{"ID" : "109", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.grp_mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "107"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_mul_sized_2u_2_fu_170.mul_128ns_128ns_256_1_1_U54", "Parent" : "104"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178", "Parent" : "77", "Child" : ["112", "114", "116", "118", "122"],
		"CDFG" : "karatsuba_combine_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nwords", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_78", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_15_fu_85", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_16_fu_93", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_108", "Port" : "c", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_78", "Parent" : "111", "Child" : ["113"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1",
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
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_15_fu_85", "Parent" : "111", "Child" : ["115"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_15_fu_85.flow_control_loop_pipe_sequential_init_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_16_fu_93", "Parent" : "111", "Child" : ["117"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_128_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_128_16_fu_93.flow_control_loop_pipe_sequential_init_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_101", "Parent" : "111", "Child" : ["119", "120", "121"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "12",
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
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_101.partselect_64ns_1056s_32ns_64_1_1_U132", "Parent" : "118"},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_101.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U133", "Parent" : "118"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_148_1_fu_101.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_108", "Parent" : "111", "Child" : ["123", "124"],
		"CDFG" : "karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "12",
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
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_108.partselect_64ns_1024ns_32ns_64_1_1_U137", "Parent" : "122"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_mul_sized_4u_1_fu_159.grp_karatsuba_combine_3_fu_178.grp_karatsuba_combine_3_Pipeline_VITIS_LOOP_77_1_fu_108.flow_control_loop_pipe_sequential_init_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167", "Parent" : "9", "Child" : ["126", "128", "130", "132", "136"],
		"CDFG" : "karatsuba_combine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "55",
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
					{"ID" : "126", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Port" : "z0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_17_fu_94", "Port" : "z2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_18_fu_102", "Port" : "z1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "n_z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Port" : "c", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86", "Parent" : "125", "Child" : ["127"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "10",
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
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_17_fu_94", "Parent" : "125", "Child" : ["129"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nz_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_17_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_18_fu_102", "Parent" : "125", "Child" : ["131"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_128_18",
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
			{"Name" : "nz_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_128_18_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110", "Parent" : "125", "Child" : ["133", "134", "135"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_148_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "18",
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
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partselect_64ns_1056s_32ns_64_1_1_U68", "Parent" : "132"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.partset_1024ns_1024ns_64ns_32ns_1024_1_1_U69", "Parent" : "132"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_148_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "132"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117", "Parent" : "125", "Child" : ["137", "138"],
		"CDFG" : "karatsuba_combine_Pipeline_VITIS_LOOP_77_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "18",
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
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.partselect_64ns_1024ns_32ns_64_1_1_U75", "Parent" : "136"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_377.grp_mul_sized_8u_s_fu_8.grp_karatsuba_combine_fu_167.grp_karatsuba_combine_Pipeline_VITIS_LOOP_77_1_fu_117.flow_control_loop_pipe_sequential_init_U", "Parent" : "136"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_Pipeline_VITIS_LOOP_276_1_fu_384", "Parent" : "0", "Child" : ["140"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_276_1",
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
			{"Name" : "lc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_276_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_1_Pipeline_VITIS_LOOP_276_1_fu_384.flow_control_loop_pipe_sequential_init_U", "Parent" : "139"}]}


set ArgLastReadFirstWriteLatency {
	mul_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_1_Pipeline_VITIS_LOOP_256_1 {
		a {Type I LastRead 0 FirstWrite -1}
		la {Type O LastRead -1 FirstWrite 1}}
	mul_1_Pipeline_VITIS_LOOP_256_14 {
		b {Type I LastRead 0 FirstWrite -1}
		lb {Type O LastRead -1 FirstWrite 1}}
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
		nwords {Type I LastRead 3 FirstWrite -1}}
	mul_sized_2u_Pipeline_VITIS_LOOP_110_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 0}
		B_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_117_2 {
		mul15_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
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
		nwords {Type I LastRead 3 FirstWrite -1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 0}
		B_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2 {
		mul15_i {Type I LastRead 0 FirstWrite -1}
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
	karatsuba_combine_Pipeline_VITIS_LOOP_128_17 {
		nz_2 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_18 {
		nz_3 {Type I LastRead 0 FirstWrite -1}
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
		nwords {Type I LastRead 3 FirstWrite -1}}
	mul_sized_2u_Pipeline_VITIS_LOOP_110_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 0}
		B_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_Pipeline_VITIS_LOOP_117_2 {
		mul15_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
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
		nwords {Type I LastRead 3 FirstWrite -1}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_110_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		A_out {Type O LastRead -1 FirstWrite 0}
		B_out {Type O LastRead -1 FirstWrite 0}}
	mul_sized_2u_2_Pipeline_VITIS_LOOP_117_2 {
		mul15_i {Type I LastRead 0 FirstWrite -1}
		P {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3 {
		nwords {Type I LastRead 3 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		n_z1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_1 {
		z0 {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_15 {
		nz {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_3_Pipeline_VITIS_LOOP_128_16 {
		nz_1 {Type I LastRead 0 FirstWrite -1}
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
	karatsuba_combine_Pipeline_VITIS_LOOP_128_17 {
		nz_2 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}}
	karatsuba_combine_Pipeline_VITIS_LOOP_128_18 {
		nz_3 {Type I LastRead 0 FirstWrite -1}
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
	mul_1_Pipeline_VITIS_LOOP_276_1 {
		lc {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "411", "Max" : "510"}
	, {"Name" : "Interval", "Min" : "411", "Max" : "510"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { bram {  { a_Addr_A MemPortADDR2 1 32 }  { a_EN_A MemPortCE2 1 1 }  { a_WEN_A MemPortWE2 1 8 }  { a_Din_A MemPortDIN2 1 64 }  { a_Dout_A MemPortDOUT2 0 64 } } }
	b { bram {  { b_Addr_A MemPortADDR2 1 32 }  { b_EN_A MemPortCE2 1 1 }  { b_WEN_A MemPortWE2 1 8 }  { b_Din_A MemPortDIN2 1 64 }  { b_Dout_A MemPortDOUT2 0 64 } } }
	c { bram {  { c_Addr_A MemPortADDR2 1 32 }  { c_EN_A MemPortCE2 1 1 }  { c_WEN_A MemPortWE2 1 8 }  { c_Din_A MemPortDIN2 1 64 }  { c_Dout_A MemPortDOUT2 0 64 } } }
}
