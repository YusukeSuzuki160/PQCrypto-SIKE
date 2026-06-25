set moduleName mul_Pipeline_VITIS_LOOP_56_148
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
set C_modelName {mul_Pipeline_VITIS_LOOP_56_148}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ add_ln56_7_cast int 2 regular  }
	{ p_reload102 int 64 regular  }
	{ zext_ln56_1 int 64 regular  }
	{ Sbl_33_out int 64 regular {pointer 1}  }
	{ carry_13_out int 2 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "add_ln56_7_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload102", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln56_1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sbl_33_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "carry_13_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ add_ln56_7_cast sc_in sc_lv 2 signal 0 } 
	{ p_reload102 sc_in sc_lv 64 signal 1 } 
	{ zext_ln56_1 sc_in sc_lv 64 signal 2 } 
	{ Sbl_33_out sc_out sc_lv 64 signal 3 } 
	{ Sbl_33_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ carry_13_out sc_out sc_lv 2 signal 4 } 
	{ carry_13_out_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "add_ln56_7_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "add_ln56_7_cast", "role": "default" }} , 
 	{ "name": "p_reload102", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_reload102", "role": "default" }} , 
 	{ "name": "zext_ln56_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "zext_ln56_1", "role": "default" }} , 
 	{ "name": "Sbl_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_33_out", "role": "default" }} , 
 	{ "name": "Sbl_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Sbl_33_out", "role": "ap_vld" }} , 
 	{ "name": "carry_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "carry_13_out", "role": "default" }} , 
 	{ "name": "carry_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "carry_13_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_56_148",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln56_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload102", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln56_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "carry_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_VITIS_LOOP_56_148 {
		add_ln56_7_cast {Type I LastRead 0 FirstWrite -1}
		p_reload102 {Type I LastRead 0 FirstWrite -1}
		zext_ln56_1 {Type I LastRead 0 FirstWrite -1}
		Sbl_33_out {Type O LastRead -1 FirstWrite 0}
		carry_13_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	add_ln56_7_cast { ap_none {  { add_ln56_7_cast in_data 0 2 } } }
	p_reload102 { ap_none {  { p_reload102 in_data 0 64 } } }
	zext_ln56_1 { ap_none {  { zext_ln56_1 in_data 0 64 } } }
	Sbl_33_out { ap_vld {  { Sbl_33_out out_data 1 64 }  { Sbl_33_out_ap_vld out_vld 1 1 } } }
	carry_13_out { ap_vld {  { carry_13_out out_data 1 2 }  { carry_13_out_ap_vld out_vld 1 1 } } }
}
