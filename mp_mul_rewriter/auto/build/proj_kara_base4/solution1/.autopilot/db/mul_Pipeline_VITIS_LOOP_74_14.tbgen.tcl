set moduleName mul_Pipeline_VITIS_LOOP_74_14
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
set cdfgNum 18
set C_modelName {mul_Pipeline_VITIS_LOOP_74_14}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ Sal_reload int 64 regular  }
	{ Sal_1_reload int 64 regular  }
	{ Sal_2_reload int 64 regular  }
	{ Sal_3_reload int 64 regular  }
	{ Sbl_2_reload int 64 regular  }
	{ Sbl_3_reload int 64 regular  }
	{ Sbl_1_reload int 64 regular  }
	{ Sbl_reload int 64 regular  }
	{ A_4_out int 256 regular {pointer 1}  }
	{ B_4_out int 256 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "Sal_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sal_1_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sal_2_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sal_3_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sbl_2_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sbl_3_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sbl_1_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sbl_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "A_4_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_4_out", "interface" : "wire", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Sal_reload sc_in sc_lv 64 signal 0 } 
	{ Sal_1_reload sc_in sc_lv 64 signal 1 } 
	{ Sal_2_reload sc_in sc_lv 64 signal 2 } 
	{ Sal_3_reload sc_in sc_lv 64 signal 3 } 
	{ Sbl_2_reload sc_in sc_lv 64 signal 4 } 
	{ Sbl_3_reload sc_in sc_lv 64 signal 5 } 
	{ Sbl_1_reload sc_in sc_lv 64 signal 6 } 
	{ Sbl_reload sc_in sc_lv 64 signal 7 } 
	{ A_4_out sc_out sc_lv 256 signal 8 } 
	{ A_4_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ B_4_out sc_out sc_lv 256 signal 9 } 
	{ B_4_out_ap_vld sc_out sc_logic 1 outvld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Sal_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sal_reload", "role": "default" }} , 
 	{ "name": "Sal_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sal_1_reload", "role": "default" }} , 
 	{ "name": "Sal_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sal_2_reload", "role": "default" }} , 
 	{ "name": "Sal_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sal_3_reload", "role": "default" }} , 
 	{ "name": "Sbl_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_2_reload", "role": "default" }} , 
 	{ "name": "Sbl_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_3_reload", "role": "default" }} , 
 	{ "name": "Sbl_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_1_reload", "role": "default" }} , 
 	{ "name": "Sbl_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_reload", "role": "default" }} , 
 	{ "name": "A_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "A_4_out", "role": "default" }} , 
 	{ "name": "A_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_4_out", "role": "ap_vld" }} , 
 	{ "name": "B_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "B_4_out", "role": "default" }} , 
 	{ "name": "B_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_4_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_64_1_1_U84", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partset_256ns_256ns_64ns_32ns_256_1_1_U85", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_64_1_1_U86", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partset_256ns_256ns_64ns_32ns_256_1_1_U87", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		B_4_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Sal_reload { ap_none {  { Sal_reload in_data 0 64 } } }
	Sal_1_reload { ap_none {  { Sal_1_reload in_data 0 64 } } }
	Sal_2_reload { ap_none {  { Sal_2_reload in_data 0 64 } } }
	Sal_3_reload { ap_none {  { Sal_3_reload in_data 0 64 } } }
	Sbl_2_reload { ap_none {  { Sbl_2_reload in_data 0 64 } } }
	Sbl_3_reload { ap_none {  { Sbl_3_reload in_data 0 64 } } }
	Sbl_1_reload { ap_none {  { Sbl_1_reload in_data 0 64 } } }
	Sbl_reload { ap_none {  { Sbl_reload in_data 0 64 } } }
	A_4_out { ap_vld {  { A_4_out out_data 1 256 }  { A_4_out_ap_vld out_vld 1 1 } } }
	B_4_out { ap_vld {  { B_4_out out_data 1 256 }  { B_4_out_ap_vld out_vld 1 1 } } }
}
