set moduleName mp_mul_14785_Pipeline_VITIS_LOOP_144_2
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
set C_modelName {mp_mul.14785_Pipeline_VITIS_LOOP_144_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict a { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict b { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ v_017 int 64 regular  }
	{ zext_ln143 int 4 regular  }
	{ indvars_iv31 int 4 regular  }
	{ a_offset1 int 1 regular  }
	{ a int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ i int 3 regular  }
	{ zext_ln145 int 4 regular  }
	{ b int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ v_114_out int 64 regular {pointer 1}  }
	{ u_95_out int 64 regular {pointer 2}  }
	{ t_out int 4 regular {pointer 2}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "v_017", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln143", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "indvars_iv31", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "a_offset1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "i", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln145", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "v_114_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u_95_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "t_out", "interface" : "wire", "bitwidth" : 4, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v_017 sc_in sc_lv 64 signal 0 } 
	{ zext_ln143 sc_in sc_lv 4 signal 1 } 
	{ indvars_iv31 sc_in sc_lv 4 signal 2 } 
	{ a_offset1 sc_in sc_lv 1 signal 3 } 
	{ a_address0 sc_out sc_lv 4 signal 4 } 
	{ a_ce0 sc_out sc_logic 1 signal 4 } 
	{ a_q0 sc_in sc_lv 64 signal 4 } 
	{ i sc_in sc_lv 3 signal 5 } 
	{ zext_ln145 sc_in sc_lv 4 signal 6 } 
	{ b_address0 sc_out sc_lv 4 signal 7 } 
	{ b_ce0 sc_out sc_logic 1 signal 7 } 
	{ b_q0 sc_in sc_lv 64 signal 7 } 
	{ v_114_out sc_out sc_lv 64 signal 8 } 
	{ v_114_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ u_95_out_i sc_in sc_lv 64 signal 9 } 
	{ u_95_out_o sc_out sc_lv 64 signal 9 } 
	{ u_95_out_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ t_out_i sc_in sc_lv 4 signal 10 } 
	{ t_out_o sc_out sc_lv 4 signal 10 } 
	{ t_out_o_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ grp_fu_480_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_480_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_480_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_480_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_484_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_484_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_484_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_484_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_488_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_488_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_488_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_488_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_492_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_492_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_492_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_492_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v_017", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v_017", "role": "default" }} , 
 	{ "name": "zext_ln143", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln143", "role": "default" }} , 
 	{ "name": "indvars_iv31", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "indvars_iv31", "role": "default" }} , 
 	{ "name": "a_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_offset1", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "i", "role": "default" }} , 
 	{ "name": "zext_ln145", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln145", "role": "default" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "q0" }} , 
 	{ "name": "v_114_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v_114_out", "role": "default" }} , 
 	{ "name": "v_114_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "v_114_out", "role": "ap_vld" }} , 
 	{ "name": "u_95_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_95_out", "role": "i" }} , 
 	{ "name": "u_95_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_95_out", "role": "o" }} , 
 	{ "name": "u_95_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "u_95_out", "role": "o_ap_vld" }} , 
 	{ "name": "t_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_out", "role": "i" }} , 
 	{ "name": "t_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_out", "role": "o" }} , 
 	{ "name": "t_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t_out", "role": "o_ap_vld" }} , 
 	{ "name": "grp_fu_480_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_480_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_480_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_480_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_480_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_480_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_480_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_480_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_484_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_484_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_484_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_484_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_488_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_488_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_488_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_488_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_492_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_492_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_492_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_492_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mp_mul_14785_Pipeline_VITIS_LOOP_144_2",
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
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mp_mul_14785_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 1 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		zext_ln145 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 8}
		u_95_out {Type IO LastRead 8 FirstWrite 0}
		t_out {Type IO LastRead 9 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	v_017 { ap_none {  { v_017 in_data 0 64 } } }
	zext_ln143 { ap_none {  { zext_ln143 in_data 0 4 } } }
	indvars_iv31 { ap_none {  { indvars_iv31 in_data 0 4 } } }
	a_offset1 { ap_none {  { a_offset1 in_data 0 1 } } }
	a { ap_memory {  { a_address0 mem_address 1 4 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 64 } } }
	i { ap_none {  { i in_data 0 3 } } }
	zext_ln145 { ap_none {  { zext_ln145 in_data 0 4 } } }
	b { ap_memory {  { b_address0 mem_address 1 4 }  { b_ce0 mem_ce 1 1 }  { b_q0 mem_dout 0 64 } } }
	v_114_out { ap_vld {  { v_114_out out_data 1 64 }  { v_114_out_ap_vld out_vld 1 1 } } }
	u_95_out { ap_ovld {  { u_95_out_i in_data 0 64 }  { u_95_out_o out_data 1 64 }  { u_95_out_o_ap_vld out_vld 1 1 } } }
	t_out { ap_ovld {  { t_out_i in_data 0 4 }  { t_out_o out_data 1 4 }  { t_out_o_ap_vld out_vld 1 1 } } }
}
