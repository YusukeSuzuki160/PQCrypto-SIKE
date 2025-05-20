set moduleName rdc_mont_2_Pipeline_VITIS_LOOP_185_3
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
set C_modelName {rdc_mont.2_Pipeline_VITIS_LOOP_185_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict PKB { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ v_025 int 64 regular  }
	{ u_024 int 64 regular  }
	{ i_7 int 3 regular  }
	{ add_ln185 int 4 regular  }
	{ mc int 9 regular  }
	{ PKB int 64 regular {array 48 { 1 3 } 1 1 }  }
	{ empty int 3 regular  }
	{ v_39_out int 64 regular {pointer 1}  }
	{ u_35_out int 64 regular {pointer 1}  }
	{ t_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "v_025", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "u_024", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "i_7", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln185", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "mc", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "PKB", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "v_39_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u_35_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v_025 sc_in sc_lv 64 signal 0 } 
	{ u_024 sc_in sc_lv 64 signal 1 } 
	{ i_7 sc_in sc_lv 3 signal 2 } 
	{ add_ln185 sc_in sc_lv 4 signal 3 } 
	{ mc sc_in sc_lv 9 signal 4 } 
	{ PKB_address0 sc_out sc_lv 6 signal 5 } 
	{ PKB_ce0 sc_out sc_logic 1 signal 5 } 
	{ PKB_q0 sc_in sc_lv 64 signal 5 } 
	{ empty sc_in sc_lv 3 signal 6 } 
	{ v_39_out sc_out sc_lv 64 signal 7 } 
	{ v_39_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ u_35_out sc_out sc_lv 64 signal 8 } 
	{ u_35_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ t_out sc_out sc_lv 64 signal 9 } 
	{ t_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ grp_fu_956_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_956_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_956_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_956_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_960_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_960_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_960_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_960_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_964_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_964_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_964_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_964_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_968_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_968_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_968_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_968_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v_025", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v_025", "role": "default" }} , 
 	{ "name": "u_024", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_024", "role": "default" }} , 
 	{ "name": "i_7", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "i_7", "role": "default" }} , 
 	{ "name": "add_ln185", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "add_ln185", "role": "default" }} , 
 	{ "name": "mc", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mc", "role": "default" }} , 
 	{ "name": "PKB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "PKB", "role": "address0" }} , 
 	{ "name": "PKB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PKB", "role": "ce0" }} , 
 	{ "name": "PKB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "PKB", "role": "q0" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "v_39_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v_39_out", "role": "default" }} , 
 	{ "name": "v_39_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "v_39_out", "role": "ap_vld" }} , 
 	{ "name": "u_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_35_out", "role": "default" }} , 
 	{ "name": "u_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "u_35_out", "role": "ap_vld" }} , 
 	{ "name": "t_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_out", "role": "default" }} , 
 	{ "name": "t_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_956_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_956_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_956_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_956_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_956_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_956_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_956_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_956_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_960_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_960_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_960_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_960_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_960_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_960_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_960_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_960_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_964_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_964_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_964_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_964_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_964_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_964_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_964_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_964_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_968_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_968_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_968_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_968_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_968_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_968_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_968_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_968_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "rdc_mont_2_Pipeline_VITIS_LOOP_185_3",
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
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "None", "Direction" : "I"},
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p503p1_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rdc_mont_2_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		PKB {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_39_out {Type O LastRead -1 FirstWrite 8}
		u_35_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	v_025 { ap_none {  { v_025 in_data 0 64 } } }
	u_024 { ap_none {  { u_024 in_data 0 64 } } }
	i_7 { ap_none {  { i_7 in_data 0 3 } } }
	add_ln185 { ap_none {  { add_ln185 in_data 0 4 } } }
	mc { ap_none {  { mc in_data 0 9 } } }
	PKB { ap_memory {  { PKB_address0 mem_address 1 6 }  { PKB_ce0 mem_ce 1 1 }  { PKB_q0 mem_dout 0 64 } } }
	empty { ap_none {  { empty in_data 0 3 } } }
	v_39_out { ap_vld {  { v_39_out out_data 1 64 }  { v_39_out_ap_vld out_vld 1 1 } } }
	u_35_out { ap_vld {  { u_35_out out_data 1 64 }  { u_35_out_ap_vld out_vld 1 1 } } }
	t_out { ap_vld {  { t_out out_data 1 64 }  { t_out_ap_vld out_vld 1 1 } } }
}
