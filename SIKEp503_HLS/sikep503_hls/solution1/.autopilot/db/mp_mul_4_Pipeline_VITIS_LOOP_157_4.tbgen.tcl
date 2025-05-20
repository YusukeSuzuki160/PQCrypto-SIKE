set moduleName mp_mul_4_Pipeline_VITIS_LOOP_157_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
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
set C_modelName {mp_mul.4_Pipeline_VITIS_LOOP_157_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict R_Z { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict b { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ indvars_iv int 3 regular  }
	{ v int 64 regular  }
	{ zext_ln156 int 4 regular  }
	{ R_Z int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ i_20 int 4 regular  }
	{ b int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ v_35_out int 64 regular {pointer 1}  }
	{ u_34_out int 64 regular {pointer 2}  }
	{ t_33_out int 3 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "indvars_iv", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "v", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln156", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "R_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "i_20", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "v_35_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u_34_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "t_33_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ indvars_iv sc_in sc_lv 3 signal 0 } 
	{ v sc_in sc_lv 64 signal 1 } 
	{ zext_ln156 sc_in sc_lv 4 signal 2 } 
	{ R_Z_address0 sc_out sc_lv 4 signal 3 } 
	{ R_Z_ce0 sc_out sc_logic 1 signal 3 } 
	{ R_Z_q0 sc_in sc_lv 64 signal 3 } 
	{ i_20 sc_in sc_lv 4 signal 4 } 
	{ b_address0 sc_out sc_lv 4 signal 5 } 
	{ b_ce0 sc_out sc_logic 1 signal 5 } 
	{ b_q0 sc_in sc_lv 64 signal 5 } 
	{ v_35_out sc_out sc_lv 64 signal 6 } 
	{ v_35_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ u_34_out_i sc_in sc_lv 64 signal 7 } 
	{ u_34_out_o sc_out sc_lv 64 signal 7 } 
	{ u_34_out_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ t_33_out sc_out sc_lv 3 signal 8 } 
	{ t_33_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ grp_fu_422_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_422_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_422_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_422_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_426_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_426_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_426_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_426_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_430_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_430_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_430_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_430_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_434_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_434_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_434_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_434_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "indvars_iv", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "indvars_iv", "role": "default" }} , 
 	{ "name": "v", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v", "role": "default" }} , 
 	{ "name": "zext_ln156", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln156", "role": "default" }} , 
 	{ "name": "R_Z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "R_Z", "role": "address0" }} , 
 	{ "name": "R_Z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_Z", "role": "ce0" }} , 
 	{ "name": "R_Z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "q0" }} , 
 	{ "name": "i_20", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "i_20", "role": "default" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "q0" }} , 
 	{ "name": "v_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v_35_out", "role": "default" }} , 
 	{ "name": "v_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "v_35_out", "role": "ap_vld" }} , 
 	{ "name": "u_34_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_34_out", "role": "i" }} , 
 	{ "name": "u_34_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_34_out", "role": "o" }} , 
 	{ "name": "u_34_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "u_34_out", "role": "o_ap_vld" }} , 
 	{ "name": "t_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "t_33_out", "role": "default" }} , 
 	{ "name": "t_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t_33_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_422_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_422_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_422_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_422_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_422_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_422_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_422_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_422_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_426_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_426_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_426_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_426_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_426_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_426_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_426_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_426_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_430_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_430_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_430_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_430_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_430_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_430_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_430_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_430_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_434_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_434_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_434_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_434_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_434_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_434_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_434_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_434_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mp_mul_4_Pipeline_VITIS_LOOP_157_4",
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
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mp_mul_4_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		R_Z {Type I LastRead 0 FirstWrite -1}
		i_20 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "16"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	indvars_iv { ap_none {  { indvars_iv in_data 0 3 } } }
	v { ap_none {  { v in_data 0 64 } } }
	zext_ln156 { ap_none {  { zext_ln156 in_data 0 4 } } }
	R_Z { ap_memory {  { R_Z_address0 mem_address 1 4 }  { R_Z_ce0 mem_ce 1 1 }  { R_Z_q0 mem_dout 0 64 } } }
	i_20 { ap_none {  { i_20 in_data 0 4 } } }
	b { ap_memory {  { b_address0 mem_address 1 4 }  { b_ce0 mem_ce 1 1 }  { b_q0 mem_dout 0 64 } } }
	v_35_out { ap_vld {  { v_35_out out_data 1 64 }  { v_35_out_ap_vld out_vld 1 1 } } }
	u_34_out { ap_ovld {  { u_34_out_i in_data 0 64 }  { u_34_out_o out_data 1 64 }  { u_34_out_o_ap_vld out_vld 1 1 } } }
	t_33_out { ap_vld {  { t_33_out out_data 1 3 }  { t_33_out_ap_vld out_vld 1 1 } } }
}
