set moduleName mul_Pipeline_VITIS_LOOP_56_180
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
set C_modelName {mul_Pipeline_VITIS_LOOP_56_180}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ or_ln int 2 regular  }
	{ Bl_23_reload int 64 regular  }
	{ Bl_24_reload int 64 regular  }
	{ Bh_24_reload int 64 regular  }
	{ Bh_25_reload int 64 regular  }
	{ mux_case_2472534_out int 64 regular {pointer 1}  }
	{ mux_case_1470531_out int 64 regular {pointer 1}  }
	{ mux_case_0468529_out int 64 regular {pointer 1}  }
	{ Sbl_36_out int 2 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "or_ln", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "Bl_23_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Bl_24_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Bh_24_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Bh_25_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_2472534_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_1470531_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_0468529_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Sbl_36_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ or_ln sc_in sc_lv 2 signal 0 } 
	{ Bl_23_reload sc_in sc_lv 64 signal 1 } 
	{ Bl_24_reload sc_in sc_lv 64 signal 2 } 
	{ Bh_24_reload sc_in sc_lv 64 signal 3 } 
	{ Bh_25_reload sc_in sc_lv 64 signal 4 } 
	{ mux_case_2472534_out sc_out sc_lv 64 signal 5 } 
	{ mux_case_2472534_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ mux_case_1470531_out sc_out sc_lv 64 signal 6 } 
	{ mux_case_1470531_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ mux_case_0468529_out sc_out sc_lv 64 signal 7 } 
	{ mux_case_0468529_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ Sbl_36_out sc_out sc_lv 2 signal 8 } 
	{ Sbl_36_out_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "or_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "or_ln", "role": "default" }} , 
 	{ "name": "Bl_23_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bl_23_reload", "role": "default" }} , 
 	{ "name": "Bl_24_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bl_24_reload", "role": "default" }} , 
 	{ "name": "Bh_24_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_24_reload", "role": "default" }} , 
 	{ "name": "Bh_25_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_25_reload", "role": "default" }} , 
 	{ "name": "mux_case_2472534_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mux_case_2472534_out", "role": "default" }} , 
 	{ "name": "mux_case_2472534_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_2472534_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_1470531_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mux_case_1470531_out", "role": "default" }} , 
 	{ "name": "mux_case_1470531_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_1470531_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_0468529_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mux_case_0468529_out", "role": "default" }} , 
 	{ "name": "mux_case_0468529_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_0468529_out", "role": "ap_vld" }} , 
 	{ "name": "Sbl_36_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Sbl_36_out", "role": "default" }} , 
 	{ "name": "Sbl_36_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Sbl_36_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_180",
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
			{"Name" : "or_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bl_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2472534_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1470531_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_0468529_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Sbl_36_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_VITIS_LOOP_56_180 {
		or_ln {Type I LastRead 0 FirstWrite -1}
		Bl_23_reload {Type I LastRead 0 FirstWrite -1}
		Bl_24_reload {Type I LastRead 0 FirstWrite -1}
		Bh_24_reload {Type I LastRead 0 FirstWrite -1}
		Bh_25_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2472534_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1470531_out {Type O LastRead -1 FirstWrite 0}
		mux_case_0468529_out {Type O LastRead -1 FirstWrite 0}
		Sbl_36_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	or_ln { ap_none {  { or_ln in_data 0 2 } } }
	Bl_23_reload { ap_none {  { Bl_23_reload in_data 0 64 } } }
	Bl_24_reload { ap_none {  { Bl_24_reload in_data 0 64 } } }
	Bh_24_reload { ap_none {  { Bh_24_reload in_data 0 64 } } }
	Bh_25_reload { ap_none {  { Bh_25_reload in_data 0 64 } } }
	mux_case_2472534_out { ap_vld {  { mux_case_2472534_out out_data 1 64 }  { mux_case_2472534_out_ap_vld out_vld 1 1 } } }
	mux_case_1470531_out { ap_vld {  { mux_case_1470531_out out_data 1 64 }  { mux_case_1470531_out_ap_vld out_vld 1 1 } } }
	mux_case_0468529_out { ap_vld {  { mux_case_0468529_out out_data 1 64 }  { mux_case_0468529_out_ap_vld out_vld 1 1 } } }
	Sbl_36_out { ap_vld {  { Sbl_36_out out_data 1 2 }  { Sbl_36_out_ap_vld out_vld 1 1 } } }
}
