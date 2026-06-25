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
set cdfgNum 110
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "9", "11", "13", "15", "18", "21", "23", "26", "29", "31", "33", "35", "37", "39", "43", "47", "50", "52", "55", "57", "60", "62", "64", "66", "69", "72", "74", "77", "80", "82", "84", "86", "88", "92", "95", "98", "101", "103", "106", "108", "111", "113", "116", "118", "120", "122", "125", "128", "130", "132", "134", "136", "138", "140", "142", "145", "148", "151", "153", "156", "159", "162", "164", "167", "169", "172", "175", "177", "179", "182", "186", "189", "192", "195", "197", "200", "203", "205", "208", "211", "215", "218", "221", "223", "226", "229", "232", "234", "237", "240", "244", "247", "249", "251", "253", "257", "259", "261", "264", "267", "270", "272", "275", "277", "280", "281", "282", "283", "284", "285", "286", "287", "288"],
		"CDFG" : "mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "193", "EstimateLatencyMax" : "-1",
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
					{"ID" : "7", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_151_1_fu_1494", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_157_2_fu_1510", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_151_1_fu_1494", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_157_2_fu_1510", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_113_397_fu_2505", "Port" : "c", "Inst_start_state" : "54", "Inst_end_state" : "55"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z1_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z1_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z1_3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z1_17_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_1_fu_1494", "Parent" : "0", "Child" : ["8"],
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
			{"Name" : "Al_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_1_fu_1494.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_2_fu_1510", "Parent" : "0", "Child" : ["10"],
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
			{"Name" : "Ah_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_2_fu_1510.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_11_fu_1526", "Parent" : "0", "Child" : ["12"],
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
			{"Name" : "Al_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "av_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_11_fu_1526.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_22_fu_1542", "Parent" : "0", "Child" : ["14"],
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
			{"Name" : "Al_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "av_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_22_fu_1542.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_1558", "Parent" : "0", "Child" : ["16", "17"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_2",
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
			{"Name" : "P", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_1558.partselect_64ns_128ns_32ns_64_1_1_U41", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_1558.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_23_fu_1565", "Parent" : "0", "Child" : ["19", "20"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_23",
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
			{"Name" : "P_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_23_fu_1565.partselect_64ns_128ns_32ns_64_1_1_U46", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_23_fu_1565.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_1572", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_1",
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
			{"Name" : "Sbl_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_1572.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_25_fu_1580", "Parent" : "0", "Child" : ["24", "25"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_25",
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
			{"Name" : "P_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_25_fu_1580.partselect_64ns_128ns_32ns_64_1_1_U82", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_25_fu_1580.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_26_fu_1587", "Parent" : "0", "Child" : ["27", "28"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_26",
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
			{"Name" : "P_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_26_fu_1587.partselect_64ns_128ns_32ns_64_1_1_U86", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_26_fu_1587.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_17_fu_1594", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_17",
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
			{"Name" : "Sbl_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_17_fu_1594.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_1_fu_1602", "Parent" : "0", "Child" : ["32"],
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
			{"Name" : "Ah_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1155509_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_31_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_1_fu_1602.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_112_fu_1613", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_112",
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
			{"Name" : "Bh_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1418511_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_28_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_112_fu_1613.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_126_fu_1624", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_151_126",
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
			{"Name" : "Ah_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "av_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_126_fu_1624.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_227_fu_1640", "Parent" : "0", "Child" : ["38"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_157_227",
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
			{"Name" : "Ah_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "av_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_227_fu_1640.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_157_fu_1656", "Parent" : "0", "Child" : ["40", "41", "42"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_157",
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
			{"Name" : "Al_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_157_fu_1656.sparsemux_9_2_64_1_1_U386", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_157_fu_1656.sparsemux_9_2_64_1_1_U387", "Parent" : "39"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_157_fu_1656.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_158_fu_1673", "Parent" : "0", "Child" : ["44", "45", "46"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_158",
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
			{"Name" : "Bl_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_158_fu_1673.sparsemux_9_2_64_1_1_U401", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_158_fu_1673.sparsemux_9_2_64_1_1_U402", "Parent" : "43"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_158_fu_1673.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_24_fu_1690", "Parent" : "0", "Child" : ["48", "49"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_24",
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
			{"Name" : "shl_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_24_fu_1690.partselect_64ns_128ns_32ns_64_1_1_U54", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_24_fu_1690.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_1700", "Parent" : "0", "Child" : ["51"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_1",
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
			{"Name" : "z0_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_1700.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_28_fu_1710", "Parent" : "0", "Child" : ["53", "54"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_28",
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
			{"Name" : "shl_ln81_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_28_fu_1710.partselect_64ns_128ns_32ns_64_1_1_U94", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_28_fu_1710.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_19_fu_1720", "Parent" : "0", "Child" : ["56"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_19",
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
			{"Name" : "z0_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W2_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_19_fu_1720.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_213_fu_1730", "Parent" : "0", "Child" : ["58", "59"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_213",
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
			{"Name" : "P_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_213_fu_1730.partselect_64ns_128ns_32ns_64_1_1_U134", "Parent" : "57"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_213_fu_1730.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_114_fu_1737", "Parent" : "0", "Child" : ["61"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_114",
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
			{"Name" : "Bh_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_114_fu_1737.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_116_fu_1745", "Parent" : "0", "Child" : ["63"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_116",
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
			{"Name" : "add_ln56_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload52", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_34_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_116_fu_1745.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_117_fu_1754", "Parent" : "0", "Child" : ["65"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_117",
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
			{"Name" : "add_ln56_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload55", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln56", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_117_fu_1754.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_228_fu_1763", "Parent" : "0", "Child" : ["67", "68"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_228",
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
			{"Name" : "P_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_22_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_228_fu_1763.partselect_64ns_128ns_32ns_64_1_1_U227", "Parent" : "66"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_228_fu_1763.flow_control_loop_pipe_sequential_init_U", "Parent" : "66"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_229_fu_1770", "Parent" : "0", "Child" : ["70", "71"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_229",
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
			{"Name" : "P_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_23_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_229_fu_1770.partselect_64ns_128ns_32ns_64_1_1_U231", "Parent" : "69"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_229_fu_1770.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_130_fu_1777", "Parent" : "0", "Child" : ["73"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_130",
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
			{"Name" : "Sal_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_130_fu_1777.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_235_fu_1785", "Parent" : "0", "Child" : ["75", "76"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_235",
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
			{"Name" : "P_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_35_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_235_fu_1785.partselect_64ns_128ns_32ns_64_1_1_U265", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_235_fu_1785.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_236_fu_1792", "Parent" : "0", "Child" : ["78", "79"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_236",
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
			{"Name" : "P_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_236_fu_1792.partselect_64ns_128ns_32ns_64_1_1_U269", "Parent" : "77"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_236_fu_1792.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_137_fu_1799", "Parent" : "0", "Child" : ["81"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_137",
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
			{"Name" : "Sal_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_137_fu_1799.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_142_fu_1807", "Parent" : "0", "Child" : ["83"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_142",
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
			{"Name" : "Al_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1253513_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_32_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_142_fu_1807.flow_control_loop_pipe_sequential_init_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_143_fu_1818", "Parent" : "0", "Child" : ["85"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_143",
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
			{"Name" : "Bl_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1440515_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_32_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_143_fu_1818.flow_control_loop_pipe_sequential_init_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_159_fu_1829", "Parent" : "0", "Child" : ["87"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_151_159",
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
			{"Name" : "Sal_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "av_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_151_159_fu_1829.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_260_fu_1845", "Parent" : "0", "Child" : ["89", "90", "91"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_157_260",
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
			{"Name" : "Sal_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_31_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_260_fu_1845.sparsemux_7_2_64_1_1_U428", "Parent" : "88"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_260_fu_1845.sparsemux_7_2_64_1_1_U429", "Parent" : "88"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_157_260_fu_1845.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_2_fu_1864", "Parent" : "0", "Child" : ["93", "94"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_2",
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
			{"Name" : "shl_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_2_fu_1864.sparsemux_9_2_64_1_1_U67", "Parent" : "92"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_2_fu_1864.flow_control_loop_pipe_sequential_init_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_210_fu_1874", "Parent" : "0", "Child" : ["96", "97"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_210",
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
			{"Name" : "shl_ln81_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_210_fu_1874.sparsemux_9_2_64_1_1_U107", "Parent" : "95"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_210_fu_1874.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_215_fu_1884", "Parent" : "0", "Child" : ["99", "100"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_215",
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
			{"Name" : "add_ln81_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_215_fu_1884.partselect_64ns_128ns_32ns_64_1_1_U142", "Parent" : "98"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_215_fu_1884.flow_control_loop_pipe_sequential_init_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_118_fu_1892", "Parent" : "0", "Child" : ["102"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_118",
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
			{"Name" : "Sal_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_118_fu_1892.flow_control_loop_pipe_sequential_init_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_231_fu_1900", "Parent" : "0", "Child" : ["104", "105"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_231",
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
			{"Name" : "shl_ln81_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_34_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_231_fu_1900.partselect_64ns_128ns_32ns_64_1_1_U239", "Parent" : "103"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_231_fu_1900.flow_control_loop_pipe_sequential_init_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_132_fu_1910", "Parent" : "0", "Child" : ["107"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_132",
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
			{"Name" : "z0_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_132_fu_1910.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_238_fu_1920", "Parent" : "0", "Child" : ["109", "110"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_238",
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
			{"Name" : "shl_ln81_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_43_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_238_fu_1920.partselect_64ns_128ns_32ns_64_1_1_U277", "Parent" : "108"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_238_fu_1920.flow_control_loop_pipe_sequential_init_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_139_fu_1930", "Parent" : "0", "Child" : ["112"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_139",
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
			{"Name" : "z0_36_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_139_fu_1930.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_244_fu_1940", "Parent" : "0", "Child" : ["114", "115"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_244",
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
			{"Name" : "P_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_39_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_244_fu_1940.partselect_64ns_128ns_32ns_64_1_1_U317", "Parent" : "113"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_244_fu_1940.flow_control_loop_pipe_sequential_init_U", "Parent" : "113"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_145_fu_1947", "Parent" : "0", "Child" : ["117"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_145",
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
			{"Name" : "Ah_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_145_fu_1947.flow_control_loop_pipe_sequential_init_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_147_fu_1955", "Parent" : "0", "Child" : ["119"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_147",
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
			{"Name" : "add_ln56_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload99", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_37_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_147_fu_1955.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_148_fu_1964", "Parent" : "0", "Child" : ["121"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_148",
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
			{"Name" : "add_ln56_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload102", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln56_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_148_fu_1964.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_261_fu_1973", "Parent" : "0", "Child" : ["123", "124"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_261",
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
			{"Name" : "P_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_43_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_261_fu_1973.partselect_64ns_128ns_32ns_64_1_1_U446", "Parent" : "122"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_261_fu_1973.flow_control_loop_pipe_sequential_init_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_262_fu_1980", "Parent" : "0", "Child" : ["126", "127"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_262",
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
			{"Name" : "P_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_45_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_262_fu_1980.partselect_64ns_128ns_32ns_64_1_1_U450", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_262_fu_1980.flow_control_loop_pipe_sequential_init_U", "Parent" : "125"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_163_fu_1987", "Parent" : "0", "Child" : ["129"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_163",
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
			{"Name" : "Sal_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_163_fu_1987.flow_control_loop_pipe_sequential_init_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_168_fu_1995", "Parent" : "0", "Child" : ["131"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_168",
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
			{"Name" : "A_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_29_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_168_fu_1995.flow_control_loop_pipe_sequential_init_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_170_fu_2003", "Parent" : "0", "Child" : ["133"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_170",
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
			{"Name" : "Ah_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_31_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_170_fu_2003.flow_control_loop_pipe_sequential_init_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_172_fu_2011", "Parent" : "0", "Child" : ["135"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_172",
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
			{"Name" : "sub_ln56_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln56_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_19_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_172_fu_2011.flow_control_loop_pipe_sequential_init_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_173_fu_2020", "Parent" : "0", "Child" : ["137"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_173",
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
			{"Name" : "sub_ln56_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln56_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_21_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_173_fu_2020.flow_control_loop_pipe_sequential_init_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_179_fu_2029", "Parent" : "0", "Child" : ["139"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_179",
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
			{"Name" : "Al_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2394526_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1392523_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_0390521_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sal_39_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_179_fu_2029.flow_control_loop_pipe_sequential_init_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_180_fu_2042", "Parent" : "0", "Child" : ["141"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_180",
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
			{"Name" : "Bl_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2472534_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1470531_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_0468529_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_36_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_180_fu_2042.flow_control_loop_pipe_sequential_init_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_2055", "Parent" : "0", "Child" : ["143", "144"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_3",
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
			{"Name" : "Pacc", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_2055.partselect_64ns_1056s_32ns_64_1_1_U75", "Parent" : "142"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_2055.flow_control_loop_pipe_sequential_init_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_311_fu_2064", "Parent" : "0", "Child" : ["146", "147"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_311",
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
			{"Name" : "Pacc_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_311_fu_2064.partselect_64ns_1056s_32ns_64_1_1_U114", "Parent" : "145"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_311_fu_2064.flow_control_loop_pipe_sequential_init_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_219_fu_2073", "Parent" : "0", "Child" : ["149", "150"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_219",
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
			{"Name" : "shl_ln81_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_219_fu_2073.partselect_64ns_128ns_32ns_64_1_1_U161", "Parent" : "148"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_219_fu_2073.flow_control_loop_pipe_sequential_init_U", "Parent" : "148"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_120_fu_2083", "Parent" : "0", "Child" : ["152"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_120",
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
			{"Name" : "z0_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_120_fu_2083.flow_control_loop_pipe_sequential_init_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_233_fu_2093", "Parent" : "0", "Child" : ["154", "155"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_233",
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
			{"Name" : "shl_ln81_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_233_fu_2093.sparsemux_9_2_64_1_1_U252", "Parent" : "153"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_233_fu_2093.flow_control_loop_pipe_sequential_init_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_240_fu_2103", "Parent" : "0", "Child" : ["157", "158"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_240",
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
			{"Name" : "shl_ln81_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_43_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_42_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_240_fu_2103.sparsemux_9_2_64_1_1_U290", "Parent" : "156"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_240_fu_2103.flow_control_loop_pipe_sequential_init_U", "Parent" : "156"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_246_fu_2113", "Parent" : "0", "Child" : ["160", "161"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_246",
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
			{"Name" : "add_ln81_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_40_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_246_fu_2113.partselect_64ns_128ns_32ns_64_1_1_U325", "Parent" : "159"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_246_fu_2113.flow_control_loop_pipe_sequential_init_U", "Parent" : "159"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_149_fu_2121", "Parent" : "0", "Child" : ["163"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_149",
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
			{"Name" : "Sal_36_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_23_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_149_fu_2121.flow_control_loop_pipe_sequential_init_U", "Parent" : "162"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_264_fu_2129", "Parent" : "0", "Child" : ["165", "166"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_264",
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
			{"Name" : "shl_ln81_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_61_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_264_fu_2129.partselect_64ns_128ns_32ns_64_1_1_U458", "Parent" : "164"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_264_fu_2129.flow_control_loop_pipe_sequential_init_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_165_fu_2139", "Parent" : "0", "Child" : ["168"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_165",
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
			{"Name" : "z0_44_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_43_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_46_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_45_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_165_fu_2139.flow_control_loop_pipe_sequential_init_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_269_fu_2149", "Parent" : "0", "Child" : ["170", "171"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_269",
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
			{"Name" : "P_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_56_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_269_fu_2149.partselect_64ns_128ns_32ns_64_1_1_U488", "Parent" : "169"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_269_fu_2149.flow_control_loop_pipe_sequential_init_U", "Parent" : "169"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_271_fu_2156", "Parent" : "0", "Child" : ["173", "174"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_271",
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
			{"Name" : "shl_ln81_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_49_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_271_fu_2156.partselect_64ns_128ns_32ns_64_1_1_U496", "Parent" : "172"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_271_fu_2156.flow_control_loop_pipe_sequential_init_U", "Parent" : "172"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_174_fu_2164", "Parent" : "0", "Child" : ["176"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_174",
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
			{"Name" : "Sal_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_174_fu_2164.flow_control_loop_pipe_sequential_init_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_181_fu_2172", "Parent" : "0", "Child" : ["178"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_181",
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
			{"Name" : "Al_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_36_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_181_fu_2172.flow_control_loop_pipe_sequential_init_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_221_fu_2180", "Parent" : "0", "Child" : ["180", "181"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_221",
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
			{"Name" : "shl_ln103_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_221_fu_2180.sparsemux_9_2_64_1_1_U174", "Parent" : "179"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_221_fu_2180.flow_control_loop_pipe_sequential_init_U", "Parent" : "179"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_123_fu_2190", "Parent" : "0", "Child" : ["183", "184", "185"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_123",
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
			{"Name" : "z0_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_123_fu_2190.sparsemux_9_2_64_1_1_U185", "Parent" : "182"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_123_fu_2190.sparsemux_9_2_64_1_1_U186", "Parent" : "182"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_123_fu_2190.flow_control_loop_pipe_sequential_init_U", "Parent" : "182"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_334_fu_2204", "Parent" : "0", "Child" : ["187", "188"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_334",
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
			{"Name" : "Pacc_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_26_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_334_fu_2204.partselect_64ns_1056s_32ns_64_1_1_U259", "Parent" : "186"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_334_fu_2204.flow_control_loop_pipe_sequential_init_U", "Parent" : "186"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_341_fu_2213", "Parent" : "0", "Child" : ["190", "191"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_341",
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
			{"Name" : "Pacc_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_31_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_341_fu_2213.partselect_64ns_1056s_32ns_64_1_1_U297", "Parent" : "189"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_341_fu_2213.flow_control_loop_pipe_sequential_init_U", "Parent" : "189"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_250_fu_2222", "Parent" : "0", "Child" : ["193", "194"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_250",
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
			{"Name" : "shl_ln81_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_52_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_250_fu_2222.partselect_64ns_128ns_32ns_64_1_1_U344", "Parent" : "192"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_250_fu_2222.flow_control_loop_pipe_sequential_init_U", "Parent" : "192"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_151_fu_2232", "Parent" : "0", "Child" : ["196"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_151",
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
			{"Name" : "z0_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_39_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_151_fu_2232.flow_control_loop_pipe_sequential_init_U", "Parent" : "195"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_266_fu_2242", "Parent" : "0", "Child" : ["198", "199"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_266",
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
			{"Name" : "shl_ln81_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_61_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_60_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_59_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_58_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_266_fu_2242.sparsemux_9_2_64_1_1_U471", "Parent" : "197"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_266_fu_2242.flow_control_loop_pipe_sequential_init_U", "Parent" : "197"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_275_fu_2252", "Parent" : "0", "Child" : ["201", "202"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_275",
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
			{"Name" : "shl_ln81_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_70_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_275_fu_2252.partselect_64ns_128ns_32ns_64_1_1_U515", "Parent" : "200"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_275_fu_2252.flow_control_loop_pipe_sequential_init_U", "Parent" : "200"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_176_fu_2262", "Parent" : "0", "Child" : ["204"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_176",
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
			{"Name" : "z0_57_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_56_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_50_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_49_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_176_fu_2262.flow_control_loop_pipe_sequential_init_U", "Parent" : "203"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_322_fu_2272", "Parent" : "0", "Child" : ["206", "207"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_322",
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
			{"Name" : "shl_ln81_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pacc_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_322_fu_2272.partselect_64ns_1056s_32ns_64_1_1_U181", "Parent" : "205"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_322_fu_2272.flow_control_loop_pipe_sequential_init_U", "Parent" : "205"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_252_fu_2279", "Parent" : "0", "Child" : ["209", "210"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_252",
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
			{"Name" : "shl_ln103_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_52_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_51_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_50_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_49_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_252_fu_2279.sparsemux_9_2_64_1_1_U357", "Parent" : "208"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_252_fu_2279.flow_control_loop_pipe_sequential_init_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_154_fu_2289", "Parent" : "0", "Child" : ["212", "213", "214"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_154",
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
			{"Name" : "z0_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_154_fu_2289.sparsemux_9_2_64_1_1_U368", "Parent" : "211"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_154_fu_2289.sparsemux_9_2_64_1_1_U369", "Parent" : "211"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_154_fu_2289.flow_control_loop_pipe_sequential_init_U", "Parent" : "211"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_367_fu_2303", "Parent" : "0", "Child" : ["216", "217"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_367",
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
			{"Name" : "Pacc_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_47_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_367_fu_2303.partselect_64ns_1056s_32ns_64_1_1_U478", "Parent" : "215"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_367_fu_2303.flow_control_loop_pipe_sequential_init_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_277_fu_2312", "Parent" : "0", "Child" : ["219", "220"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_277",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln103_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_70_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_69_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_68_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_67_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_277_fu_2312.sparsemux_9_2_64_1_1_U528", "Parent" : "218"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_277_fu_2312.flow_control_loop_pipe_sequential_init_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_224_fu_2322", "Parent" : "0", "Child" : ["222"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_224",
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
			{"Name" : "shl_ln113_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_224_fu_2322.flow_control_loop_pipe_sequential_init_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_353_fu_2329", "Parent" : "0", "Child" : ["224", "225"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_353",
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
			{"Name" : "shl_ln81_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pacc_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_353_fu_2329.partselect_64ns_1056s_32ns_64_1_1_U364", "Parent" : "223"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_353_fu_2329.flow_control_loop_pipe_sequential_init_U", "Parent" : "223"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_378_fu_2336", "Parent" : "0", "Child" : ["227", "228"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_378",
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
			{"Name" : "Pacc_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_57_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_378_fu_2336.partselect_64ns_1056ns_32ns_64_1_1_U535", "Parent" : "226"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_378_fu_2336.flow_control_loop_pipe_sequential_init_U", "Parent" : "226"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_325_fu_2346", "Parent" : "0", "Child" : ["230", "231"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_325",
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
			{"Name" : "Pacc_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_325_fu_2346.partselect_64ns_1056s_32ns_64_1_1_U200", "Parent" : "229"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_325_fu_2346.flow_control_loop_pipe_sequential_init_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_255_fu_2352", "Parent" : "0", "Child" : ["233"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_255",
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
			{"Name" : "shl_ln113_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_14_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_255_fu_2352.flow_control_loop_pipe_sequential_init_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_356_fu_2359", "Parent" : "0", "Child" : ["235", "236"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_356",
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
			{"Name" : "Pacc_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_356_fu_2359.partselect_64ns_1056s_32ns_64_1_1_U383", "Parent" : "234"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_356_fu_2359.flow_control_loop_pipe_sequential_init_U", "Parent" : "234"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_282_fu_2365", "Parent" : "0", "Child" : ["238", "239"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_282",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul16_i_i475_i_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_60_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_282_fu_2365.partselect_64ns_128ns_32ns_64_1_1_U565", "Parent" : "237"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_282_fu_2365.flow_control_loop_pipe_sequential_init_U", "Parent" : "237"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_183_fu_2373", "Parent" : "0", "Child" : ["241", "242", "243"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_183",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "icmp_ln74", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_38_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_183_fu_2373.partset_64ns_64ns_64ns_32ns_64_1_1_U570", "Parent" : "240"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_183_fu_2373.partset_64ns_64ns_64ns_32ns_64_1_1_U571", "Parent" : "240"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_183_fu_2373.flow_control_loop_pipe_sequential_init_U", "Parent" : "240"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_284_fu_2382", "Parent" : "0", "Child" : ["245", "246"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_284",
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
			{"Name" : "shl_ln81_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_63_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_284_fu_2382.partselect_64ns_128ns_32ns_64_1_1_U578", "Parent" : "244"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_284_fu_2382.flow_control_loop_pipe_sequential_init_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_185_fu_2390", "Parent" : "0", "Child" : ["248"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_185",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "umax19", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_27_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_185_fu_2390.flow_control_loop_pipe_sequential_init_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_186_fu_2401", "Parent" : "0", "Child" : ["250"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_186",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "umax19", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_lo_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_hi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_29_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_56_186_fu_2401.flow_control_loop_pipe_sequential_init_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_189_fu_2412", "Parent" : "0", "Child" : ["252"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_189",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mul16_i_i475_i_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_20_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_189_fu_2412.flow_control_loop_pipe_sequential_init_U", "Parent" : "251"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_192_fu_2427", "Parent" : "0", "Child" : ["254", "255", "256"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_192",
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
			{"Name" : "z0_47_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_48_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_49_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_50_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_57_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_56_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_55_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_54_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W2_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_22_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_192_fu_2427.sparsemux_9_2_64_1_1_U626", "Parent" : "253"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_192_fu_2427.sparsemux_9_2_64_1_1_U627", "Parent" : "253"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_192_fu_2427.flow_control_loop_pipe_sequential_init_U", "Parent" : "253"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_195_fu_2441", "Parent" : "0", "Child" : ["258"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_97_195",
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
			{"Name" : "W2_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "W0_24_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_97_195_fu_2441.flow_control_loop_pipe_sequential_init_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_187_fu_2449", "Parent" : "0", "Child" : ["260"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_74_187",
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
			{"Name" : "Sal_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_37_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_40_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_74_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_74_187_fu_2449.flow_control_loop_pipe_sequential_init_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_288_fu_2457", "Parent" : "0", "Child" : ["262", "263"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_81_288",
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
			{"Name" : "shl_ln81_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z1_79_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_81_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_288_fu_2457.partselect_64ns_128ns_32ns_64_1_1_U601", "Parent" : "261"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_81_288_fu_2457.flow_control_loop_pipe_sequential_init_U", "Parent" : "261"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_290_fu_2467", "Parent" : "0", "Child" : ["265", "266"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_290",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln103_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_79_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_78_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_77_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_76_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_20_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_290_fu_2467.sparsemux_9_2_64_1_1_U615", "Parent" : "264"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_290_fu_2467.flow_control_loop_pipe_sequential_init_U", "Parent" : "264"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_391_fu_2477", "Parent" : "0", "Child" : ["268", "269"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_391",
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
			{"Name" : "shl_ln113_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pacc_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_391_fu_2477.partselect_64ns_1056ns_32ns_64_1_1_U622", "Parent" : "267"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_391_fu_2477.flow_control_loop_pipe_sequential_init_U", "Parent" : "267"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_293_fu_2484", "Parent" : "0", "Child" : ["271"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_293",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln113_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_22_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_293_fu_2484.flow_control_loop_pipe_sequential_init_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_394_fu_2491", "Parent" : "0", "Child" : ["273", "274"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_394",
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
			{"Name" : "shl_ln113_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pacc_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_17", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_394_fu_2491.partselect_64ns_1056ns_32ns_64_1_1_U641", "Parent" : "272"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_394_fu_2491.flow_control_loop_pipe_sequential_init_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_296_fu_2498", "Parent" : "0", "Child" : ["276"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_296",
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
			{"Name" : "shl_ln113_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W1v_24_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_103_296_fu_2498.flow_control_loop_pipe_sequential_init_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_397_fu_2505", "Parent" : "0", "Child" : ["278", "279"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_397",
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
			{"Name" : "Pacc_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_397_fu_2505.partselect_64ns_1056s_32ns_64_1_1_U652", "Parent" : "277"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_Pipeline_VITIS_LOOP_113_397_fu_2505.flow_control_loop_pipe_sequential_init_U", "Parent" : "277"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U654", "Parent" : "0"},
	{"ID" : "281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U655", "Parent" : "0"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U656", "Parent" : "0"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U657", "Parent" : "0"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U658", "Parent" : "0"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U659", "Parent" : "0"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_64ns_128_1_1_U660", "Parent" : "0"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_3_64_1_1_U661", "Parent" : "0"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_3_64_1_1_U662", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_151_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		Al_3_out {Type O LastRead -1 FirstWrite 0}
		Al_2_out {Type O LastRead -1 FirstWrite 0}
		Al_1_out {Type O LastRead -1 FirstWrite 0}
		Al_out {Type O LastRead -1 FirstWrite 0}
		Bl_3_out {Type O LastRead -1 FirstWrite 0}
		Bl_2_out {Type O LastRead -1 FirstWrite 0}
		Bl_1_out {Type O LastRead -1 FirstWrite 0}
		Bl_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_157_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		Ah_3_out {Type O LastRead -1 FirstWrite 0}
		Ah_2_out {Type O LastRead -1 FirstWrite 0}
		Ah_1_out {Type O LastRead -1 FirstWrite 0}
		Ah_out {Type O LastRead -1 FirstWrite 0}
		Bh_3_out {Type O LastRead -1 FirstWrite 0}
		Bh_2_out {Type O LastRead -1 FirstWrite 0}
		Bh_1_out {Type O LastRead -1 FirstWrite 0}
		Bh_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_151_11 {
		Al_2_reload {Type I LastRead 0 FirstWrite -1}
		Al_3_reload {Type I LastRead 0 FirstWrite -1}
		Bl_2_reload {Type I LastRead 0 FirstWrite -1}
		Bl_3_reload {Type I LastRead 0 FirstWrite -1}
		Bl_10_out {Type O LastRead -1 FirstWrite 0}
		Bl_9_out {Type O LastRead -1 FirstWrite 0}
		Al_10_out {Type O LastRead -1 FirstWrite 0}
		Al_9_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		av_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_157_22 {
		Al_reload {Type I LastRead 0 FirstWrite -1}
		Al_1_reload {Type I LastRead 0 FirstWrite -1}
		Bl_reload {Type I LastRead 0 FirstWrite -1}
		Bl_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_11_out {Type O LastRead -1 FirstWrite 0}
		Bh_10_out {Type O LastRead -1 FirstWrite 0}
		Ah_11_out {Type O LastRead -1 FirstWrite 0}
		Ah_10_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		av_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_2 {
		P {Type I LastRead 0 FirstWrite -1}
		z0_2_out {Type O LastRead -1 FirstWrite 0}
		z0_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_23 {
		P_1 {Type I LastRead 0 FirstWrite -1}
		z2_2_out {Type O LastRead -1 FirstWrite 0}
		z2_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_1 {
		Sbl_26 {Type I LastRead 0 FirstWrite -1}
		Sal_32 {Type I LastRead 0 FirstWrite -1}
		B_out {Type O LastRead -1 FirstWrite 0}
		A_2_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_25 {
		P_3 {Type I LastRead 0 FirstWrite -1}
		z0_15_out {Type O LastRead -1 FirstWrite 0}
		z0_14_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_26 {
		P_4 {Type I LastRead 0 FirstWrite -1}
		z2_6_out {Type O LastRead -1 FirstWrite 0}
		z2_5_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_17 {
		Sbl_27 {Type I LastRead 0 FirstWrite -1}
		Sal_33 {Type I LastRead 0 FirstWrite -1}
		B_5_out {Type O LastRead -1 FirstWrite 0}
		A_6_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_1 {
		Al_10_reload {Type I LastRead 0 FirstWrite -1}
		Al_9_reload {Type I LastRead 0 FirstWrite -1}
		Ah_11_reload {Type I LastRead 0 FirstWrite -1}
		Ah_10_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1155509_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		carry_31_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_112 {
		Bl_10_reload {Type I LastRead 0 FirstWrite -1}
		Bl_9_reload {Type I LastRead 0 FirstWrite -1}
		Bh_11_reload {Type I LastRead 0 FirstWrite -1}
		Bh_10_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1418511_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		Sbl_28_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_151_126 {
		Ah_2_reload {Type I LastRead 0 FirstWrite -1}
		Ah_3_reload {Type I LastRead 0 FirstWrite -1}
		Bh_2_reload {Type I LastRead 0 FirstWrite -1}
		Bh_3_reload {Type I LastRead 0 FirstWrite -1}
		Bl_17_out {Type O LastRead -1 FirstWrite 0}
		Bl_16_out {Type O LastRead -1 FirstWrite 0}
		Al_17_out {Type O LastRead -1 FirstWrite 0}
		Al_16_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		av_8_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_157_227 {
		Ah_reload {Type I LastRead 0 FirstWrite -1}
		Ah_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_reload {Type I LastRead 0 FirstWrite -1}
		Bh_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_18_out {Type O LastRead -1 FirstWrite 0}
		Bh_17_out {Type O LastRead -1 FirstWrite 0}
		Ah_18_out {Type O LastRead -1 FirstWrite 0}
		Ah_17_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		av_10_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_157 {
		Al_3_reload {Type I LastRead 0 FirstWrite -1}
		Al_2_reload {Type I LastRead 0 FirstWrite -1}
		Al_1_reload {Type I LastRead 0 FirstWrite -1}
		Al_reload {Type I LastRead 0 FirstWrite -1}
		Ah_3_reload {Type I LastRead 0 FirstWrite -1}
		Ah_2_reload {Type I LastRead 0 FirstWrite -1}
		Ah_1_reload {Type I LastRead 0 FirstWrite -1}
		Ah_reload {Type I LastRead 0 FirstWrite -1}
		Sal_13_out {Type O LastRead -1 FirstWrite 0}
		Sal_12_out {Type O LastRead -1 FirstWrite 0}
		Sal_11_out {Type O LastRead -1 FirstWrite 0}
		Sal_10_out {Type O LastRead -1 FirstWrite 0}
		carry_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_158 {
		Bl_3_reload {Type I LastRead 0 FirstWrite -1}
		Bl_2_reload {Type I LastRead 0 FirstWrite -1}
		Bl_1_reload {Type I LastRead 0 FirstWrite -1}
		Bl_reload {Type I LastRead 0 FirstWrite -1}
		Bh_3_reload {Type I LastRead 0 FirstWrite -1}
		Bh_2_reload {Type I LastRead 0 FirstWrite -1}
		Bh_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_7_out {Type O LastRead -1 FirstWrite 0}
		Sbl_6_out {Type O LastRead -1 FirstWrite 0}
		Sbl_5_out {Type O LastRead -1 FirstWrite 0}
		Sbl_out {Type O LastRead -1 FirstWrite 0}
		carry_33_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_24 {
		shl_ln1 {Type I LastRead 0 FirstWrite -1}
		P_2 {Type I LastRead 0 FirstWrite -1}
		z1_4_out {Type O LastRead -1 FirstWrite 0}
		z1_5_out {Type O LastRead -1 FirstWrite 0}
		z1_6_out {Type O LastRead -1 FirstWrite 0}
		z1_7_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_1 {
		z0_2_reload {Type I LastRead 0 FirstWrite -1}
		z0_1_reload {Type I LastRead 0 FirstWrite -1}
		z2_2_reload {Type I LastRead 0 FirstWrite -1}
		z2_1_reload {Type I LastRead 0 FirstWrite -1}
		W0_out {Type O LastRead -1 FirstWrite 1}
		W2_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_28 {
		shl_ln81_1 {Type I LastRead 0 FirstWrite -1}
		P_5 {Type I LastRead 0 FirstWrite -1}
		z1_13_out {Type O LastRead -1 FirstWrite 0}
		z1_14_out {Type O LastRead -1 FirstWrite 0}
		z1_15_out {Type O LastRead -1 FirstWrite 0}
		z1_16_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_19 {
		z0_15_reload {Type I LastRead 0 FirstWrite -1}
		z0_14_reload {Type I LastRead 0 FirstWrite -1}
		z2_6_reload {Type I LastRead 0 FirstWrite -1}
		z2_5_reload {Type I LastRead 0 FirstWrite -1}
		W0_2_out {Type O LastRead -1 FirstWrite 1}
		W2_2_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_213 {
		P_6 {Type I LastRead 0 FirstWrite -1}
		z0_19_out {Type O LastRead -1 FirstWrite 0}
		z0_18_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_114 {
		Bh_33 {Type I LastRead 0 FirstWrite -1}
		Ah_33 {Type I LastRead 0 FirstWrite -1}
		B_8_out {Type O LastRead -1 FirstWrite 0}
		A_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_116 {
		add_ln56_2_cast {Type I LastRead 0 FirstWrite -1}
		p_reload52 {Type I LastRead 0 FirstWrite -1}
		Ah_34_cast {Type I LastRead 0 FirstWrite -1}
		Sal_out {Type O LastRead -1 FirstWrite 0}
		carry_3_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_117 {
		add_ln56_2_cast {Type I LastRead 0 FirstWrite -1}
		p_reload55 {Type I LastRead 0 FirstWrite -1}
		zext_ln56 {Type I LastRead 0 FirstWrite -1}
		Sbl_29_out {Type O LastRead -1 FirstWrite 0}
		carry_5_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_228 {
		P_9 {Type I LastRead 0 FirstWrite -1}
		z0_23_out {Type O LastRead -1 FirstWrite 0}
		z0_22_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_229 {
		P_10 {Type I LastRead 0 FirstWrite -1}
		z2_24_out {Type O LastRead -1 FirstWrite 0}
		z2_23_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_130 {
		Sal_34 {Type I LastRead 0 FirstWrite -1}
		Sbl_30 {Type I LastRead 0 FirstWrite -1}
		A_15_out {Type O LastRead -1 FirstWrite 0}
		B_14_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_235 {
		P_12 {Type I LastRead 0 FirstWrite -1}
		z0_36_out {Type O LastRead -1 FirstWrite 0}
		z0_35_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_236 {
		P_13 {Type I LastRead 0 FirstWrite -1}
		z2_28_out {Type O LastRead -1 FirstWrite 0}
		z2_27_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_137 {
		Sal_35 {Type I LastRead 0 FirstWrite -1}
		Sbl_31 {Type I LastRead 0 FirstWrite -1}
		A_19_out {Type O LastRead -1 FirstWrite 0}
		B_18_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_142 {
		Al_17_reload {Type I LastRead 0 FirstWrite -1}
		Al_16_reload {Type I LastRead 0 FirstWrite -1}
		Ah_18_reload {Type I LastRead 0 FirstWrite -1}
		Ah_17_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1253513_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		carry_32_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_143 {
		Bl_17_reload {Type I LastRead 0 FirstWrite -1}
		Bl_16_reload {Type I LastRead 0 FirstWrite -1}
		Bh_18_reload {Type I LastRead 0 FirstWrite -1}
		Bh_17_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1440515_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		Sbl_32_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_151_159 {
		Sal_12_reload {Type I LastRead 0 FirstWrite -1}
		Sal_13_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_6_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_7_reload {Type I LastRead 0 FirstWrite -1}
		Al_24_out {Type O LastRead -1 FirstWrite 0}
		Al_23_out {Type O LastRead -1 FirstWrite 0}
		Bl_24_out {Type O LastRead -1 FirstWrite 0}
		Bl_23_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		av_18_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_157_260 {
		or_ln {Type I LastRead 0 FirstWrite -1}
		Sal_11_reload {Type I LastRead 0 FirstWrite -1}
		Sal_10_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln65_4 {Type I LastRead 0 FirstWrite -1}
		Sbl_5_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln65_5 {Type I LastRead 0 FirstWrite -1}
		Ah_25_out {Type O LastRead -1 FirstWrite 0}
		Ah_24_out {Type O LastRead -1 FirstWrite 0}
		Bh_25_out {Type O LastRead -1 FirstWrite 0}
		Bh_24_out {Type O LastRead -1 FirstWrite 0}
		Bh_38_out {Type O LastRead -1 FirstWrite 0}
		Ah_38_out {Type O LastRead -1 FirstWrite 0}
		B_32_out {Type O LastRead -1 FirstWrite 0}
		A_31_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_2 {
		shl_ln1 {Type I LastRead 0 FirstWrite -1}
		z1_7_reload {Type I LastRead 0 FirstWrite -1}
		z1_6_reload {Type I LastRead 0 FirstWrite -1}
		z1_5_reload {Type I LastRead 0 FirstWrite -1}
		z1_4_reload {Type I LastRead 0 FirstWrite -1}
		W1v_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_103_210 {
		shl_ln81_1 {Type I LastRead 0 FirstWrite -1}
		z1_16_reload {Type I LastRead 0 FirstWrite -1}
		z1_15_reload {Type I LastRead 0 FirstWrite -1}
		z1_14_reload {Type I LastRead 0 FirstWrite -1}
		z1_13_reload {Type I LastRead 0 FirstWrite -1}
		W1v_2_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_215 {
		add_ln81_7 {Type I LastRead 0 FirstWrite -1}
		P_7 {Type I LastRead 0 FirstWrite -1}
		z2_19_out {Type O LastRead -1 FirstWrite 0}
		z2_18_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_118 {
		Sal_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_29_reload {Type I LastRead 0 FirstWrite -1}
		A_11_out {Type O LastRead -1 FirstWrite 0}
		B_10_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_231 {
		shl_ln81_3 {Type I LastRead 0 FirstWrite -1}
		P_11 {Type I LastRead 0 FirstWrite -1}
		z1_31_out {Type O LastRead -1 FirstWrite 0}
		z1_32_out {Type O LastRead -1 FirstWrite 0}
		z1_33_out {Type O LastRead -1 FirstWrite 0}
		z1_34_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_132 {
		z0_23_reload {Type I LastRead 0 FirstWrite -1}
		z0_22_reload {Type I LastRead 0 FirstWrite -1}
		z2_24_reload {Type I LastRead 0 FirstWrite -1}
		z2_23_reload {Type I LastRead 0 FirstWrite -1}
		W2_8_out {Type O LastRead -1 FirstWrite 1}
		W0_8_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_238 {
		shl_ln81_4 {Type I LastRead 0 FirstWrite -1}
		P_14 {Type I LastRead 0 FirstWrite -1}
		z1_40_out {Type O LastRead -1 FirstWrite 0}
		z1_41_out {Type O LastRead -1 FirstWrite 0}
		z1_42_out {Type O LastRead -1 FirstWrite 0}
		z1_43_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_139 {
		z0_36_reload {Type I LastRead 0 FirstWrite -1}
		z0_35_reload {Type I LastRead 0 FirstWrite -1}
		z2_28_reload {Type I LastRead 0 FirstWrite -1}
		z2_27_reload {Type I LastRead 0 FirstWrite -1}
		W2_10_out {Type O LastRead -1 FirstWrite 1}
		W0_10_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_244 {
		P_15 {Type I LastRead 0 FirstWrite -1}
		z0_40_out {Type O LastRead -1 FirstWrite 0}
		z0_39_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_145 {
		Ah_36 {Type I LastRead 0 FirstWrite -1}
		Bh_36 {Type I LastRead 0 FirstWrite -1}
		A_22_out {Type O LastRead -1 FirstWrite 0}
		B_21_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_147 {
		add_ln56_7_cast {Type I LastRead 0 FirstWrite -1}
		p_reload99 {Type I LastRead 0 FirstWrite -1}
		Ah_37_cast {Type I LastRead 0 FirstWrite -1}
		Sal_36_out {Type O LastRead -1 FirstWrite 0}
		carry_11_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_148 {
		add_ln56_7_cast {Type I LastRead 0 FirstWrite -1}
		p_reload102 {Type I LastRead 0 FirstWrite -1}
		zext_ln56_1 {Type I LastRead 0 FirstWrite -1}
		Sbl_33_out {Type O LastRead -1 FirstWrite 0}
		carry_13_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_261 {
		P_18 {Type I LastRead 0 FirstWrite -1}
		z0_44_out {Type O LastRead -1 FirstWrite 0}
		z0_43_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_262 {
		P_19 {Type I LastRead 0 FirstWrite -1}
		z2_46_out {Type O LastRead -1 FirstWrite 0}
		z2_45_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_163 {
		Sal_37 {Type I LastRead 0 FirstWrite -1}
		Sbl_34 {Type I LastRead 0 FirstWrite -1}
		A_28_out {Type O LastRead -1 FirstWrite 0}
		B_27_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_168 {
		A_31_reload {Type I LastRead 0 FirstWrite -1}
		B_32_reload {Type I LastRead 0 FirstWrite -1}
		A_30_out {Type O LastRead -1 FirstWrite 0}
		B_29_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_170 {
		Ah_38_reload {Type I LastRead 0 FirstWrite -1}
		Bh_38_reload {Type I LastRead 0 FirstWrite -1}
		A_32_out {Type O LastRead -1 FirstWrite 0}
		B_31_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_172 {
		sub_ln56_cast {Type I LastRead 0 FirstWrite -1}
		A_31_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln56_2 {Type I LastRead 0 FirstWrite -1}
		Sal_38_out {Type O LastRead -1 FirstWrite 0}
		carry_19_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_173 {
		sub_ln56_cast {Type I LastRead 0 FirstWrite -1}
		B_32_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln56_3 {Type I LastRead 0 FirstWrite -1}
		Sbl_35_out {Type O LastRead -1 FirstWrite 0}
		carry_21_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_179 {
		or_ln {Type I LastRead 0 FirstWrite -1}
		Al_23_reload {Type I LastRead 0 FirstWrite -1}
		Al_24_reload {Type I LastRead 0 FirstWrite -1}
		Ah_24_reload {Type I LastRead 0 FirstWrite -1}
		Ah_25_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2394526_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1392523_out {Type O LastRead -1 FirstWrite 0}
		mux_case_0390521_out {Type O LastRead -1 FirstWrite 0}
		Sal_39_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_180 {
		or_ln {Type I LastRead 0 FirstWrite -1}
		Bl_23_reload {Type I LastRead 0 FirstWrite -1}
		Bl_24_reload {Type I LastRead 0 FirstWrite -1}
		Bh_24_reload {Type I LastRead 0 FirstWrite -1}
		Bh_25_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2472534_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1470531_out {Type O LastRead -1 FirstWrite 0}
		mux_case_0468529_out {Type O LastRead -1 FirstWrite 0}
		Sbl_36_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_3 {
		Pacc {Type I LastRead 0 FirstWrite -1}
		z0_8_out {Type O LastRead -1 FirstWrite 0}
		z0_7_out {Type O LastRead -1 FirstWrite 0}
		z0_6_out {Type O LastRead -1 FirstWrite 0}
		z0_5_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_311 {
		Pacc_1 {Type I LastRead 0 FirstWrite -1}
		z2_12_out {Type O LastRead -1 FirstWrite 0}
		z2_11_out {Type O LastRead -1 FirstWrite 0}
		z2_10_out {Type O LastRead -1 FirstWrite 0}
		z2_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_219 {
		shl_ln81_2 {Type I LastRead 0 FirstWrite -1}
		P_8 {Type I LastRead 0 FirstWrite -1}
		z1_24_out {Type O LastRead -1 FirstWrite 0}
		z1_23_out {Type O LastRead -1 FirstWrite 0}
		z1_22_out {Type O LastRead -1 FirstWrite 0}
		z1_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_120 {
		z0_19_reload {Type I LastRead 0 FirstWrite -1}
		z0_18_reload {Type I LastRead 0 FirstWrite -1}
		z2_19_reload {Type I LastRead 0 FirstWrite -1}
		z2_18_reload {Type I LastRead 0 FirstWrite -1}
		W2_4_out {Type O LastRead -1 FirstWrite 1}
		W0_4_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_103_233 {
		shl_ln81_3 {Type I LastRead 0 FirstWrite -1}
		z1_34_reload {Type I LastRead 0 FirstWrite -1}
		z1_33_reload {Type I LastRead 0 FirstWrite -1}
		z1_32_reload {Type I LastRead 0 FirstWrite -1}
		z1_31_reload {Type I LastRead 0 FirstWrite -1}
		W1v_8_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_103_240 {
		shl_ln81_4 {Type I LastRead 0 FirstWrite -1}
		z1_43_reload {Type I LastRead 0 FirstWrite -1}
		z1_42_reload {Type I LastRead 0 FirstWrite -1}
		z1_41_reload {Type I LastRead 0 FirstWrite -1}
		z1_40_reload {Type I LastRead 0 FirstWrite -1}
		W1v_10_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_246 {
		add_ln81_17 {Type I LastRead 0 FirstWrite -1}
		P_16 {Type I LastRead 0 FirstWrite -1}
		z2_41_out {Type O LastRead -1 FirstWrite 0}
		z2_40_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_149 {
		Sal_36_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_33_reload {Type I LastRead 0 FirstWrite -1}
		A_24_out {Type O LastRead -1 FirstWrite 0}
		B_23_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_264 {
		shl_ln81_6 {Type I LastRead 0 FirstWrite -1}
		P_20 {Type I LastRead 0 FirstWrite -1}
		z1_58_out {Type O LastRead -1 FirstWrite 0}
		z1_59_out {Type O LastRead -1 FirstWrite 0}
		z1_60_out {Type O LastRead -1 FirstWrite 0}
		z1_61_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_165 {
		z0_44_reload {Type I LastRead 0 FirstWrite -1}
		z0_43_reload {Type I LastRead 0 FirstWrite -1}
		z2_46_reload {Type I LastRead 0 FirstWrite -1}
		z2_45_reload {Type I LastRead 0 FirstWrite -1}
		W2_16_out {Type O LastRead -1 FirstWrite 1}
		W0_16_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_269 {
		P_21 {Type I LastRead 0 FirstWrite -1}
		z0_57_out {Type O LastRead -1 FirstWrite 0}
		z0_56_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_271 {
		shl_ln81_7 {Type I LastRead 0 FirstWrite -1}
		P_22 {Type I LastRead 0 FirstWrite -1}
		z2_50_out {Type O LastRead -1 FirstWrite 0}
		z2_49_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_174 {
		Sal_38_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_35_reload {Type I LastRead 0 FirstWrite -1}
		A_34_out {Type O LastRead -1 FirstWrite 0}
		B_33_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_181 {
		Al_37 {Type I LastRead 0 FirstWrite -1}
		Bl_37 {Type I LastRead 0 FirstWrite -1}
		A_36_out {Type O LastRead -1 FirstWrite 0}
		B_36_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_221 {
		shl_ln103_cast {Type I LastRead 0 FirstWrite -1}
		z1_reload {Type I LastRead 0 FirstWrite -1}
		z1_22_reload {Type I LastRead 0 FirstWrite -1}
		z1_23_reload {Type I LastRead 0 FirstWrite -1}
		z1_24_reload {Type I LastRead 0 FirstWrite -1}
		W1v_4_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_97_123 {
		z0_5_reload {Type I LastRead 0 FirstWrite -1}
		z0_6_reload {Type I LastRead 0 FirstWrite -1}
		z0_7_reload {Type I LastRead 0 FirstWrite -1}
		z0_8_reload {Type I LastRead 0 FirstWrite -1}
		z2_9_reload {Type I LastRead 0 FirstWrite -1}
		z2_10_reload {Type I LastRead 0 FirstWrite -1}
		z2_11_reload {Type I LastRead 0 FirstWrite -1}
		z2_12_reload {Type I LastRead 0 FirstWrite -1}
		W2_6_out {Type O LastRead -1 FirstWrite 1}
		W0_6_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_113_334 {
		Pacc_4 {Type I LastRead 0 FirstWrite -1}
		z0_29_out {Type O LastRead -1 FirstWrite 0}
		z0_28_out {Type O LastRead -1 FirstWrite 0}
		z0_27_out {Type O LastRead -1 FirstWrite 0}
		z0_26_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_341 {
		Pacc_5 {Type I LastRead 0 FirstWrite -1}
		z2_34_out {Type O LastRead -1 FirstWrite 0}
		z2_33_out {Type O LastRead -1 FirstWrite 0}
		z2_32_out {Type O LastRead -1 FirstWrite 0}
		z2_31_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_250 {
		shl_ln81_5 {Type I LastRead 0 FirstWrite -1}
		P_17 {Type I LastRead 0 FirstWrite -1}
		z1_49_out {Type O LastRead -1 FirstWrite 0}
		z1_50_out {Type O LastRead -1 FirstWrite 0}
		z1_51_out {Type O LastRead -1 FirstWrite 0}
		z1_52_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_151 {
		z0_40_reload {Type I LastRead 0 FirstWrite -1}
		z0_39_reload {Type I LastRead 0 FirstWrite -1}
		z2_41_reload {Type I LastRead 0 FirstWrite -1}
		z2_40_reload {Type I LastRead 0 FirstWrite -1}
		W2_12_out {Type O LastRead -1 FirstWrite 1}
		W0_12_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_103_266 {
		shl_ln81_6 {Type I LastRead 0 FirstWrite -1}
		z1_61_reload {Type I LastRead 0 FirstWrite -1}
		z1_60_reload {Type I LastRead 0 FirstWrite -1}
		z1_59_reload {Type I LastRead 0 FirstWrite -1}
		z1_58_reload {Type I LastRead 0 FirstWrite -1}
		W1v_16_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_275 {
		shl_ln81_8 {Type I LastRead 0 FirstWrite -1}
		P_23 {Type I LastRead 0 FirstWrite -1}
		z1_67_out {Type O LastRead -1 FirstWrite 0}
		z1_68_out {Type O LastRead -1 FirstWrite 0}
		z1_69_out {Type O LastRead -1 FirstWrite 0}
		z1_70_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_176 {
		z0_57_reload {Type I LastRead 0 FirstWrite -1}
		z0_56_reload {Type I LastRead 0 FirstWrite -1}
		z2_50_reload {Type I LastRead 0 FirstWrite -1}
		z2_49_reload {Type I LastRead 0 FirstWrite -1}
		W2_18_out {Type O LastRead -1 FirstWrite 1}
		W0_18_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_113_322 {
		shl_ln81_9 {Type I LastRead 0 FirstWrite -1}
		Pacc_2 {Type I LastRead 0 FirstWrite -1}
		z1_1 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_252 {
		shl_ln103_1_cast {Type I LastRead 0 FirstWrite -1}
		z1_52_reload {Type I LastRead 0 FirstWrite -1}
		z1_51_reload {Type I LastRead 0 FirstWrite -1}
		z1_50_reload {Type I LastRead 0 FirstWrite -1}
		z1_49_reload {Type I LastRead 0 FirstWrite -1}
		W1v_12_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_97_154 {
		z0_26_reload {Type I LastRead 0 FirstWrite -1}
		z0_27_reload {Type I LastRead 0 FirstWrite -1}
		z0_28_reload {Type I LastRead 0 FirstWrite -1}
		z0_29_reload {Type I LastRead 0 FirstWrite -1}
		z2_31_reload {Type I LastRead 0 FirstWrite -1}
		z2_32_reload {Type I LastRead 0 FirstWrite -1}
		z2_33_reload {Type I LastRead 0 FirstWrite -1}
		z2_34_reload {Type I LastRead 0 FirstWrite -1}
		W2_14_out {Type O LastRead -1 FirstWrite 1}
		W0_14_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_113_367 {
		Pacc_8 {Type I LastRead 0 FirstWrite -1}
		z0_50_out {Type O LastRead -1 FirstWrite 0}
		z0_49_out {Type O LastRead -1 FirstWrite 0}
		z0_48_out {Type O LastRead -1 FirstWrite 0}
		z0_47_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_277 {
		shl_ln103_2_cast {Type I LastRead 0 FirstWrite -1}
		z1_70_reload {Type I LastRead 0 FirstWrite -1}
		z1_69_reload {Type I LastRead 0 FirstWrite -1}
		z1_68_reload {Type I LastRead 0 FirstWrite -1}
		z1_67_reload {Type I LastRead 0 FirstWrite -1}
		W1v_18_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_103_224 {
		shl_ln113_cast {Type I LastRead 0 FirstWrite -1}
		z1_1 {Type I LastRead 0 FirstWrite -1}
		W1v_6_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_353 {
		shl_ln81_s {Type I LastRead 0 FirstWrite -1}
		Pacc_6 {Type I LastRead 0 FirstWrite -1}
		z1_2 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_378 {
		or_ln1 {Type I LastRead 0 FirstWrite -1}
		Pacc_9 {Type I LastRead 0 FirstWrite -1}
		z2_54_out {Type O LastRead -1 FirstWrite 0}
		z2_55_out {Type O LastRead -1 FirstWrite 0}
		z2_56_out {Type O LastRead -1 FirstWrite 0}
		z2_57_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_325 {
		Pacc_3 {Type I LastRead 0 FirstWrite -1}
		z0 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_255 {
		shl_ln113_1_cast {Type I LastRead 0 FirstWrite -1}
		z1_2 {Type I LastRead 0 FirstWrite -1}
		W1v_14_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_356 {
		Pacc_7 {Type I LastRead 0 FirstWrite -1}
		z2 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_282 {
		mul16_i_i475_i_i_i {Type I LastRead 0 FirstWrite -1}
		P_24 {Type I LastRead 0 FirstWrite -1}
		z0_61_out {Type O LastRead -1 FirstWrite 0}
		z0_60_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_183 {
		icmp_ln74 {Type I LastRead 0 FirstWrite -1}
		Ah_39 {Type I LastRead 0 FirstWrite -1}
		Bh_39 {Type I LastRead 0 FirstWrite -1}
		A_38_out {Type O LastRead -1 FirstWrite 1}
		B_38_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_81_284 {
		shl_ln81_10 {Type I LastRead 0 FirstWrite -1}
		P_25 {Type I LastRead 0 FirstWrite -1}
		z2_64_out {Type O LastRead -1 FirstWrite 0}
		z2_63_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_185 {
		umax19 {Type I LastRead 0 FirstWrite -1}
		n_lo_1 {Type I LastRead 0 FirstWrite -1}
		Al_37 {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		Ah_39 {Type I LastRead 0 FirstWrite -1}
		Sal_40_out {Type O LastRead -1 FirstWrite 0}
		carry_27_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_56_186 {
		umax19 {Type I LastRead 0 FirstWrite -1}
		n_lo_1 {Type I LastRead 0 FirstWrite -1}
		Bl_37 {Type I LastRead 0 FirstWrite -1}
		n_hi {Type I LastRead 0 FirstWrite -1}
		Bh_39 {Type I LastRead 0 FirstWrite -1}
		Sbl_37_out {Type O LastRead -1 FirstWrite 0}
		carry_29_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_97_189 {
		mul16_i_i475_i_i_i {Type I LastRead 0 FirstWrite -1}
		z0_63 {Type I LastRead 0 FirstWrite -1}
		z0_62 {Type I LastRead 0 FirstWrite -1}
		z2_69 {Type I LastRead 0 FirstWrite -1}
		z2_68 {Type I LastRead 0 FirstWrite -1}
		W2_20_out {Type O LastRead -1 FirstWrite 1}
		W0_20_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_97_192 {
		z0_47_reload {Type I LastRead 0 FirstWrite -1}
		z0_48_reload {Type I LastRead 0 FirstWrite -1}
		z0_49_reload {Type I LastRead 0 FirstWrite -1}
		z0_50_reload {Type I LastRead 0 FirstWrite -1}
		z2_57_reload {Type I LastRead 0 FirstWrite -1}
		z2_56_reload {Type I LastRead 0 FirstWrite -1}
		z2_55_reload {Type I LastRead 0 FirstWrite -1}
		z2_54_reload {Type I LastRead 0 FirstWrite -1}
		W2_22_out {Type O LastRead -1 FirstWrite 1}
		W0_22_out {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_VITIS_LOOP_97_195 {
		z0 {Type I LastRead 0 FirstWrite -1}
		z2 {Type I LastRead 0 FirstWrite -1}
		W2_24_out {Type O LastRead -1 FirstWrite 0}
		W0_24_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_74_187 {
		Sal_40_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_37_reload {Type I LastRead 0 FirstWrite -1}
		A_40_out {Type O LastRead -1 FirstWrite 0}
		B_40_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_81_288 {
		shl_ln81_11 {Type I LastRead 0 FirstWrite -1}
		P_26 {Type I LastRead 0 FirstWrite -1}
		z1_76_out {Type O LastRead -1 FirstWrite 0}
		z1_77_out {Type O LastRead -1 FirstWrite 0}
		z1_78_out {Type O LastRead -1 FirstWrite 0}
		z1_79_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_290 {
		shl_ln103_3_cast {Type I LastRead 0 FirstWrite -1}
		z1_79_reload {Type I LastRead 0 FirstWrite -1}
		z1_78_reload {Type I LastRead 0 FirstWrite -1}
		z1_77_reload {Type I LastRead 0 FirstWrite -1}
		z1_76_reload {Type I LastRead 0 FirstWrite -1}
		W1v_20_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_391 {
		shl_ln113_2 {Type I LastRead 0 FirstWrite -1}
		Pacc_10 {Type I LastRead 0 FirstWrite -1}
		z1_3 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_293 {
		shl_ln113_2_cast {Type I LastRead 0 FirstWrite -1}
		z1_3 {Type I LastRead 0 FirstWrite -1}
		W1v_22_out {Type O LastRead -1 FirstWrite 2}}
	mul_Pipeline_VITIS_LOOP_113_394 {
		shl_ln113_3 {Type I LastRead 0 FirstWrite -1}
		Pacc_11 {Type I LastRead 0 FirstWrite -1}
		z1_17 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_103_296 {
		shl_ln113_3 {Type I LastRead 0 FirstWrite -1}
		z1_17 {Type I LastRead 0 FirstWrite -1}
		W1v_24_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_113_397 {
		Pacc_12 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "193", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "193", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { bram {  { a_Addr_A MemPortADDR2 1 32 }  { a_EN_A MemPortCE2 1 1 }  { a_WEN_A MemPortWE2 1 8 }  { a_Din_A MemPortDIN2 1 64 }  { a_Dout_A MemPortDOUT2 0 64 } } }
	b { bram {  { b_Addr_A MemPortADDR2 1 32 }  { b_EN_A MemPortCE2 1 1 }  { b_WEN_A MemPortWE2 1 8 }  { b_Din_A MemPortDIN2 1 64 }  { b_Dout_A MemPortDOUT2 0 64 } } }
	c { bram {  { c_Addr_A MemPortADDR2 1 32 }  { c_EN_A MemPortCE2 1 1 }  { c_WEN_A MemPortWE2 1 8 }  { c_Din_A MemPortDIN2 1 64 }  { c_Dout_A MemPortDOUT2 0 64 } } }
}
