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
set cdfgNum 51
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
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "123", "EstimateLatencyMax" : "131",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "20", "24", "26", "28", "30", "32", "36", "40", "43", "46", "50", "54", "58", "60", "62", "64", "68", "71", "75", "78", "81", "85", "89", "93", "95", "97", "99", "102", "106", "109", "112", "116", "119", "121", "124", "128", "131", "133", "136", "138", "140", "143", "144"],
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
					{"ID" : "8", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_151_1_fu_664", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "10", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_157_2_fu_680", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_151_1_fu_664", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "10", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_157_2_fu_680", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_113_338_fu_1136", "Port" : "c", "Inst_start_state" : "28", "Inst_end_state" : "29"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.z1_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.z1_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.z1_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.z0_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.z2_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.z1_3_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_1_fu_664", "Parent" : "1", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_1_fu_664.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_2_fu_680", "Parent" : "1", "Child" : ["11"],
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_2_fu_680.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_11_fu_696", "Parent" : "1", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_11_fu_696.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_22_fu_708", "Parent" : "1", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_22_fu_708.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_720", "Parent" : "1", "Child" : ["17", "18", "19"],
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_720.partset_128ns_128ns_64ns_32ns_128_1_1_U33", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_720.partset_128ns_128ns_64ns_32ns_128_1_1_U34", "Parent" : "16"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_1_fu_720.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_13_fu_730", "Parent" : "1", "Child" : ["21", "22", "23"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_13_fu_730.partset_128ns_128ns_64ns_32ns_128_1_1_U49", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_13_fu_730.partset_128ns_128ns_64ns_32ns_128_1_1_U50", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_13_fu_730.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_1_fu_740", "Parent" : "1", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_1_fu_740.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_15_fu_751", "Parent" : "1", "Child" : ["27"],
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
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_15_fu_751.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_18_fu_762", "Parent" : "1", "Child" : ["29"],
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
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_18_fu_762.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_29_fu_774", "Parent" : "1", "Child" : ["31"],
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_29_fu_774.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_121_fu_786", "Parent" : "1", "Child" : ["33", "34", "35"],
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
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_121_fu_786.sparsemux_9_2_64_1_1_U197", "Parent" : "32"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_121_fu_786.sparsemux_9_2_64_1_1_U198", "Parent" : "32"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_121_fu_786.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_122_fu_803", "Parent" : "1", "Child" : ["37", "38", "39"],
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
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_122_fu_803.sparsemux_9_2_64_1_1_U212", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_122_fu_803.sparsemux_9_2_64_1_1_U213", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_122_fu_803.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_820", "Parent" : "1", "Child" : ["41", "42"],
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
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_820.partselect_64ns_256ns_32ns_64_1_1_U42", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_2_fu_820.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_24_fu_829", "Parent" : "1", "Child" : ["44", "45"],
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
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_24_fu_829.partselect_64ns_256ns_32ns_64_1_1_U57", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_24_fu_829.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_16_fu_838", "Parent" : "1", "Child" : ["47", "48", "49"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_16_fu_838.partset_128ns_128ns_64ns_32ns_128_1_1_U77", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_16_fu_838.partset_128ns_128ns_64ns_32ns_128_1_1_U78", "Parent" : "46"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_16_fu_838.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_110_fu_848", "Parent" : "1", "Child" : ["51", "52", "53"],
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
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_110_fu_848.partset_128ns_128ns_64ns_32ns_128_1_1_U125", "Parent" : "50"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_110_fu_848.partset_128ns_128ns_64ns_32ns_128_1_1_U126", "Parent" : "50"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_110_fu_848.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_112_fu_858", "Parent" : "1", "Child" : ["55", "56", "57"],
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
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_112_fu_858.partset_128ns_128ns_64ns_32ns_128_1_1_U139", "Parent" : "54"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_112_fu_858.partset_128ns_128ns_64ns_32ns_128_1_1_U140", "Parent" : "54"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_112_fu_858.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_114_fu_868", "Parent" : "1", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_114_fu_868.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_115_fu_879", "Parent" : "1", "Child" : ["61"],
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
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_115_fu_879.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_123_fu_890", "Parent" : "1", "Child" : ["63"],
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
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_151_123_fu_890.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_224_fu_902", "Parent" : "1", "Child" : ["65", "66", "67"],
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
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_224_fu_902.sparsemux_7_2_64_1_1_U235", "Parent" : "64"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_224_fu_902.sparsemux_7_2_64_1_1_U236", "Parent" : "64"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_157_224_fu_902.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_27_fu_917", "Parent" : "1", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_27_fu_917.partselect_64ns_256ns_32ns_64_1_1_U85", "Parent" : "68"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_27_fu_917.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_924", "Parent" : "1", "Child" : ["72", "73", "74"],
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
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_924.sparsemux_9_2_64_1_1_U89", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_924.sparsemux_9_2_64_1_1_U90", "Parent" : "71"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_1_fu_924.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_211_fu_938", "Parent" : "1", "Child" : ["76", "77"],
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
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_211_fu_938.partselect_64ns_256ns_32ns_64_1_1_U133", "Parent" : "75"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_211_fu_938.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_213_fu_947", "Parent" : "1", "Child" : ["79", "80"],
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
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_213_fu_947.partselect_64ns_256ns_32ns_64_1_1_U147", "Parent" : "78"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_213_fu_947.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_116_fu_956", "Parent" : "1", "Child" : ["82", "83", "84"],
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
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_116_fu_956.partset_128ns_128ns_64ns_32ns_128_1_1_U167", "Parent" : "81"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_116_fu_956.partset_128ns_128ns_64ns_32ns_128_1_1_U168", "Parent" : "81"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_116_fu_956.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_125_fu_966", "Parent" : "1", "Child" : ["86", "87", "88"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_125_fu_966.partset_128ns_128ns_64ns_32ns_128_1_1_U249", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_125_fu_966.partset_128ns_128ns_64ns_32ns_128_1_1_U250", "Parent" : "85"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_125_fu_966.flow_control_loop_pipe_sequential_init_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_127_fu_976", "Parent" : "1", "Child" : ["90", "91", "92"],
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
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_127_fu_976.partset_128ns_128ns_64ns_32ns_128_1_1_U263", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_127_fu_976.partset_128ns_128ns_64ns_32ns_128_1_1_U264", "Parent" : "89"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_127_fu_976.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_129_fu_986", "Parent" : "1", "Child" : ["94"],
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
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_129_fu_986.flow_control_loop_pipe_sequential_init_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_130_fu_998", "Parent" : "1", "Child" : ["96"],
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
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_56_130_fu_998.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_2_fu_1010", "Parent" : "1", "Child" : ["98"],
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
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_2_fu_1010.flow_control_loop_pipe_sequential_init_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_217_fu_1017", "Parent" : "1", "Child" : ["100", "101"],
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
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_217_fu_1017.partselect_64ns_256ns_32ns_64_1_1_U175", "Parent" : "99"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_217_fu_1017.flow_control_loop_pipe_sequential_init_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_118_fu_1024", "Parent" : "1", "Child" : ["103", "104", "105"],
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
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_118_fu_1024.sparsemux_9_2_64_1_1_U179", "Parent" : "102"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_118_fu_1024.sparsemux_9_2_64_1_1_U180", "Parent" : "102"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_118_fu_1024.flow_control_loop_pipe_sequential_init_U", "Parent" : "102"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_226_fu_1038", "Parent" : "1", "Child" : ["107", "108"],
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
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_226_fu_1038.partselect_64ns_256ns_32ns_64_1_1_U257", "Parent" : "106"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_226_fu_1038.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_228_fu_1047", "Parent" : "1", "Child" : ["110", "111"],
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
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_228_fu_1047.partselect_64ns_256ns_32ns_64_1_1_U271", "Parent" : "109"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_228_fu_1047.flow_control_loop_pipe_sequential_init_U", "Parent" : "109"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_131_fu_1057", "Parent" : "1", "Child" : ["113", "114", "115"],
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
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_131_fu_1057.partset_128ns_128ns_64ns_32ns_128_1_1_U294", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_131_fu_1057.partset_128ns_128ns_64ns_32ns_128_1_1_U295", "Parent" : "112"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_74_131_fu_1057.flow_control_loop_pipe_sequential_init_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_1067", "Parent" : "1", "Child" : ["117", "118"],
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
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_1067.partselect_64ns_1056s_32ns_64_1_1_U105", "Parent" : "116"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_3_fu_1067.flow_control_loop_pipe_sequential_init_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_219_fu_1073", "Parent" : "1", "Child" : ["120"],
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
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_219_fu_1073.flow_control_loop_pipe_sequential_init_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_232_fu_1080", "Parent" : "1", "Child" : ["122", "123"],
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
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_232_fu_1080.partselect_64ns_256ns_32ns_64_1_1_U302", "Parent" : "121"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_81_232_fu_1080.flow_control_loop_pipe_sequential_init_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_133_fu_1087", "Parent" : "1", "Child" : ["125", "126", "127"],
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
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_133_fu_1087.sparsemux_9_2_64_1_1_U306", "Parent" : "124"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_133_fu_1087.sparsemux_9_2_64_1_1_U307", "Parent" : "124"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_133_fu_1087.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_320_fu_1101", "Parent" : "1", "Child" : ["129", "130"],
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
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_320_fu_1101.partselect_64ns_1056s_32ns_64_1_1_U194", "Parent" : "128"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_320_fu_1101.flow_control_loop_pipe_sequential_init_U", "Parent" : "128"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_234_fu_1107", "Parent" : "1", "Child" : ["132"],
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
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_234_fu_1107.flow_control_loop_pipe_sequential_init_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_335_fu_1114", "Parent" : "1", "Child" : ["134", "135"],
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
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_335_fu_1114.partselect_64ns_1056s_32ns_64_1_1_U321", "Parent" : "133"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_335_fu_1114.flow_control_loop_pipe_sequential_init_U", "Parent" : "133"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_136_fu_1121", "Parent" : "1", "Child" : ["137"],
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
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_97_136_fu_1121.flow_control_loop_pipe_sequential_init_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_237_fu_1129", "Parent" : "1", "Child" : ["139"],
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
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_103_237_fu_1129.flow_control_loop_pipe_sequential_init_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_338_fu_1136", "Parent" : "1", "Child" : ["141", "142"],
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
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_338_fu_1136.partselect_64ns_1056s_32ns_64_1_1_U332", "Parent" : "140"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_113_338_fu_1136.flow_control_loop_pipe_sequential_init_U", "Parent" : "140"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.mul_128ns_128ns_256_1_1_U334", "Parent" : "1"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_fu_18.mul_128ns_128ns_256_1_1_U335", "Parent" : "1"}]}


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
	{"Name" : "Latency", "Min" : "123", "Max" : "131"}
	, {"Name" : "Interval", "Min" : "123", "Max" : "131"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { bram {  { a_Addr_A MemPortADDR2 1 32 }  { a_EN_A MemPortCE2 1 1 }  { a_WEN_A MemPortWE2 1 8 }  { a_Din_A MemPortDIN2 1 64 }  { a_Dout_A MemPortDOUT2 0 64 } } }
	b { bram {  { b_Addr_A MemPortADDR2 1 32 }  { b_EN_A MemPortCE2 1 1 }  { b_WEN_A MemPortWE2 1 8 }  { b_Din_A MemPortDIN2 1 64 }  { b_Dout_A MemPortDOUT2 0 64 } } }
	c { bram {  { c_Addr_A MemPortADDR2 1 32 }  { c_EN_A MemPortCE2 1 1 }  { c_WEN_A MemPortWE2 1 8 }  { c_Din_A MemPortDIN2 1 64 }  { c_Dout_A MemPortDOUT2 0 64 } } }
}
