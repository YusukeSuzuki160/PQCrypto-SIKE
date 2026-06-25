set moduleName mul_Pipeline_VITIS_LOOP_113_378
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
set C_modelName {mul_Pipeline_VITIS_LOOP_113_378}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ or_ln1 int 3 regular  }
	{ Pacc_9 int 1056 regular  }
	{ z2_54_out int 64 regular {pointer 1}  }
	{ z2_55_out int 64 regular {pointer 1}  }
	{ z2_56_out int 64 regular {pointer 1}  }
	{ z2_57_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "or_ln1", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "Pacc_9", "interface" : "wire", "bitwidth" : 1056, "direction" : "READONLY"} , 
 	{ "Name" : "z2_54_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "z2_55_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "z2_56_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "z2_57_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ or_ln1 sc_in sc_lv 3 signal 0 } 
	{ Pacc_9 sc_in sc_lv 1056 signal 1 } 
	{ z2_54_out sc_out sc_lv 64 signal 2 } 
	{ z2_54_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ z2_55_out sc_out sc_lv 64 signal 3 } 
	{ z2_55_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ z2_56_out sc_out sc_lv 64 signal 4 } 
	{ z2_56_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ z2_57_out sc_out sc_lv 64 signal 5 } 
	{ z2_57_out_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "or_ln1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "or_ln1", "role": "default" }} , 
 	{ "name": "Pacc_9", "direction": "in", "datatype": "sc_lv", "bitwidth":1056, "type": "signal", "bundle":{"name": "Pacc_9", "role": "default" }} , 
 	{ "name": "z2_54_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2_54_out", "role": "default" }} , 
 	{ "name": "z2_54_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "z2_54_out", "role": "ap_vld" }} , 
 	{ "name": "z2_55_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2_55_out", "role": "default" }} , 
 	{ "name": "z2_55_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "z2_55_out", "role": "ap_vld" }} , 
 	{ "name": "z2_56_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2_56_out", "role": "default" }} , 
 	{ "name": "z2_56_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "z2_56_out", "role": "ap_vld" }} , 
 	{ "name": "z2_57_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2_57_out", "role": "default" }} , 
 	{ "name": "z2_57_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "z2_57_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_378",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "or_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Pacc_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "z2_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z2_57_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partselect_64ns_1056ns_32ns_64_1_1_U535", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_VITIS_LOOP_113_378 {
		or_ln1 {Type I LastRead 0 FirstWrite -1}
		Pacc_9 {Type I LastRead 0 FirstWrite -1}
		z2_54_out {Type O LastRead -1 FirstWrite 0}
		z2_55_out {Type O LastRead -1 FirstWrite 0}
		z2_56_out {Type O LastRead -1 FirstWrite 0}
		z2_57_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	or_ln1 { ap_none {  { or_ln1 in_data 0 3 } } }
	Pacc_9 { ap_none {  { Pacc_9 in_data 0 1056 } } }
	z2_54_out { ap_vld {  { z2_54_out out_data 1 64 }  { z2_54_out_ap_vld out_vld 1 1 } } }
	z2_55_out { ap_vld {  { z2_55_out out_data 1 64 }  { z2_55_out_ap_vld out_vld 1 1 } } }
	z2_56_out { ap_vld {  { z2_56_out out_data 1 64 }  { z2_56_out_ap_vld out_vld 1 1 } } }
	z2_57_out { ap_vld {  { z2_57_out out_data 1 64 }  { z2_57_out_ap_vld out_vld 1 1 } } }
}
