set moduleName rdc_mont_140_Pipeline_VITIS_LOOP_206_5
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
set C_modelName {rdc_mont.140_Pipeline_VITIS_LOOP_206_5}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict mc { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ indvars_iv int 3 regular  }
	{ v_56 int 64 regular  }
	{ u int 64 regular  }
	{ sub66 int 32 regular  }
	{ zext_ln181 int 4 regular  }
	{ mc int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ empty int 3 regular  }
	{ v_72_out int 64 regular {pointer 1}  }
	{ u_46_out int 64 regular {pointer 1}  }
	{ t_30_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "indvars_iv", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "v_56", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "u", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sub66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln181", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "mc", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "v_72_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "u_46_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t_30_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ indvars_iv sc_in sc_lv 3 signal 0 } 
	{ v_56 sc_in sc_lv 64 signal 1 } 
	{ u sc_in sc_lv 64 signal 2 } 
	{ sub66 sc_in sc_lv 32 signal 3 } 
	{ zext_ln181 sc_in sc_lv 4 signal 4 } 
	{ mc_address0 sc_out sc_lv 4 signal 5 } 
	{ mc_ce0 sc_out sc_logic 1 signal 5 } 
	{ mc_q0 sc_in sc_lv 64 signal 5 } 
	{ empty sc_in sc_lv 3 signal 6 } 
	{ v_72_out sc_out sc_lv 64 signal 7 } 
	{ v_72_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ u_46_out sc_out sc_lv 64 signal 8 } 
	{ u_46_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ t_30_out sc_out sc_lv 64 signal 9 } 
	{ t_30_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ grp_fu_901_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_901_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_901_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_901_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_905_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_905_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_905_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_905_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_909_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_909_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_909_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_909_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_913_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_913_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_913_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_913_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "indvars_iv", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "indvars_iv", "role": "default" }} , 
 	{ "name": "v_56", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v_56", "role": "default" }} , 
 	{ "name": "u", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u", "role": "default" }} , 
 	{ "name": "sub66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sub66", "role": "default" }} , 
 	{ "name": "zext_ln181", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln181", "role": "default" }} , 
 	{ "name": "mc_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mc", "role": "address0" }} , 
 	{ "name": "mc_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc", "role": "ce0" }} , 
 	{ "name": "mc_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc", "role": "q0" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "v_72_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "v_72_out", "role": "default" }} , 
 	{ "name": "v_72_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "v_72_out", "role": "ap_vld" }} , 
 	{ "name": "u_46_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "u_46_out", "role": "default" }} , 
 	{ "name": "u_46_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "u_46_out", "role": "ap_vld" }} , 
 	{ "name": "t_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_30_out", "role": "default" }} , 
 	{ "name": "t_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t_30_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_901_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_901_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_901_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_901_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_901_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_901_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_901_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_901_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_905_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_905_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_905_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_905_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_905_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_905_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_905_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_905_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_909_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_909_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_909_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_909_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_909_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_909_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_909_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_909_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_913_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_913_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_913_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_913_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_913_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_913_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_913_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_913_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p503p1_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	indvars_iv { ap_none {  { indvars_iv in_data 0 3 } } }
	v_56 { ap_none {  { v_56 in_data 0 64 } } }
	u { ap_none {  { u in_data 0 64 } } }
	sub66 { ap_none {  { sub66 in_data 0 32 } } }
	zext_ln181 { ap_none {  { zext_ln181 in_data 0 4 } } }
	mc { ap_memory {  { mc_address0 mem_address 1 4 }  { mc_ce0 mem_ce 1 1 }  { mc_q0 mem_dout 0 64 } } }
	empty { ap_none {  { empty in_data 0 3 } } }
	v_72_out { ap_vld {  { v_72_out out_data 1 64 }  { v_72_out_ap_vld out_vld 1 1 } } }
	u_46_out { ap_vld {  { u_46_out out_data 1 64 }  { u_46_out_ap_vld out_vld 1 1 } } }
	t_30_out { ap_vld {  { t_30_out out_data 1 64 }  { t_30_out_ap_vld out_vld 1 1 } } }
}
