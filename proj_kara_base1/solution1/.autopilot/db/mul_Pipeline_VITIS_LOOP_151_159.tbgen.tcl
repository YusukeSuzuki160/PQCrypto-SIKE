set moduleName mul_Pipeline_VITIS_LOOP_151_159
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
set C_modelName {mul_Pipeline_VITIS_LOOP_151_159}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ Sal_12_reload int 64 regular  }
	{ Sal_13_reload int 64 regular  }
	{ Sbl_6_reload int 64 regular  }
	{ Sbl_7_reload int 64 regular  }
	{ Al_24_out int 64 regular {pointer 1}  }
	{ Al_23_out int 64 regular {pointer 1}  }
	{ Bl_24_out int 64 regular {pointer 1}  }
	{ Bl_23_out int 64 regular {pointer 1}  }
	{ p_out int 64 regular {pointer 1}  }
	{ p_out1 int 64 regular {pointer 1}  }
	{ p_out2 int 64 regular {pointer 1}  }
	{ av_18_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "Sal_12_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sal_13_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sbl_6_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sbl_7_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Al_24_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Al_23_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Bl_24_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Bl_23_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out2", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "av_18_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Sal_12_reload sc_in sc_lv 64 signal 0 } 
	{ Sal_13_reload sc_in sc_lv 64 signal 1 } 
	{ Sbl_6_reload sc_in sc_lv 64 signal 2 } 
	{ Sbl_7_reload sc_in sc_lv 64 signal 3 } 
	{ Al_24_out sc_out sc_lv 64 signal 4 } 
	{ Al_24_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ Al_23_out sc_out sc_lv 64 signal 5 } 
	{ Al_23_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ Bl_24_out sc_out sc_lv 64 signal 6 } 
	{ Bl_24_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ Bl_23_out sc_out sc_lv 64 signal 7 } 
	{ Bl_23_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ p_out sc_out sc_lv 64 signal 8 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ p_out1 sc_out sc_lv 64 signal 9 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ p_out2 sc_out sc_lv 64 signal 10 } 
	{ p_out2_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ av_18_out sc_out sc_lv 64 signal 11 } 
	{ av_18_out_ap_vld sc_out sc_logic 1 outvld 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Sal_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sal_12_reload", "role": "default" }} , 
 	{ "name": "Sal_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sal_13_reload", "role": "default" }} , 
 	{ "name": "Sbl_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_6_reload", "role": "default" }} , 
 	{ "name": "Sbl_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_7_reload", "role": "default" }} , 
 	{ "name": "Al_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Al_24_out", "role": "default" }} , 
 	{ "name": "Al_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Al_24_out", "role": "ap_vld" }} , 
 	{ "name": "Al_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Al_23_out", "role": "default" }} , 
 	{ "name": "Al_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Al_23_out", "role": "ap_vld" }} , 
 	{ "name": "Bl_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bl_24_out", "role": "default" }} , 
 	{ "name": "Bl_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Bl_24_out", "role": "ap_vld" }} , 
 	{ "name": "Bl_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bl_23_out", "role": "default" }} , 
 	{ "name": "Bl_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Bl_23_out", "role": "ap_vld" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }} , 
 	{ "name": "p_out2", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_out2", "role": "default" }} , 
 	{ "name": "p_out2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out2", "role": "ap_vld" }} , 
 	{ "name": "av_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "av_18_out", "role": "default" }} , 
 	{ "name": "av_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "av_18_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_151_159",
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
			{"Name" : "Sal_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Al_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Al_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bl_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "av_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_VITIS_LOOP_151_159 {
		Sal_12_reload {Type I LastRead 0 FirstWrite -1}
		Sal_13_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_6_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_7_reload {Type I LastRead 0 FirstWrite -1}
		Al_24_out {Type O LastRead -1 FirstWrite 0}
		Al_23_out {Type O LastRead -1 FirstWrite 0}
		Bl_24_out {Type O LastRead -1 FirstWrite 0}
		Bl_23_out {Type O LastRead -1 FirstWrite 0}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		av_18_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Sal_12_reload { ap_none {  { Sal_12_reload in_data 0 64 } } }
	Sal_13_reload { ap_none {  { Sal_13_reload in_data 0 64 } } }
	Sbl_6_reload { ap_none {  { Sbl_6_reload in_data 0 64 } } }
	Sbl_7_reload { ap_none {  { Sbl_7_reload in_data 0 64 } } }
	Al_24_out { ap_vld {  { Al_24_out out_data 1 64 }  { Al_24_out_ap_vld out_vld 1 1 } } }
	Al_23_out { ap_vld {  { Al_23_out out_data 1 64 }  { Al_23_out_ap_vld out_vld 1 1 } } }
	Bl_24_out { ap_vld {  { Bl_24_out out_data 1 64 }  { Bl_24_out_ap_vld out_vld 1 1 } } }
	Bl_23_out { ap_vld {  { Bl_23_out out_data 1 64 }  { Bl_23_out_ap_vld out_vld 1 1 } } }
	p_out { ap_vld {  { p_out out_data 1 64 }  { p_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 64 }  { p_out1_ap_vld out_vld 1 1 } } }
	p_out2 { ap_vld {  { p_out2 out_data 1 64 }  { p_out2_ap_vld out_vld 1 1 } } }
	av_18_out { ap_vld {  { av_18_out out_data 1 64 }  { av_18_out_ap_vld out_vld 1 1 } } }
}
