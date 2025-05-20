set moduleName mp_mul_6
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
set C_modelName {mp_mul.6}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict PKB { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ PKB int 64 regular {array 48 { 1 3 } 1 1 }  }
	{ c int 64 regular {array 16 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "PKB", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
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
	{ c_address0 sc_out sc_lv 4 signal 1 } 
	{ c_ce0 sc_out sc_logic 1 signal 1 } 
	{ c_we0 sc_out sc_logic 1 signal 1 } 
	{ c_d0 sc_out sc_lv 64 signal 1 } 
	{ grp_fu_137_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_137_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_137_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_137_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_141_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_141_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_141_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_141_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_145_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_145_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_145_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_145_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_149_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_149_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_149_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_149_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we0" }} , 
 	{ "name": "c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "d0" }} , 
 	{ "name": "grp_fu_137_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_137_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_137_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_137_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_137_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_137_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_137_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_137_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_141_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_141_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_141_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_141_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_141_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_141_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_141_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_141_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_145_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_145_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_145_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_145_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_145_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_145_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_145_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_145_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_149_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_149_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_149_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_149_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_149_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_149_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_149_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_149_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4"],
		"CDFG" : "mp_mul_6",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mp_mul_6_Pipeline_VITIS_LOOP_144_2_fu_114", "Port" : "PKB", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "4", "SubInstance" : "grp_mp_mul_6_Pipeline_VITIS_LOOP_157_4_fu_129", "Port" : "PKB", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Montgomery_R2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mp_mul_6_Pipeline_VITIS_LOOP_144_2_fu_114", "Port" : "Montgomery_R2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "4", "SubInstance" : "grp_mp_mul_6_Pipeline_VITIS_LOOP_157_4_fu_129", "Port" : "Montgomery_R2_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_Pipeline_VITIS_LOOP_144_2_fu_114", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "mp_mul_6_Pipeline_VITIS_LOOP_144_2",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_74_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "Montgomery_R2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_Pipeline_VITIS_LOOP_144_2_fu_114.Montgomery_R2_1_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_Pipeline_VITIS_LOOP_144_2_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_Pipeline_VITIS_LOOP_157_4_fu_129", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "mp_mul_6_Pipeline_VITIS_LOOP_157_4",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Montgomery_R2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_Pipeline_VITIS_LOOP_157_4_fu_129.Montgomery_R2_1_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_6_Pipeline_VITIS_LOOP_157_4_fu_129.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	mp_mul_6 {
		PKB {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}
		Montgomery_R2_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_6_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_101_out {Type O LastRead -1 FirstWrite 7}
		u_74_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}
		Montgomery_R2_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_6_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}
		Montgomery_R2_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "212", "Max" : "310"}
	, {"Name" : "Interval", "Min" : "212", "Max" : "310"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	PKB { ap_memory {  { PKB_address0 mem_address 1 6 }  { PKB_ce0 mem_ce 1 1 }  { PKB_q0 mem_dout 0 64 } } }
	c { ap_memory {  { c_address0 mem_address 1 4 }  { c_ce0 mem_ce 1 1 }  { c_we0 mem_we 1 1 }  { c_d0 mem_din 1 64 } } }
}
