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
set cdfgNum 18
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "90", "EstimateLatencyMax" : "94",
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
					{"ID" : "1", "SubInstance" : "grp_mul_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "9", "15", "18", "24", "28", "32", "35", "41", "44", "46", "48", "51"],
		"CDFG" : "mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "89", "EstimateLatencyMax" : "93",
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
					{"ID" : "5", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_151_1_fu_214", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "7", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_157_2_fu_230", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_151_1_fu_214", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "7", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_157_2_fu_230", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_113_3_fu_356", "Port" : "c", "Inst_start_state" : "19", "Inst_end_state" : "20"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.z0_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.z2_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.z1_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_1_fu_214", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_151_1",
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
			{"Name" : "a", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "Bl_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_1_fu_214.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_2_fu_230", "Parent" : "1", "Child" : ["8"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_157_2",
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
			{"Name" : "a", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "Bh_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_2_fu_230.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_246", "Parent" : "1", "Child" : ["10", "11", "12", "13", "14"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_1",
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
			{"Name" : "Al_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_246.sparsemux_9_2_64_1_1_U17", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_246.partset_256ns_256ns_64ns_32ns_256_1_1_U18", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_246.sparsemux_9_2_64_1_1_U19", "Parent" : "9"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_246.partset_256ns_256ns_64ns_32ns_256_1_1_U20", "Parent" : "9"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_246.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_260", "Parent" : "1", "Child" : ["16", "17"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_2",
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
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_260.partselect_64ns_512ns_32ns_64_1_1_U33", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_260.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_11_fu_266", "Parent" : "1", "Child" : ["19", "20", "21", "22", "23"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_11",
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
			{"Name" : "Ah_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_11_fu_266.sparsemux_9_2_64_1_1_U37", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_11_fu_266.partset_256ns_256ns_64ns_32ns_256_1_1_U38", "Parent" : "18"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_11_fu_266.sparsemux_9_2_64_1_1_U39", "Parent" : "18"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_11_fu_266.partset_256ns_256ns_64ns_32ns_256_1_1_U40", "Parent" : "18"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_11_fu_266.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_1_fu_280", "Parent" : "1", "Child" : ["25", "26", "27"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_1",
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
			{"Name" : "Al_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_1_fu_280.sparsemux_9_2_64_1_1_U54", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_1_fu_280.sparsemux_9_2_64_1_1_U55", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_1_fu_280.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_13_fu_297", "Parent" : "1", "Child" : ["29", "30", "31"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_13",
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
			{"Name" : "Bl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_13_fu_297.sparsemux_9_2_64_1_1_U69", "Parent" : "28"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_13_fu_297.sparsemux_9_2_64_1_1_U70", "Parent" : "28"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_13_fu_297.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_22_fu_314", "Parent" : "1", "Child" : ["33", "34"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_22",
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
			{"Name" : "P_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_22_fu_314.partselect_64ns_512ns_32ns_64_1_1_U51", "Parent" : "32"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_22_fu_314.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_14_fu_320", "Parent" : "1", "Child" : ["36", "37", "38", "39", "40"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_14",
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
			{"Name" : "Sal_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_14_fu_320.sparsemux_9_2_64_1_1_U84", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_14_fu_320.partset_256ns_256ns_64ns_32ns_256_1_1_U85", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_14_fu_320.sparsemux_9_2_64_1_1_U86", "Parent" : "35"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_14_fu_320.partset_256ns_256ns_64ns_32ns_256_1_1_U87", "Parent" : "35"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_14_fu_320.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_25_fu_334", "Parent" : "1", "Child" : ["42", "43"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_25",
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
			{"Name" : "shl_ln2", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_25_fu_334.partselect_64ns_512ns_32ns_64_1_1_U98", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_25_fu_334.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_341", "Parent" : "1", "Child" : ["45"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_1",
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
			{"Name" : "z0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_341.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_2_fu_349", "Parent" : "1", "Child" : ["47"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_2",
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
			{"Name" : "shl_ln2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_2_fu_349.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_356", "Parent" : "1", "Child" : ["49", "50"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_3",
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
			{"Name" : "Pacc", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_356.partselect_64ns_1056s_32ns_64_1_1_U109", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_356.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.mul_256ns_256ns_512_2_1_U112", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	mul_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_151_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		Bl_3_out {Type O LastRead -1 FirstWrite 0}
		Bl_2_out {Type O LastRead -1 FirstWrite 0}
		Bl_1_out {Type O LastRead -1 FirstWrite 0}
		Bl_out {Type O LastRead -1 FirstWrite 0}
		Al_3_out {Type O LastRead -1 FirstWrite 0}
		Al_2_out {Type O LastRead -1 FirstWrite 0}
		Al_1_out {Type O LastRead -1 FirstWrite 0}
		Al_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_157_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		Bh_3_out {Type O LastRead -1 FirstWrite 0}
		Bh_2_out {Type O LastRead -1 FirstWrite 0}
		Bh_1_out {Type O LastRead -1 FirstWrite 0}
		Bh_out {Type O LastRead -1 FirstWrite 0}
		Ah_3_out {Type O LastRead -1 FirstWrite 0}
		Ah_2_out {Type O LastRead -1 FirstWrite 0}
		Ah_1_out {Type O LastRead -1 FirstWrite 0}
		Ah_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_1 {
		Al_reload {Type I LastRead 0 FirstWrite -1}
		Al_1_reload {Type I LastRead 0 FirstWrite -1}
		Al_2_reload {Type I LastRead 0 FirstWrite -1}
		Al_3_reload {Type I LastRead 0 FirstWrite -1}
		Bl_reload {Type I LastRead 0 FirstWrite -1}
		Bl_1_reload {Type I LastRead 0 FirstWrite -1}
		Bl_2_reload {Type I LastRead 0 FirstWrite -1}
		Bl_3_reload {Type I LastRead 0 FirstWrite -1}
		B_out {Type O LastRead -1 FirstWrite 1}
		A_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_2 {
		P {Type I LastRead 0 FirstWrite -1}
		z0 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_11 {
		Ah_reload {Type I LastRead 0 FirstWrite -1}
		Ah_1_reload {Type I LastRead 0 FirstWrite -1}
		Ah_2_reload {Type I LastRead 0 FirstWrite -1}
		Ah_3_reload {Type I LastRead 0 FirstWrite -1}
		Bh_reload {Type I LastRead 0 FirstWrite -1}
		Bh_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_2_reload {Type I LastRead 0 FirstWrite -1}
		Bh_3_reload {Type I LastRead 0 FirstWrite -1}
		B_2_out {Type O LastRead -1 FirstWrite 1}
		A_2_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_56_1 {
		Al_reload {Type I LastRead 0 FirstWrite -1}
		Al_1_reload {Type I LastRead 0 FirstWrite -1}
		Al_2_reload {Type I LastRead 0 FirstWrite -1}
		Al_3_reload {Type I LastRead 0 FirstWrite -1}
		Ah_reload {Type I LastRead 0 FirstWrite -1}
		Ah_1_reload {Type I LastRead 0 FirstWrite -1}
		Ah_2_reload {Type I LastRead 0 FirstWrite -1}
		Ah_3_reload {Type I LastRead 0 FirstWrite -1}
		Sal_3_out {Type O LastRead -1 FirstWrite 0}
		Sal_2_out {Type O LastRead -1 FirstWrite 0}
		Sal_1_out {Type O LastRead -1 FirstWrite 0}
		Sal_out {Type O LastRead -1 FirstWrite 0}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_13 {
		Bl_reload {Type I LastRead 0 FirstWrite -1}
		Bl_1_reload {Type I LastRead 0 FirstWrite -1}
		Bl_2_reload {Type I LastRead 0 FirstWrite -1}
		Bl_3_reload {Type I LastRead 0 FirstWrite -1}
		Bh_reload {Type I LastRead 0 FirstWrite -1}
		Bh_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_2_reload {Type I LastRead 0 FirstWrite -1}
		Bh_3_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_3_out {Type O LastRead -1 FirstWrite 0}
		Sbl_2_out {Type O LastRead -1 FirstWrite 0}
		Sbl_1_out {Type O LastRead -1 FirstWrite 0}
		Sbl_out {Type O LastRead -1 FirstWrite 0}
		carry_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_22 {
		P_1 {Type I LastRead 0 FirstWrite -1}
		z2 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_14 {
		Sal_reload {Type I LastRead 0 FirstWrite -1}
		Sal_1_reload {Type I LastRead 0 FirstWrite -1}
		Sal_2_reload {Type I LastRead 0 FirstWrite -1}
		Sal_3_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_2_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_3_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_1_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_reload {Type I LastRead 0 FirstWrite -1}
		A_4_out {Type O LastRead -1 FirstWrite 1}
		B_4_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_25 {
		shl_ln2 {Type I LastRead 0 FirstWrite -1}
		P_2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_1 {
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_out {Type O LastRead -1 FirstWrite 0}
		W0_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_2 {
		shl_ln2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_3 {
		Pacc {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "90", "Max" : "94"}
	, {"Name" : "Interval", "Min" : "90", "Max" : "94"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { bram {  { a_Addr_A MemPortADDR2 1 32 }  { a_EN_A MemPortCE2 1 1 }  { a_WEN_A MemPortWE2 1 8 }  { a_Din_A MemPortDIN2 1 64 }  { a_Dout_A MemPortDOUT2 0 64 } } }
	b { bram {  { b_Addr_A MemPortADDR2 1 32 }  { b_EN_A MemPortCE2 1 1 }  { b_WEN_A MemPortWE2 1 8 }  { b_Din_A MemPortDIN2 1 64 }  { b_Dout_A MemPortDOUT2 0 64 } } }
	c { bram {  { c_Addr_A MemPortADDR2 1 32 }  { c_EN_A MemPortCE2 1 1 }  { c_WEN_A MemPortWE2 1 8 }  { c_Din_A MemPortDIN2 1 64 }  { c_Dout_A MemPortDOUT2 0 64 } } }
}
