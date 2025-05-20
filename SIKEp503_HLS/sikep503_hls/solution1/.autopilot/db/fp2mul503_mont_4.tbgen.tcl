set moduleName fp2mul503_mont_4
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
set cdfgNum 712
set C_modelName {fp2mul503_mont.4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict PKB { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ PKB int 64 regular {array 48 { 1 1 } 1 1 }  }
	{ c int 64 regular {array 16 { 2 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "PKB", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ PKB_address0 sc_out sc_lv 6 signal 0 } 
	{ PKB_ce0 sc_out sc_logic 1 signal 0 } 
	{ PKB_q0 sc_in sc_lv 64 signal 0 } 
	{ PKB_address1 sc_out sc_lv 6 signal 0 } 
	{ PKB_ce1 sc_out sc_logic 1 signal 0 } 
	{ PKB_q1 sc_in sc_lv 64 signal 0 } 
	{ c_address0 sc_out sc_lv 4 signal 1 } 
	{ c_ce0 sc_out sc_logic 1 signal 1 } 
	{ c_we0 sc_out sc_logic 1 signal 1 } 
	{ c_d0 sc_out sc_lv 64 signal 1 } 
	{ c_q0 sc_in sc_lv 64 signal 1 } 
	{ grp_fu_1254_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1254_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1254_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1254_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1258_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1258_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1258_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1258_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1262_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1262_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1262_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1262_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1266_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1266_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1266_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_1266_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "PKB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "PKB", "role": "address0" }} , 
 	{ "name": "PKB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PKB", "role": "ce0" }} , 
 	{ "name": "PKB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "PKB", "role": "q0" }} , 
 	{ "name": "PKB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "PKB", "role": "address1" }} , 
 	{ "name": "PKB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PKB", "role": "ce1" }} , 
 	{ "name": "PKB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "PKB", "role": "q1" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we0" }} , 
 	{ "name": "c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "d0" }} , 
 	{ "name": "c_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "q0" }} , 
 	{ "name": "grp_fu_1254_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1254_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1254_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1254_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1254_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1254_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1254_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1254_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1258_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1258_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1258_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1258_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1258_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1258_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1258_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1258_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1262_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1262_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1262_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1262_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1262_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1262_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1262_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1262_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1266_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1266_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1266_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1266_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1266_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_1266_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1266_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1266_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "11", "16", "18", "20", "22", "25", "27", "40", "49"],
		"CDFG" : "fp2mul503_mont_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "942", "EstimateLatencyMax" : "1440",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_mp_mul_8_fu_60", "Port" : "PKB", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "11", "SubInstance" : "grp_mp_mul_9_fu_68", "Port" : "PKB", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "16", "SubInstance" : "grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1_fu_75", "Port" : "PKB", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "20", "SubInstance" : "grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1167_fu_90", "Port" : "PKB", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_rdc_mont_140_fu_111", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_199_1_fu_97", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_rdc_mont_140_fu_111", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tt1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tt2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tt3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_8_fu_60", "Parent" : "0", "Child" : ["7", "9"],
		"CDFG" : "mp_mul_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "227", "EstimateLatencyMax" : "325",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_mp_mul_8_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "PKB", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "9", "SubInstance" : "grp_mp_mul_8_Pipeline_VITIS_LOOP_157_4_fu_125", "Port" : "PKB", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_8_fu_60.grp_mp_mul_8_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "6", "Child" : ["8"],
		"CDFG" : "mp_mul_8_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_65_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_8_fu_60.grp_mp_mul_8_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_8_fu_60.grp_mp_mul_8_Pipeline_VITIS_LOOP_157_4_fu_125", "Parent" : "6", "Child" : ["10"],
		"CDFG" : "mp_mul_8_Pipeline_VITIS_LOOP_157_4",
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
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln156_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_8_fu_60.grp_mp_mul_8_Pipeline_VITIS_LOOP_157_4_fu_125.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_9_fu_68", "Parent" : "0", "Child" : ["12", "14"],
		"CDFG" : "mp_mul_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "227", "EstimateLatencyMax" : "325",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_mp_mul_9_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "PKB", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "14", "SubInstance" : "grp_mp_mul_9_Pipeline_VITIS_LOOP_157_4_fu_125", "Port" : "PKB", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_9_fu_68.grp_mp_mul_9_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "11", "Child" : ["13"],
		"CDFG" : "mp_mul_9_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_59_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_9_fu_68.grp_mp_mul_9_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_9_fu_68.grp_mp_mul_9_Pipeline_VITIS_LOOP_157_4_fu_125", "Parent" : "11", "Child" : ["15"],
		"CDFG" : "mp_mul_9_Pipeline_VITIS_LOOP_157_4",
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
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln156_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_9_fu_68.grp_mp_mul_9_Pipeline_VITIS_LOOP_157_4_fu_125.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1_fu_75", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_169_1_fu_82", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "fp2mul503_mont_4_Pipeline_VITIS_LOOP_169_1",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_169_1_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1167_fu_90", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1167",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1167_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_199_1_fu_97", "Parent" : "0", "Child" : ["23", "24"],
		"CDFG" : "fp2mul503_mont_4_Pipeline_VITIS_LOOP_199_1",
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
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_199_1_fu_97.p503_1_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_199_1_fu_97.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1168_fu_105", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1168",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1168_fu_105.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111", "Parent" : "0", "Child" : ["28", "30", "33", "36", "37", "38", "39"],
		"CDFG" : "rdc_mont_140",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "30", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "33", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "33", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111.grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190", "Parent" : "27", "Child" : ["29"],
		"CDFG" : "rdc_mont_140_Pipeline_VITIS_LOOP_180_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111.grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Parent" : "27", "Child" : ["31", "32"],
		"CDFG" : "rdc_mont_140_Pipeline_VITIS_LOOP_185_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199.p503p1_1_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Parent" : "27", "Child" : ["34", "35"],
		"CDFG" : "rdc_mont_140_Pipeline_VITIS_LOOP_206_5",
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
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub66", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216.p503p1_1_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111.mul_32ns_32ns_64_2_1_U474", "Parent" : "27"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111.mul_32ns_32ns_64_2_1_U475", "Parent" : "27"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111.mul_32ns_32ns_64_2_1_U476", "Parent" : "27"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_140_fu_111.mul_32ns_32ns_64_2_1_U477", "Parent" : "27"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_152_fu_123", "Parent" : "0", "Child" : ["41", "43", "45", "46", "47", "48"],
		"CDFG" : "mp_mul_152",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "41", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "43", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "43", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_152_fu_123.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "40", "Child" : ["42"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_152_fu_123.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_152_fu_123.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "40", "Child" : ["44"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_152_fu_123.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_152_fu_123.mul_32ns_32ns_64_2_1_U277", "Parent" : "40"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_152_fu_123.mul_32ns_32ns_64_2_1_U278", "Parent" : "40"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_152_fu_123.mul_32ns_32ns_64_2_1_U279", "Parent" : "40"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_152_fu_123.mul_32ns_32ns_64_2_1_U280", "Parent" : "40"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_169_1169_fu_130", "Parent" : "0", "Child" : ["50"],
		"CDFG" : "fp2mul503_mont_4_Pipeline_VITIS_LOOP_169_1169",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_4_Pipeline_VITIS_LOOP_169_1169_fu_130.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"}]}


set ArgLastReadFirstWriteLatency {
	fp2mul503_mont_4 {
		PKB {Type I LastRead 2 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_8 {
		PKB {Type I LastRead 2 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_8_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 2 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		v_80_out {Type O LastRead -1 FirstWrite 8}
		u_65_out {Type IO LastRead 8 FirstWrite 0}
		t_out {Type IO LastRead 9 FirstWrite 0}}
	mp_mul_8_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 2 FirstWrite -1}
		zext_ln156_2 {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 8}
		u_34_out {Type IO LastRead 8 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 8}}
	mp_mul_9 {
		PKB {Type I LastRead 2 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_9_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 2 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		v_66_out {Type O LastRead -1 FirstWrite 8}
		u_59_out {Type IO LastRead 8 FirstWrite 0}
		t_out {Type IO LastRead 9 FirstWrite 0}}
	mp_mul_9_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 2 FirstWrite -1}
		zext_ln156_1 {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 8}
		u_34_out {Type IO LastRead 8 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 8}}
	fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1 {
		PKB {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_4_Pipeline_VITIS_LOOP_169_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1167 {
		PKB {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_4_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 1 FirstWrite 4}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_4_Pipeline_VITIS_LOOP_349_1168 {
		tt1 {Type IO LastRead 0 FirstWrite 2}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_140 {
		ma {Type I LastRead 5 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_140_Pipeline_VITIS_LOOP_180_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_140_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_11 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_68_out {Type O LastRead -1 FirstWrite 8}
		u_54_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_140_Pipeline_VITIS_LOOP_206_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_56 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub66 {Type I LastRead 0 FirstWrite -1}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_72_out {Type O LastRead -1 FirstWrite 8}
		u_46_out {Type O LastRead -1 FirstWrite 8}
		t_30_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_152 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_152_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 7}
		u_95_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_152_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	fp2mul503_mont_4_Pipeline_VITIS_LOOP_169_1169 {
		tt2 {Type IO LastRead 0 FirstWrite 2}
		tt1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "942", "Max" : "1440"}
	, {"Name" : "Interval", "Min" : "942", "Max" : "1440"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	PKB { ap_memory {  { PKB_address0 mem_address 1 6 }  { PKB_ce0 mem_ce 1 1 }  { PKB_q0 mem_dout 0 64 }  { PKB_address1 MemPortADDR2 1 6 }  { PKB_ce1 MemPortCE2 1 1 }  { PKB_q1 MemPortDOUT2 0 64 } } }
	c { ap_memory {  { c_address0 mem_address 1 4 }  { c_ce0 mem_ce 1 1 }  { c_we0 mem_we 1 1 }  { c_d0 mem_din 1 64 }  { c_q0 mem_dout 0 64 } } }
}
