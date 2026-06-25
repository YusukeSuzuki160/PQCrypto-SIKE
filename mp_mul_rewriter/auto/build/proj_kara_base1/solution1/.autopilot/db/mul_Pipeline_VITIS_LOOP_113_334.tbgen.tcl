set moduleName mul_Pipeline_VITIS_LOOP_113_334
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
set C_modelName {mul_Pipeline_VITIS_LOOP_113_334}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ Pacc_4 int 324 regular  }
	{ z0_29_out int 64 regular {pointer 1}  }
	{ z0_28_out int 64 regular {pointer 1}  }
	{ z0_27_out int 64 regular {pointer 1}  }
	{ z0_26_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "Pacc_4", "interface" : "wire", "bitwidth" : 324, "direction" : "READONLY"} , 
 	{ "Name" : "z0_29_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "z0_28_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "z0_27_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "z0_26_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Pacc_4 sc_in sc_lv 324 signal 0 } 
	{ z0_29_out sc_out sc_lv 64 signal 1 } 
	{ z0_29_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ z0_28_out sc_out sc_lv 64 signal 2 } 
	{ z0_28_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ z0_27_out sc_out sc_lv 64 signal 3 } 
	{ z0_27_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ z0_26_out sc_out sc_lv 64 signal 4 } 
	{ z0_26_out_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Pacc_4", "direction": "in", "datatype": "sc_lv", "bitwidth":324, "type": "signal", "bundle":{"name": "Pacc_4", "role": "default" }} , 
 	{ "name": "z0_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z0_29_out", "role": "default" }} , 
 	{ "name": "z0_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "z0_29_out", "role": "ap_vld" }} , 
 	{ "name": "z0_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z0_28_out", "role": "default" }} , 
 	{ "name": "z0_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "z0_28_out", "role": "ap_vld" }} , 
 	{ "name": "z0_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z0_27_out", "role": "default" }} , 
 	{ "name": "z0_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "z0_27_out", "role": "ap_vld" }} , 
 	{ "name": "z0_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z0_26_out", "role": "default" }} , 
 	{ "name": "z0_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "z0_26_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_113_334",
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
			{"Name" : "Pacc_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "z0_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "z0_26_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partselect_64ns_1056s_32ns_64_1_1_U259", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_VITIS_LOOP_113_334 {
		Pacc_4 {Type I LastRead 0 FirstWrite -1}
		z0_29_out {Type O LastRead -1 FirstWrite 0}
		z0_28_out {Type O LastRead -1 FirstWrite 0}
		z0_27_out {Type O LastRead -1 FirstWrite 0}
		z0_26_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Pacc_4 { ap_none {  { Pacc_4 in_data 0 324 } } }
	z0_29_out { ap_vld {  { z0_29_out out_data 1 64 }  { z0_29_out_ap_vld out_vld 1 1 } } }
	z0_28_out { ap_vld {  { z0_28_out out_data 1 64 }  { z0_28_out_ap_vld out_vld 1 1 } } }
	z0_27_out { ap_vld {  { z0_27_out out_data 1 64 }  { z0_27_out_ap_vld out_vld 1 1 } } }
	z0_26_out { ap_vld {  { z0_26_out out_data 1 64 }  { z0_26_out_ap_vld out_vld 1 1 } } }
}
