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
set cdfgNum 51
set C_modelName {mul}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "9", "11", "13", "15", "19", "23", "25", "27", "29", "31", "35", "39", "42", "45", "49", "53", "57", "59", "61", "63", "67", "70", "74", "77", "80", "84", "88", "92", "94", "96", "98", "101", "105", "108", "111", "115", "118", "120", "123", "127", "130", "132", "135", "137", "139", "142", "143"],
		"CDFG" : "mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "130",
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
					{"ID" : "7", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_151_1_fu_664", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_157_2_fu_680", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_151_1_fu_664", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_157_2_fu_680", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_113_338_fu_1136", "Port" : "c", "Inst_start_state" : "28", "Inst_end_state" : "29"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z1_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z1_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z1_3_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_1_fu_664", "Parent" : "0", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_1_fu_664.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_2_fu_680", "Parent" : "0", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_2_fu_680.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_11_fu_696", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_151_11",
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
			{"Name" : "Al_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_11_fu_696.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_22_fu_708", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_157_22",
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
			{"Name" : "Al_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_22_fu_708.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_720", "Parent" : "0", "Child" : ["16", "17", "18"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_1",
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
			{"Name" : "Al_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_720.partset_128ns_128ns_64ns_32ns_128_1_1_U33", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_720.partset_128ns_128ns_64ns_32ns_128_1_1_U34", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_720.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_13_fu_730", "Parent" : "0", "Child" : ["20", "21", "22"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_13",
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
			{"Name" : "Ah_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_13_fu_730.partset_128ns_128ns_64ns_32ns_128_1_1_U49", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_13_fu_730.partset_128ns_128ns_64ns_32ns_128_1_1_U50", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_13_fu_730.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_1_fu_740", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_1",
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
			{"Name" : "Al_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_1_fu_740.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_15_fu_751", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_15",
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
			{"Name" : "Bl_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_15_fu_751.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_18_fu_762", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_151_18",
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
			{"Name" : "Ah_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_18_fu_762.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_29_fu_774", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_157_29",
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
			{"Name" : "Ah_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_29_fu_774.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_121_fu_786", "Parent" : "0", "Child" : ["32", "33", "34"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_121",
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
			{"Name" : "Sal_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_121_fu_786.sparsemux_9_2_64_1_1_U197", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_121_fu_786.sparsemux_9_2_64_1_1_U198", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_121_fu_786.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_122_fu_803", "Parent" : "0", "Child" : ["36", "37", "38"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_122",
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
			{"Name" : "Sbl_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_122_fu_803.sparsemux_9_2_64_1_1_U212", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_122_fu_803.sparsemux_9_2_64_1_1_U213", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_122_fu_803.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_820", "Parent" : "0", "Child" : ["40", "41"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_2",
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
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_820.partselect_64ns_256ns_32ns_64_1_1_U42", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_820.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_24_fu_829", "Parent" : "0", "Child" : ["43", "44"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_24",
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
			{"Name" : "P_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_24_fu_829.partselect_64ns_256ns_32ns_64_1_1_U57", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_24_fu_829.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_16_fu_838", "Parent" : "0", "Child" : ["46", "47", "48"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_16",
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
			{"Name" : "Sal_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_16_fu_838.partset_128ns_128ns_64ns_32ns_128_1_1_U77", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_16_fu_838.partset_128ns_128ns_64ns_32ns_128_1_1_U78", "Parent" : "45"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_16_fu_838.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_110_fu_848", "Parent" : "0", "Child" : ["50", "51", "52"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_110",
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
			{"Name" : "Al_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_110_fu_848.partset_128ns_128ns_64ns_32ns_128_1_1_U125", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_110_fu_848.partset_128ns_128ns_64ns_32ns_128_1_1_U126", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_110_fu_848.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_112_fu_858", "Parent" : "0", "Child" : ["54", "55", "56"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_112",
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
			{"Name" : "Ah_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_112_fu_858.partset_128ns_128ns_64ns_32ns_128_1_1_U139", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_112_fu_858.partset_128ns_128ns_64ns_32ns_128_1_1_U140", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_112_fu_858.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_114_fu_868", "Parent" : "0", "Child" : ["58"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_114",
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
			{"Name" : "Al_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_114_fu_868.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_115_fu_879", "Parent" : "0", "Child" : ["60"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_115",
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
			{"Name" : "Bl_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_115_fu_879.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_123_fu_890", "Parent" : "0", "Child" : ["62"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_151_123",
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
			{"Name" : "Sal_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_123_fu_890.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_224_fu_902", "Parent" : "0", "Child" : ["64", "65", "66"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_157_224",
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
			{"Name" : "or_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_224_fu_902.sparsemux_7_2_64_1_1_U235", "Parent" : "63"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_224_fu_902.sparsemux_7_2_64_1_1_U236", "Parent" : "63"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_224_fu_902.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_27_fu_917", "Parent" : "0", "Child" : ["68", "69"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_27",
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
			{"Name" : "shl_ln2", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_27_fu_917.partselect_64ns_256ns_32ns_64_1_1_U85", "Parent" : "67"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_27_fu_917.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_924", "Parent" : "0", "Child" : ["71", "72", "73"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_1",
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
			{"Name" : "z0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_924.sparsemux_9_2_64_1_1_U89", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_924.sparsemux_9_2_64_1_1_U90", "Parent" : "70"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_924.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_211_fu_938", "Parent" : "0", "Child" : ["75", "76"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_211",
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
			{"Name" : "P_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_211_fu_938.partselect_64ns_256ns_32ns_64_1_1_U133", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_211_fu_938.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_213_fu_947", "Parent" : "0", "Child" : ["78", "79"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_213",
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
			{"Name" : "P_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_213_fu_947.partselect_64ns_256ns_32ns_64_1_1_U147", "Parent" : "77"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_213_fu_947.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_116_fu_956", "Parent" : "0", "Child" : ["81", "82", "83"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_116",
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
			{"Name" : "Sal_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_116_fu_956.partset_128ns_128ns_64ns_32ns_128_1_1_U167", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_116_fu_956.partset_128ns_128ns_64ns_32ns_128_1_1_U168", "Parent" : "80"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_116_fu_956.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_125_fu_966", "Parent" : "0", "Child" : ["85", "86", "87"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_125",
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
			{"Name" : "Al_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_125_fu_966.partset_128ns_128ns_64ns_32ns_128_1_1_U249", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_125_fu_966.partset_128ns_128ns_64ns_32ns_128_1_1_U250", "Parent" : "84"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_125_fu_966.flow_control_loop_pipe_sequential_init_U", "Parent" : "84"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_127_fu_976", "Parent" : "0", "Child" : ["89", "90", "91"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_127",
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
			{"Name" : "Ah_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_127_fu_976.partset_128ns_128ns_64ns_32ns_128_1_1_U263", "Parent" : "88"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_127_fu_976.partset_128ns_128ns_64ns_32ns_128_1_1_U264", "Parent" : "88"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_127_fu_976.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_129_fu_986", "Parent" : "0", "Child" : ["93"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_129",
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
			{"Name" : "or_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_129_fu_986.flow_control_loop_pipe_sequential_init_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_130_fu_998", "Parent" : "0", "Child" : ["95"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_130",
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
			{"Name" : "or_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_130_fu_998.flow_control_loop_pipe_sequential_init_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_2_fu_1010", "Parent" : "0", "Child" : ["97"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_2",
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
			{"Name" : "shl_ln2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_2_fu_1010.flow_control_loop_pipe_sequential_init_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_217_fu_1017", "Parent" : "0", "Child" : ["99", "100"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_217",
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
			{"Name" : "shl_ln81_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_217_fu_1017.partselect_64ns_256ns_32ns_64_1_1_U175", "Parent" : "98"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_217_fu_1017.flow_control_loop_pipe_sequential_init_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_118_fu_1024", "Parent" : "0", "Child" : ["102", "103", "104"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_118",
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
			{"Name" : "z0_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_118_fu_1024.sparsemux_9_2_64_1_1_U179", "Parent" : "101"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_118_fu_1024.sparsemux_9_2_64_1_1_U180", "Parent" : "101"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_118_fu_1024.flow_control_loop_pipe_sequential_init_U", "Parent" : "101"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_226_fu_1038", "Parent" : "0", "Child" : ["106", "107"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_226",
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
			{"Name" : "P_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_19_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_226_fu_1038.partselect_64ns_256ns_32ns_64_1_1_U257", "Parent" : "105"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_226_fu_1038.flow_control_loop_pipe_sequential_init_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_228_fu_1047", "Parent" : "0", "Child" : ["109", "110"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_228",
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
			{"Name" : "or_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_22_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_228_fu_1047.partselect_64ns_256ns_32ns_64_1_1_U271", "Parent" : "108"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_228_fu_1047.flow_control_loop_pipe_sequential_init_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_131_fu_1057", "Parent" : "0", "Child" : ["112", "113", "114"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_131",
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
			{"Name" : "Sal_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_131_fu_1057.partset_128ns_128ns_64ns_32ns_128_1_1_U294", "Parent" : "111"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_131_fu_1057.partset_128ns_128ns_64ns_32ns_128_1_1_U295", "Parent" : "111"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_131_fu_1057.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_1067", "Parent" : "0", "Child" : ["116", "117"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_3",
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
			{"Name" : "Pacc", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_1067.partselect_64ns_1056s_32ns_64_1_1_U105", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_1067.flow_control_loop_pipe_sequential_init_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_219_fu_1073", "Parent" : "0", "Child" : ["119"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_219",
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
			{"Name" : "shl_ln81_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_219_fu_1073.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_232_fu_1080", "Parent" : "0", "Child" : ["121", "122"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_232",
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
			{"Name" : "shl_ln81_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_232_fu_1080.partselect_64ns_256ns_32ns_64_1_1_U302", "Parent" : "120"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_232_fu_1080.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_133_fu_1087", "Parent" : "0", "Child" : ["124", "125", "126"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_133",
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
			{"Name" : "z0_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_133_fu_1087.sparsemux_9_2_64_1_1_U306", "Parent" : "123"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_133_fu_1087.sparsemux_9_2_64_1_1_U307", "Parent" : "123"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_133_fu_1087.flow_control_loop_pipe_sequential_init_U", "Parent" : "123"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_320_fu_1101", "Parent" : "0", "Child" : ["128", "129"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_320",
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
			{"Name" : "Pacc_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_320_fu_1101.partselect_64ns_1056s_32ns_64_1_1_U194", "Parent" : "127"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_320_fu_1101.flow_control_loop_pipe_sequential_init_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_234_fu_1107", "Parent" : "0", "Child" : ["131"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_234",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_234_fu_1107.flow_control_loop_pipe_sequential_init_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_335_fu_1114", "Parent" : "0", "Child" : ["133", "134"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_335",
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
			{"Name" : "shl_ln81_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pacc_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_335_fu_1114.partselect_64ns_1056s_32ns_64_1_1_U321", "Parent" : "132"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_335_fu_1114.flow_control_loop_pipe_sequential_init_U", "Parent" : "132"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_136_fu_1121", "Parent" : "0", "Child" : ["136"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_136",
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
			{"Name" : "W2_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_136_fu_1121.flow_control_loop_pipe_sequential_init_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_237_fu_1129", "Parent" : "0", "Child" : ["138"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_237",
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
			{"Name" : "shl_ln81_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_237_fu_1129.flow_control_loop_pipe_sequential_init_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_338_fu_1136", "Parent" : "0", "Child" : ["140", "141"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_338",
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
			{"Name" : "Pacc_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_338_fu_1136.partselect_64ns_1056s_32ns_64_1_1_U332", "Parent" : "139"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_338_fu_1136.flow_control_loop_pipe_sequential_init_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_128ns_128ns_256_1_1_U334", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_128ns_128ns_256_1_1_U335", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	mul_Pipeline_VITIS_LOOP_151_11 {
		Al_1_reload {Type I LastRead 0 FirstWrite -1}
		Al_reload {Type I LastRead 0 FirstWrite -1}
		Bl_1_reload {Type I LastRead 0 FirstWrite -1}
		Bl_reload {Type I LastRead 0 FirstWrite -1}
		Bl_10_out {Type O LastRead -1 FirstWrite 0}
		Bl_9_out {Type O LastRead -1 FirstWrite 0}
		Al_10_out {Type O LastRead -1 FirstWrite 0}
		Al_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_157_22 {
		Al_3_reload {Type I LastRead 0 FirstWrite -1}
		Al_2_reload {Type I LastRead 0 FirstWrite -1}
		Bl_3_reload {Type I LastRead 0 FirstWrite -1}
		Bl_2_reload {Type I LastRead 0 FirstWrite -1}
		Bh_10_out {Type O LastRead -1 FirstWrite 0}
		Bh_9_out {Type O LastRead -1 FirstWrite 0}
		Ah_10_out {Type O LastRead -1 FirstWrite 0}
		Ah_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_1 {
		Al_10_reload {Type I LastRead 0 FirstWrite -1}
		Al_9_reload {Type I LastRead 0 FirstWrite -1}
		Bl_10_reload {Type I LastRead 0 FirstWrite -1}
		Bl_9_reload {Type I LastRead 0 FirstWrite -1}
		B_out {Type O LastRead -1 FirstWrite 1}
		A_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_74_13 {
		Ah_10_reload {Type I LastRead 0 FirstWrite -1}
		Ah_9_reload {Type I LastRead 0 FirstWrite -1}
		Bh_10_reload {Type I LastRead 0 FirstWrite -1}
		Bh_9_reload {Type I LastRead 0 FirstWrite -1}
		B_2_out {Type O LastRead -1 FirstWrite 1}
		A_2_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_56_1 {
		Al_10_reload {Type I LastRead 0 FirstWrite -1}
		Al_9_reload {Type I LastRead 0 FirstWrite -1}
		Ah_10_reload {Type I LastRead 0 FirstWrite -1}
		Ah_9_reload {Type I LastRead 0 FirstWrite -1}
		Sal_1_out {Type O LastRead -1 FirstWrite 0}
		Sal_out {Type O LastRead -1 FirstWrite 0}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_15 {
		Bl_10_reload {Type I LastRead 0 FirstWrite -1}
		Bl_9_reload {Type I LastRead 0 FirstWrite -1}
		Bh_10_reload {Type I LastRead 0 FirstWrite -1}
		Bh_9_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_1_out {Type O LastRead -1 FirstWrite 0}
		Sbl_out {Type O LastRead -1 FirstWrite 0}
		carry_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_151_18 {
		Ah_1_reload {Type I LastRead 0 FirstWrite -1}
		Ah_reload {Type I LastRead 0 FirstWrite -1}
		Bh_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_reload {Type I LastRead 0 FirstWrite -1}
		Bl_14_out {Type O LastRead -1 FirstWrite 0}
		Bl_13_out {Type O LastRead -1 FirstWrite 0}
		Al_14_out {Type O LastRead -1 FirstWrite 0}
		Al_13_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_157_29 {
		Ah_3_reload {Type I LastRead 0 FirstWrite -1}
		Ah_2_reload {Type I LastRead 0 FirstWrite -1}
		Bh_3_reload {Type I LastRead 0 FirstWrite -1}
		Bh_2_reload {Type I LastRead 0 FirstWrite -1}
		Bh_14_out {Type O LastRead -1 FirstWrite 0}
		Bh_13_out {Type O LastRead -1 FirstWrite 0}
		Ah_14_out {Type O LastRead -1 FirstWrite 0}
		Ah_13_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_121 {
		Al_reload {Type I LastRead 0 FirstWrite -1}
		Al_1_reload {Type I LastRead 0 FirstWrite -1}
		Al_2_reload {Type I LastRead 0 FirstWrite -1}
		Al_3_reload {Type I LastRead 0 FirstWrite -1}
		Ah_reload {Type I LastRead 0 FirstWrite -1}
		Ah_1_reload {Type I LastRead 0 FirstWrite -1}
		Ah_2_reload {Type I LastRead 0 FirstWrite -1}
		Ah_3_reload {Type I LastRead 0 FirstWrite -1}
		Sal_11_out {Type O LastRead -1 FirstWrite 0}
		Sal_10_out {Type O LastRead -1 FirstWrite 0}
		Sal_9_out {Type O LastRead -1 FirstWrite 0}
		Sal_8_out {Type O LastRead -1 FirstWrite 0}
		carry_16_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_122 {
		Bl_reload {Type I LastRead 0 FirstWrite -1}
		Bl_1_reload {Type I LastRead 0 FirstWrite -1}
		Bl_2_reload {Type I LastRead 0 FirstWrite -1}
		Bl_3_reload {Type I LastRead 0 FirstWrite -1}
		Bh_reload {Type I LastRead 0 FirstWrite -1}
		Bh_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_2_reload {Type I LastRead 0 FirstWrite -1}
		Bh_3_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_11_out {Type O LastRead -1 FirstWrite 0}
		Sbl_10_out {Type O LastRead -1 FirstWrite 0}
		Sbl_9_out {Type O LastRead -1 FirstWrite 0}
		Sbl_8_out {Type O LastRead -1 FirstWrite 0}
		carry_17_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_2 {
		P {Type I LastRead 0 FirstWrite -1}
		z0_4_out {Type O LastRead -1 FirstWrite 0}
		z0_3_out {Type O LastRead -1 FirstWrite 0}
		z0_2_out {Type O LastRead -1 FirstWrite 0}
		z0_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_24 {
		P_1 {Type I LastRead 0 FirstWrite -1}
		z2_4_out {Type O LastRead -1 FirstWrite 0}
		z2_3_out {Type O LastRead -1 FirstWrite 0}
		z2_2_out {Type O LastRead -1 FirstWrite 0}
		z2_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_16 {
		Sal_1_reload {Type I LastRead 0 FirstWrite -1}
		Sal_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_1_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_reload {Type I LastRead 0 FirstWrite -1}
		B_4_out {Type O LastRead -1 FirstWrite 1}
		A_4_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_74_110 {
		Al_14_reload {Type I LastRead 0 FirstWrite -1}
		Al_13_reload {Type I LastRead 0 FirstWrite -1}
		Bl_14_reload {Type I LastRead 0 FirstWrite -1}
		Bl_13_reload {Type I LastRead 0 FirstWrite -1}
		A_6_out {Type O LastRead -1 FirstWrite 1}
		B_6_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_74_112 {
		Ah_14_reload {Type I LastRead 0 FirstWrite -1}
		Ah_13_reload {Type I LastRead 0 FirstWrite -1}
		Bh_14_reload {Type I LastRead 0 FirstWrite -1}
		Bh_13_reload {Type I LastRead 0 FirstWrite -1}
		A_8_out {Type O LastRead -1 FirstWrite 1}
		B_8_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_56_114 {
		Al_14_reload {Type I LastRead 0 FirstWrite -1}
		Al_13_reload {Type I LastRead 0 FirstWrite -1}
		Ah_14_reload {Type I LastRead 0 FirstWrite -1}
		Ah_13_reload {Type I LastRead 0 FirstWrite -1}
		Sal_5_out {Type O LastRead -1 FirstWrite 0}
		Sal_4_out {Type O LastRead -1 FirstWrite 0}
		carry_4_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_115 {
		Bl_14_reload {Type I LastRead 0 FirstWrite -1}
		Bl_13_reload {Type I LastRead 0 FirstWrite -1}
		Bh_14_reload {Type I LastRead 0 FirstWrite -1}
		Bh_13_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_5_out {Type O LastRead -1 FirstWrite 0}
		Sbl_4_out {Type O LastRead -1 FirstWrite 0}
		carry_6_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_151_123 {
		Sal_10_reload {Type I LastRead 0 FirstWrite -1}
		Sal_11_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_10_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_11_reload {Type I LastRead 0 FirstWrite -1}
		Bl_18_out {Type O LastRead -1 FirstWrite 0}
		Bl_17_out {Type O LastRead -1 FirstWrite 0}
		Al_18_out {Type O LastRead -1 FirstWrite 0}
		Al_17_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_157_224 {
		or_ln {Type I LastRead 0 FirstWrite -1}
		Sal_9_reload {Type I LastRead 0 FirstWrite -1}
		Sal_8_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln65 {Type I LastRead 0 FirstWrite -1}
		Sbl_9_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_8_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln65_1 {Type I LastRead 0 FirstWrite -1}
		Bh_18_out {Type O LastRead -1 FirstWrite 0}
		Bh_17_out {Type O LastRead -1 FirstWrite 0}
		Ah_18_out {Type O LastRead -1 FirstWrite 0}
		Ah_17_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_27 {
		shl_ln2 {Type I LastRead 0 FirstWrite -1}
		P_2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_1 {
		z0_1_reload {Type I LastRead 0 FirstWrite -1}
		z0_2_reload {Type I LastRead 0 FirstWrite -1}
		z0_3_reload {Type I LastRead 0 FirstWrite -1}
		z0_4_reload {Type I LastRead 0 FirstWrite -1}
		z2_1_reload {Type I LastRead 0 FirstWrite -1}
		z2_2_reload {Type I LastRead 0 FirstWrite -1}
		z2_3_reload {Type I LastRead 0 FirstWrite -1}
		z2_4_reload {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 1}
		W2_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_211 {
		P_3 {Type I LastRead 0 FirstWrite -1}
		z0_13_out {Type O LastRead -1 FirstWrite 0}
		z0_12_out {Type O LastRead -1 FirstWrite 0}
		z0_11_out {Type O LastRead -1 FirstWrite 0}
		z0_10_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_213 {
		P_4 {Type I LastRead 0 FirstWrite -1}
		z2_13_out {Type O LastRead -1 FirstWrite 0}
		z2_12_out {Type O LastRead -1 FirstWrite 0}
		z2_11_out {Type O LastRead -1 FirstWrite 0}
		z2_10_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_116 {
		Sal_5_reload {Type I LastRead 0 FirstWrite -1}
		Sal_4_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_5_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_4_reload {Type I LastRead 0 FirstWrite -1}
		A_10_out {Type O LastRead -1 FirstWrite 1}
		B_10_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_74_125 {
		Al_18_reload {Type I LastRead 0 FirstWrite -1}
		Al_17_reload {Type I LastRead 0 FirstWrite -1}
		Bl_18_reload {Type I LastRead 0 FirstWrite -1}
		Bl_17_reload {Type I LastRead 0 FirstWrite -1}
		A_12_out {Type O LastRead -1 FirstWrite 1}
		B_12_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_74_127 {
		Ah_18_reload {Type I LastRead 0 FirstWrite -1}
		Ah_17_reload {Type I LastRead 0 FirstWrite -1}
		Bh_18_reload {Type I LastRead 0 FirstWrite -1}
		Bh_17_reload {Type I LastRead 0 FirstWrite -1}
		A_14_out {Type O LastRead -1 FirstWrite 1}
		B_14_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_56_129 {
		or_ln {Type I LastRead 0 FirstWrite -1}
		Al_18_reload {Type I LastRead 0 FirstWrite -1}
		Al_17_reload {Type I LastRead 0 FirstWrite -1}
		Ah_18_reload {Type I LastRead 0 FirstWrite -1}
		Ah_17_reload {Type I LastRead 0 FirstWrite -1}
		Sal_19_out {Type O LastRead -1 FirstWrite 0}
		Sal_18_out {Type O LastRead -1 FirstWrite 0}
		carry_12_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_130 {
		or_ln {Type I LastRead 0 FirstWrite -1}
		Bl_18_reload {Type I LastRead 0 FirstWrite -1}
		Bl_17_reload {Type I LastRead 0 FirstWrite -1}
		Bh_18_reload {Type I LastRead 0 FirstWrite -1}
		Bh_17_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_19_out {Type O LastRead -1 FirstWrite 0}
		Sbl_18_out {Type O LastRead -1 FirstWrite 0}
		carry_14_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_2 {
		shl_ln2 {Type I LastRead 0 FirstWrite -1}
		z1 {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_217 {
		shl_ln81_1 {Type I LastRead 0 FirstWrite -1}
		P_5 {Type I LastRead 0 FirstWrite -1}
		z1_1 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_118 {
		z0_10_reload {Type I LastRead 0 FirstWrite -1}
		z0_11_reload {Type I LastRead 0 FirstWrite -1}
		z0_12_reload {Type I LastRead 0 FirstWrite -1}
		z0_13_reload {Type I LastRead 0 FirstWrite -1}
		z2_10_reload {Type I LastRead 0 FirstWrite -1}
		z2_11_reload {Type I LastRead 0 FirstWrite -1}
		z2_12_reload {Type I LastRead 0 FirstWrite -1}
		z2_13_reload {Type I LastRead 0 FirstWrite -1}
		W2_2_out {Type O LastRead -1 FirstWrite 1}
		W0_2_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_226 {
		P_6 {Type I LastRead 0 FirstWrite -1}
		z0_22_out {Type O LastRead -1 FirstWrite 0}
		z0_21_out {Type O LastRead -1 FirstWrite 0}
		z0_20_out {Type O LastRead -1 FirstWrite 0}
		z0_19_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_228 {
		or_ln1 {Type I LastRead 0 FirstWrite -1}
		P_7 {Type I LastRead 0 FirstWrite -1}
		z2_19_out {Type O LastRead -1 FirstWrite 0}
		z2_20_out {Type O LastRead -1 FirstWrite 0}
		z2_21_out {Type O LastRead -1 FirstWrite 0}
		z2_22_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_131 {
		Sal_19_reload {Type I LastRead 0 FirstWrite -1}
		Sal_18_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_19_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_18_reload {Type I LastRead 0 FirstWrite -1}
		A_16_out {Type O LastRead -1 FirstWrite 1}
		B_16_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_113_3 {
		Pacc {Type I LastRead 0 FirstWrite -1}
		z0 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_219 {
		shl_ln81_1 {Type I LastRead 0 FirstWrite -1}
		z1_1 {Type I LastRead 0 FirstWrite -1}
		W1v_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_232 {
		shl_ln81_3 {Type I LastRead 0 FirstWrite -1}
		P_8 {Type I LastRead 0 FirstWrite -1}
		z1_2 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_133 {
		z0_19_reload {Type I LastRead 0 FirstWrite -1}
		z0_20_reload {Type I LastRead 0 FirstWrite -1}
		z0_21_reload {Type I LastRead 0 FirstWrite -1}
		z0_22_reload {Type I LastRead 0 FirstWrite -1}
		z2_22_reload {Type I LastRead 0 FirstWrite -1}
		z2_21_reload {Type I LastRead 0 FirstWrite -1}
		z2_20_reload {Type I LastRead 0 FirstWrite -1}
		z2_19_reload {Type I LastRead 0 FirstWrite -1}
		W2_4_out {Type O LastRead -1 FirstWrite 1}
		W0_4_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_113_320 {
		Pacc_1 {Type I LastRead 0 FirstWrite -1}
		z2 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_234 {
		shl_ln81_3 {Type I LastRead 0 FirstWrite -1}
		z1_2 {Type I LastRead 0 FirstWrite -1}
		W1v_4_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_335 {
		shl_ln81_2 {Type I LastRead 0 FirstWrite -1}
		Pacc_2 {Type I LastRead 0 FirstWrite -1}
		z1_3 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_136 {
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_6_out {Type O LastRead -1 FirstWrite 0}
		W0_6_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_237 {
		shl_ln81_2 {Type I LastRead 0 FirstWrite -1}
		z1_3 {Type I LastRead 0 FirstWrite -1}
		W1v_6_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_338 {
		Pacc_3 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "122", "Max" : "130"}
	, {"Name" : "Interval", "Min" : "122", "Max" : "130"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { bram {  { a_Addr_A MemPortADDR2 1 32 }  { a_EN_A MemPortCE2 1 1 }  { a_WEN_A MemPortWE2 1 8 }  { a_Din_A MemPortDIN2 1 64 }  { a_Dout_A MemPortDOUT2 0 64 } } }
	b { bram {  { b_Addr_A MemPortADDR2 1 32 }  { b_EN_A MemPortCE2 1 1 }  { b_WEN_A MemPortWE2 1 8 }  { b_Din_A MemPortDIN2 1 64 }  { b_Dout_A MemPortDOUT2 0 64 } } }
	c { bram {  { c_Addr_A MemPortADDR2 1 32 }  { c_EN_A MemPortCE2 1 1 }  { c_WEN_A MemPortWE2 1 8 }  { c_Din_A MemPortDIN2 1 64 }  { c_Dout_A MemPortDOUT2 0 64 } } }
}
