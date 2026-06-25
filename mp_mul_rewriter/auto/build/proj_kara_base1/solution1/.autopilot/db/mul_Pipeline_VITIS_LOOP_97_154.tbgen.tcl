set moduleName mul_Pipeline_VITIS_LOOP_97_154
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
set cdfgNum 110
set C_modelName {mul_Pipeline_VITIS_LOOP_97_154}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ z0_26_reload int 64 regular  }
	{ z0_27_reload int 64 regular  }
	{ z0_28_reload int 64 regular  }
	{ z0_29_reload int 64 regular  }
	{ z2_31_reload int 64 regular  }
	{ z2_32_reload int 64 regular  }
	{ z2_33_reload int 64 regular  }
	{ z2_34_reload int 64 regular  }
	{ W2_14_out int 258 regular {pointer 1}  }
	{ W0_14_out int 258 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "z0_26_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z0_27_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z0_28_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z0_29_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z2_31_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z2_32_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z2_33_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z2_34_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "W2_14_out", "interface" : "wire", "bitwidth" : 258, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W0_14_out", "interface" : "wire", "bitwidth" : 258, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ z0_26_reload sc_in sc_lv 64 signal 0 } 
	{ z0_27_reload sc_in sc_lv 64 signal 1 } 
	{ z0_28_reload sc_in sc_lv 64 signal 2 } 
	{ z0_29_reload sc_in sc_lv 64 signal 3 } 
	{ z2_31_reload sc_in sc_lv 64 signal 4 } 
	{ z2_32_reload sc_in sc_lv 64 signal 5 } 
	{ z2_33_reload sc_in sc_lv 64 signal 6 } 
	{ z2_34_reload sc_in sc_lv 64 signal 7 } 
	{ W2_14_out sc_out sc_lv 258 signal 8 } 
	{ W2_14_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ W0_14_out sc_out sc_lv 258 signal 9 } 
	{ W0_14_out_ap_vld sc_out sc_logic 1 outvld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "z0_26_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z0_26_reload", "role": "default" }} , 
 	{ "name": "z0_27_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z0_27_reload", "role": "default" }} , 
 	{ "name": "z0_28_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z0_28_reload", "role": "default" }} , 
 	{ "name": "z0_29_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z0_29_reload", "role": "default" }} , 
 	{ "name": "z2_31_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2_31_reload", "role": "default" }} , 
 	{ "name": "z2_32_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2_32_reload", "role": "default" }} , 
 	{ "name": "z2_33_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2_33_reload", "role": "default" }} , 
 	{ "name": "z2_34_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2_34_reload", "role": "default" }} , 
 	{ "name": "W2_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":258, "type": "signal", "bundle":{"name": "W2_14_out", "role": "default" }} , 
 	{ "name": "W2_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W2_14_out", "role": "ap_vld" }} , 
 	{ "name": "W0_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":258, "type": "signal", "bundle":{"name": "W0_14_out", "role": "default" }} , 
 	{ "name": "W0_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W0_14_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_64_1_1_U368", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_64_1_1_U369", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		W0_14_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	z0_26_reload { ap_none {  { z0_26_reload in_data 0 64 } } }
	z0_27_reload { ap_none {  { z0_27_reload in_data 0 64 } } }
	z0_28_reload { ap_none {  { z0_28_reload in_data 0 64 } } }
	z0_29_reload { ap_none {  { z0_29_reload in_data 0 64 } } }
	z2_31_reload { ap_none {  { z2_31_reload in_data 0 64 } } }
	z2_32_reload { ap_none {  { z2_32_reload in_data 0 64 } } }
	z2_33_reload { ap_none {  { z2_33_reload in_data 0 64 } } }
	z2_34_reload { ap_none {  { z2_34_reload in_data 0 64 } } }
	W2_14_out { ap_vld {  { W2_14_out out_data 1 258 }  { W2_14_out_ap_vld out_vld 1 1 } } }
	W0_14_out { ap_vld {  { W0_14_out out_data 1 258 }  { W0_14_out_ap_vld out_vld 1 1 } } }
}
