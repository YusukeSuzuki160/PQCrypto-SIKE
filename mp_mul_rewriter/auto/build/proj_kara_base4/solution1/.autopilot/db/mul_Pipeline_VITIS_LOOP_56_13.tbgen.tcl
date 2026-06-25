set moduleName mul_Pipeline_VITIS_LOOP_56_13
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
set C_modelName {mul_Pipeline_VITIS_LOOP_56_13}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ Bl_reload int 64 regular  }
	{ Bl_1_reload int 64 regular  }
	{ Bl_2_reload int 64 regular  }
	{ Bl_3_reload int 64 regular  }
	{ Bh_reload int 64 regular  }
	{ Bh_1_reload int 64 regular  }
	{ Bh_2_reload int 64 regular  }
	{ Bh_3_reload int 64 regular  }
	{ Sbl_3_out int 64 regular {pointer 1}  }
	{ Sbl_2_out int 64 regular {pointer 1}  }
	{ Sbl_1_out int 64 regular {pointer 1}  }
	{ Sbl_out int 64 regular {pointer 1}  }
	{ carry_2_out int 2 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "Bl_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Bl_1_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Bl_2_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Bl_3_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Bh_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Bh_1_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Bh_2_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Bh_3_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sbl_3_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Sbl_2_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Sbl_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Sbl_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "carry_2_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Bl_reload sc_in sc_lv 64 signal 0 } 
	{ Bl_1_reload sc_in sc_lv 64 signal 1 } 
	{ Bl_2_reload sc_in sc_lv 64 signal 2 } 
	{ Bl_3_reload sc_in sc_lv 64 signal 3 } 
	{ Bh_reload sc_in sc_lv 64 signal 4 } 
	{ Bh_1_reload sc_in sc_lv 64 signal 5 } 
	{ Bh_2_reload sc_in sc_lv 64 signal 6 } 
	{ Bh_3_reload sc_in sc_lv 64 signal 7 } 
	{ Sbl_3_out sc_out sc_lv 64 signal 8 } 
	{ Sbl_3_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ Sbl_2_out sc_out sc_lv 64 signal 9 } 
	{ Sbl_2_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ Sbl_1_out sc_out sc_lv 64 signal 10 } 
	{ Sbl_1_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ Sbl_out sc_out sc_lv 64 signal 11 } 
	{ Sbl_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ carry_2_out sc_out sc_lv 2 signal 12 } 
	{ carry_2_out_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Bl_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bl_reload", "role": "default" }} , 
 	{ "name": "Bl_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bl_1_reload", "role": "default" }} , 
 	{ "name": "Bl_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bl_2_reload", "role": "default" }} , 
 	{ "name": "Bl_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bl_3_reload", "role": "default" }} , 
 	{ "name": "Bh_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_reload", "role": "default" }} , 
 	{ "name": "Bh_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_1_reload", "role": "default" }} , 
 	{ "name": "Bh_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_2_reload", "role": "default" }} , 
 	{ "name": "Bh_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_3_reload", "role": "default" }} , 
 	{ "name": "Sbl_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_3_out", "role": "default" }} , 
 	{ "name": "Sbl_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Sbl_3_out", "role": "ap_vld" }} , 
 	{ "name": "Sbl_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_2_out", "role": "default" }} , 
 	{ "name": "Sbl_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Sbl_2_out", "role": "ap_vld" }} , 
 	{ "name": "Sbl_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_1_out", "role": "default" }} , 
 	{ "name": "Sbl_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Sbl_1_out", "role": "ap_vld" }} , 
 	{ "name": "Sbl_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_out", "role": "default" }} , 
 	{ "name": "Sbl_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Sbl_out", "role": "ap_vld" }} , 
 	{ "name": "carry_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "carry_2_out", "role": "default" }} , 
 	{ "name": "carry_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "carry_2_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_13",
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
			{"Name" : "Bl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_64_1_1_U69", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_64_1_1_U70", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_VITIS_LOOP_56_13 {
		Bl_reload {Type I LastRead 0 FirstWrite -1}
		Bl_1_reload {Type I LastRead 0 FirstWrite -1}
		Bl_2_reload {Type I LastRead 0 FirstWrite -1}
		Bl_3_reload {Type I LastRead 0 FirstWrite -1}
		Bh_reload {Type I LastRead 0 FirstWrite -1}
		Bh_1_reload {Type I LastRead 0 FirstWrite -1}
		Bh_2_reload {Type I LastRead 0 FirstWrite -1}
		Bh_3_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_3_out {Type O LastRead -1 FirstWrite 0}
		Sbl_2_out {Type O LastRead -1 FirstWrite 0}
		Sbl_1_out {Type O LastRead -1 FirstWrite 0}
		Sbl_out {Type O LastRead -1 FirstWrite 0}
		carry_2_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Bl_reload { ap_none {  { Bl_reload in_data 0 64 } } }
	Bl_1_reload { ap_none {  { Bl_1_reload in_data 0 64 } } }
	Bl_2_reload { ap_none {  { Bl_2_reload in_data 0 64 } } }
	Bl_3_reload { ap_none {  { Bl_3_reload in_data 0 64 } } }
	Bh_reload { ap_none {  { Bh_reload in_data 0 64 } } }
	Bh_1_reload { ap_none {  { Bh_1_reload in_data 0 64 } } }
	Bh_2_reload { ap_none {  { Bh_2_reload in_data 0 64 } } }
	Bh_3_reload { ap_none {  { Bh_3_reload in_data 0 64 } } }
	Sbl_3_out { ap_vld {  { Sbl_3_out out_data 1 64 }  { Sbl_3_out_ap_vld out_vld 1 1 } } }
	Sbl_2_out { ap_vld {  { Sbl_2_out out_data 1 64 }  { Sbl_2_out_ap_vld out_vld 1 1 } } }
	Sbl_1_out { ap_vld {  { Sbl_1_out out_data 1 64 }  { Sbl_1_out_ap_vld out_vld 1 1 } } }
	Sbl_out { ap_vld {  { Sbl_out out_data 1 64 }  { Sbl_out_ap_vld out_vld 1 1 } } }
	carry_2_out { ap_vld {  { carry_2_out out_data 1 2 }  { carry_2_out_ap_vld out_vld 1 1 } } }
}
