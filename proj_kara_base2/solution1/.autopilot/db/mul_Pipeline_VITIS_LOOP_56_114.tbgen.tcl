set moduleName mul_Pipeline_VITIS_LOOP_56_114
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
set cdfgNum 51
set C_modelName {mul_Pipeline_VITIS_LOOP_56_114}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ Al_14_reload int 64 regular  }
	{ Al_13_reload int 64 regular  }
	{ Ah_14_reload int 64 regular  }
	{ Ah_13_reload int 64 regular  }
	{ Sal_5_out int 64 regular {pointer 1}  }
	{ Sal_4_out int 64 regular {pointer 1}  }
	{ carry_4_out int 2 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "Al_14_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Al_13_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Ah_14_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Ah_13_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sal_5_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Sal_4_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "carry_4_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Al_14_reload sc_in sc_lv 64 signal 0 } 
	{ Al_13_reload sc_in sc_lv 64 signal 1 } 
	{ Ah_14_reload sc_in sc_lv 64 signal 2 } 
	{ Ah_13_reload sc_in sc_lv 64 signal 3 } 
	{ Sal_5_out sc_out sc_lv 64 signal 4 } 
	{ Sal_5_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ Sal_4_out sc_out sc_lv 64 signal 5 } 
	{ Sal_4_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ carry_4_out sc_out sc_lv 2 signal 6 } 
	{ carry_4_out_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Al_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Al_14_reload", "role": "default" }} , 
 	{ "name": "Al_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Al_13_reload", "role": "default" }} , 
 	{ "name": "Ah_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ah_14_reload", "role": "default" }} , 
 	{ "name": "Ah_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ah_13_reload", "role": "default" }} , 
 	{ "name": "Sal_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sal_5_out", "role": "default" }} , 
 	{ "name": "Sal_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Sal_5_out", "role": "ap_vld" }} , 
 	{ "name": "Sal_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sal_4_out", "role": "default" }} , 
 	{ "name": "Sal_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Sal_4_out", "role": "ap_vld" }} , 
 	{ "name": "carry_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "carry_4_out", "role": "default" }} , 
 	{ "name": "carry_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "carry_4_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_VITIS_LOOP_56_114 {
		Al_14_reload {Type I LastRead 0 FirstWrite -1}
		Al_13_reload {Type I LastRead 0 FirstWrite -1}
		Ah_14_reload {Type I LastRead 0 FirstWrite -1}
		Ah_13_reload {Type I LastRead 0 FirstWrite -1}
		Sal_5_out {Type O LastRead -1 FirstWrite 0}
		Sal_4_out {Type O LastRead -1 FirstWrite 0}
		carry_4_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Al_14_reload { ap_none {  { Al_14_reload in_data 0 64 } } }
	Al_13_reload { ap_none {  { Al_13_reload in_data 0 64 } } }
	Ah_14_reload { ap_none {  { Ah_14_reload in_data 0 64 } } }
	Ah_13_reload { ap_none {  { Ah_13_reload in_data 0 64 } } }
	Sal_5_out { ap_vld {  { Sal_5_out out_data 1 64 }  { Sal_5_out_ap_vld out_vld 1 1 } } }
	Sal_4_out { ap_vld {  { Sal_4_out out_data 1 64 }  { Sal_4_out_ap_vld out_vld 1 1 } } }
	carry_4_out { ap_vld {  { carry_4_out out_data 1 2 }  { carry_4_out_ap_vld out_vld 1 1 } } }
}
