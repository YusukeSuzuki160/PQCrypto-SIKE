set moduleName mul_Pipeline_VITIS_LOOP_157_224
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
set C_modelName {mul_Pipeline_VITIS_LOOP_157_224}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ or_ln int 2 regular  }
	{ Sal_9_reload int 64 regular  }
	{ Sal_8_reload int 64 regular  }
	{ zext_ln65 int 2 regular  }
	{ Sbl_9_reload int 64 regular  }
	{ Sbl_8_reload int 64 regular  }
	{ zext_ln65_1 int 2 regular  }
	{ Bh_18_out int 64 regular {pointer 1}  }
	{ Bh_17_out int 64 regular {pointer 1}  }
	{ Ah_18_out int 64 regular {pointer 1}  }
	{ Ah_17_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "or_ln", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "Sal_9_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sal_8_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "Sbl_9_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sbl_8_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "Bh_18_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Bh_17_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ah_18_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ah_17_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ or_ln sc_in sc_lv 2 signal 0 } 
	{ Sal_9_reload sc_in sc_lv 64 signal 1 } 
	{ Sal_8_reload sc_in sc_lv 64 signal 2 } 
	{ zext_ln65 sc_in sc_lv 2 signal 3 } 
	{ Sbl_9_reload sc_in sc_lv 64 signal 4 } 
	{ Sbl_8_reload sc_in sc_lv 64 signal 5 } 
	{ zext_ln65_1 sc_in sc_lv 2 signal 6 } 
	{ Bh_18_out sc_out sc_lv 64 signal 7 } 
	{ Bh_18_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ Bh_17_out sc_out sc_lv 64 signal 8 } 
	{ Bh_17_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ Ah_18_out sc_out sc_lv 64 signal 9 } 
	{ Ah_18_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ Ah_17_out sc_out sc_lv 64 signal 10 } 
	{ Ah_17_out_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "or_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "or_ln", "role": "default" }} , 
 	{ "name": "Sal_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sal_9_reload", "role": "default" }} , 
 	{ "name": "Sal_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sal_8_reload", "role": "default" }} , 
 	{ "name": "zext_ln65", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln65", "role": "default" }} , 
 	{ "name": "Sbl_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_9_reload", "role": "default" }} , 
 	{ "name": "Sbl_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_8_reload", "role": "default" }} , 
 	{ "name": "zext_ln65_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln65_1", "role": "default" }} , 
 	{ "name": "Bh_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_18_out", "role": "default" }} , 
 	{ "name": "Bh_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Bh_18_out", "role": "ap_vld" }} , 
 	{ "name": "Bh_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_17_out", "role": "default" }} , 
 	{ "name": "Bh_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Bh_17_out", "role": "ap_vld" }} , 
 	{ "name": "Ah_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ah_18_out", "role": "default" }} , 
 	{ "name": "Ah_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ah_18_out", "role": "ap_vld" }} , 
 	{ "name": "Ah_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ah_17_out", "role": "default" }} , 
 	{ "name": "Ah_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ah_17_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_157_224",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "or_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Bh_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_64_1_1_U235", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_64_1_1_U236", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_VITIS_LOOP_157_224 {
		or_ln {Type I LastRead 0 FirstWrite -1}
		Sal_9_reload {Type I LastRead 0 FirstWrite -1}
		Sal_8_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln65 {Type I LastRead 0 FirstWrite -1}
		Sbl_9_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_8_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln65_1 {Type I LastRead 0 FirstWrite -1}
		Bh_18_out {Type O LastRead -1 FirstWrite 0}
		Bh_17_out {Type O LastRead -1 FirstWrite 0}
		Ah_18_out {Type O LastRead -1 FirstWrite 0}
		Ah_17_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	or_ln { ap_none {  { or_ln in_data 0 2 } } }
	Sal_9_reload { ap_none {  { Sal_9_reload in_data 0 64 } } }
	Sal_8_reload { ap_none {  { Sal_8_reload in_data 0 64 } } }
	zext_ln65 { ap_none {  { zext_ln65 in_data 0 2 } } }
	Sbl_9_reload { ap_none {  { Sbl_9_reload in_data 0 64 } } }
	Sbl_8_reload { ap_none {  { Sbl_8_reload in_data 0 64 } } }
	zext_ln65_1 { ap_none {  { zext_ln65_1 in_data 0 2 } } }
	Bh_18_out { ap_vld {  { Bh_18_out out_data 1 64 }  { Bh_18_out_ap_vld out_vld 1 1 } } }
	Bh_17_out { ap_vld {  { Bh_17_out out_data 1 64 }  { Bh_17_out_ap_vld out_vld 1 1 } } }
	Ah_18_out { ap_vld {  { Ah_18_out out_data 1 64 }  { Ah_18_out_ap_vld out_vld 1 1 } } }
	Ah_17_out { ap_vld {  { Ah_17_out out_data 1 64 }  { Ah_17_out_ap_vld out_vld 1 1 } } }
}
