set moduleName mul_Pipeline_VITIS_LOOP_157_260
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
set C_modelName {mul_Pipeline_VITIS_LOOP_157_260}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ or_ln int 2 regular  }
	{ Sal_11_reload int 64 regular  }
	{ Sal_10_reload int 64 regular  }
	{ zext_ln65_4 int 2 regular  }
	{ Sbl_5_reload int 64 regular  }
	{ Sbl_reload int 64 regular  }
	{ zext_ln65_5 int 2 regular  }
	{ Ah_25_out int 64 regular {pointer 1}  }
	{ Ah_24_out int 64 regular {pointer 1}  }
	{ Bh_25_out int 64 regular {pointer 1}  }
	{ Bh_24_out int 64 regular {pointer 1}  }
	{ Bh_38_out int 64 regular {pointer 1}  }
	{ Ah_38_out int 64 regular {pointer 1}  }
	{ B_32_out int 64 regular {pointer 1}  }
	{ A_31_out int 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "or_ln", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "Sal_11_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sal_10_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_4", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "Sbl_5_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Sbl_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln65_5", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "Ah_25_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ah_24_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Bh_25_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Bh_24_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Bh_38_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ah_38_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_32_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_31_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ or_ln sc_in sc_lv 2 signal 0 } 
	{ Sal_11_reload sc_in sc_lv 64 signal 1 } 
	{ Sal_10_reload sc_in sc_lv 64 signal 2 } 
	{ zext_ln65_4 sc_in sc_lv 2 signal 3 } 
	{ Sbl_5_reload sc_in sc_lv 64 signal 4 } 
	{ Sbl_reload sc_in sc_lv 64 signal 5 } 
	{ zext_ln65_5 sc_in sc_lv 2 signal 6 } 
	{ Ah_25_out sc_out sc_lv 64 signal 7 } 
	{ Ah_25_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ Ah_24_out sc_out sc_lv 64 signal 8 } 
	{ Ah_24_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ Bh_25_out sc_out sc_lv 64 signal 9 } 
	{ Bh_25_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ Bh_24_out sc_out sc_lv 64 signal 10 } 
	{ Bh_24_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ Bh_38_out sc_out sc_lv 64 signal 11 } 
	{ Bh_38_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ Ah_38_out sc_out sc_lv 64 signal 12 } 
	{ Ah_38_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ B_32_out sc_out sc_lv 64 signal 13 } 
	{ B_32_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ A_31_out sc_out sc_lv 64 signal 14 } 
	{ A_31_out_ap_vld sc_out sc_logic 1 outvld 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "or_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "or_ln", "role": "default" }} , 
 	{ "name": "Sal_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sal_11_reload", "role": "default" }} , 
 	{ "name": "Sal_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sal_10_reload", "role": "default" }} , 
 	{ "name": "zext_ln65_4", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln65_4", "role": "default" }} , 
 	{ "name": "Sbl_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_5_reload", "role": "default" }} , 
 	{ "name": "Sbl_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Sbl_reload", "role": "default" }} , 
 	{ "name": "zext_ln65_5", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln65_5", "role": "default" }} , 
 	{ "name": "Ah_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ah_25_out", "role": "default" }} , 
 	{ "name": "Ah_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ah_25_out", "role": "ap_vld" }} , 
 	{ "name": "Ah_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ah_24_out", "role": "default" }} , 
 	{ "name": "Ah_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ah_24_out", "role": "ap_vld" }} , 
 	{ "name": "Bh_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_25_out", "role": "default" }} , 
 	{ "name": "Bh_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Bh_25_out", "role": "ap_vld" }} , 
 	{ "name": "Bh_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_24_out", "role": "default" }} , 
 	{ "name": "Bh_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Bh_24_out", "role": "ap_vld" }} , 
 	{ "name": "Bh_38_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Bh_38_out", "role": "default" }} , 
 	{ "name": "Bh_38_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Bh_38_out", "role": "ap_vld" }} , 
 	{ "name": "Ah_38_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Ah_38_out", "role": "default" }} , 
 	{ "name": "Ah_38_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ah_38_out", "role": "ap_vld" }} , 
 	{ "name": "B_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_32_out", "role": "default" }} , 
 	{ "name": "B_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_32_out", "role": "ap_vld" }} , 
 	{ "name": "A_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_31_out", "role": "default" }} , 
 	{ "name": "A_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_31_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_157_260",
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
			{"Name" : "Sal_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sal_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Sbl_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln65_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ah_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Bh_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ah_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_31_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_64_1_1_U428", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_64_1_1_U429", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_VITIS_LOOP_157_260 {
		or_ln {Type I LastRead 0 FirstWrite -1}
		Sal_11_reload {Type I LastRead 0 FirstWrite -1}
		Sal_10_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln65_4 {Type I LastRead 0 FirstWrite -1}
		Sbl_5_reload {Type I LastRead 0 FirstWrite -1}
		Sbl_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln65_5 {Type I LastRead 0 FirstWrite -1}
		Ah_25_out {Type O LastRead -1 FirstWrite 0}
		Ah_24_out {Type O LastRead -1 FirstWrite 0}
		Bh_25_out {Type O LastRead -1 FirstWrite 0}
		Bh_24_out {Type O LastRead -1 FirstWrite 0}
		Bh_38_out {Type O LastRead -1 FirstWrite 0}
		Ah_38_out {Type O LastRead -1 FirstWrite 0}
		B_32_out {Type O LastRead -1 FirstWrite 0}
		A_31_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	or_ln { ap_none {  { or_ln in_data 0 2 } } }
	Sal_11_reload { ap_none {  { Sal_11_reload in_data 0 64 } } }
	Sal_10_reload { ap_none {  { Sal_10_reload in_data 0 64 } } }
	zext_ln65_4 { ap_none {  { zext_ln65_4 in_data 0 2 } } }
	Sbl_5_reload { ap_none {  { Sbl_5_reload in_data 0 64 } } }
	Sbl_reload { ap_none {  { Sbl_reload in_data 0 64 } } }
	zext_ln65_5 { ap_none {  { zext_ln65_5 in_data 0 2 } } }
	Ah_25_out { ap_vld {  { Ah_25_out out_data 1 64 }  { Ah_25_out_ap_vld out_vld 1 1 } } }
	Ah_24_out { ap_vld {  { Ah_24_out out_data 1 64 }  { Ah_24_out_ap_vld out_vld 1 1 } } }
	Bh_25_out { ap_vld {  { Bh_25_out out_data 1 64 }  { Bh_25_out_ap_vld out_vld 1 1 } } }
	Bh_24_out { ap_vld {  { Bh_24_out out_data 1 64 }  { Bh_24_out_ap_vld out_vld 1 1 } } }
	Bh_38_out { ap_vld {  { Bh_38_out out_data 1 64 }  { Bh_38_out_ap_vld out_vld 1 1 } } }
	Ah_38_out { ap_vld {  { Ah_38_out out_data 1 64 }  { Ah_38_out_ap_vld out_vld 1 1 } } }
	B_32_out { ap_vld {  { B_32_out out_data 1 64 }  { B_32_out_ap_vld out_vld 1 1 } } }
	A_31_out { ap_vld {  { A_31_out out_data 1 64 }  { A_31_out_ap_vld out_vld 1 1 } } }
}
