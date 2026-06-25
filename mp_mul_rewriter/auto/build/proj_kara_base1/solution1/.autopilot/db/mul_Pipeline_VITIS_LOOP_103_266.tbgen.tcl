set moduleName mul_Pipeline_VITIS_LOOP_103_266
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
set C_modelName {mul_Pipeline_VITIS_LOOP_103_266}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ shl_ln81_6 int 3 regular  }
	{ z1_61_reload int 64 regular  }
	{ z1_60_reload int 64 regular  }
	{ z1_59_reload int 64 regular  }
	{ z1_58_reload int 64 regular  }
	{ W1v_16_out int 258 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "shl_ln81_6", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "z1_61_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z1_60_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z1_59_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "z1_58_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "W1v_16_out", "interface" : "wire", "bitwidth" : 258, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ shl_ln81_6 sc_in sc_lv 3 signal 0 } 
	{ z1_61_reload sc_in sc_lv 64 signal 1 } 
	{ z1_60_reload sc_in sc_lv 64 signal 2 } 
	{ z1_59_reload sc_in sc_lv 64 signal 3 } 
	{ z1_58_reload sc_in sc_lv 64 signal 4 } 
	{ W1v_16_out sc_out sc_lv 258 signal 5 } 
	{ W1v_16_out_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "shl_ln81_6", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "shl_ln81_6", "role": "default" }} , 
 	{ "name": "z1_61_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z1_61_reload", "role": "default" }} , 
 	{ "name": "z1_60_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z1_60_reload", "role": "default" }} , 
 	{ "name": "z1_59_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z1_59_reload", "role": "default" }} , 
 	{ "name": "z1_58_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z1_58_reload", "role": "default" }} , 
 	{ "name": "W1v_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":258, "type": "signal", "bundle":{"name": "W1v_16_out", "role": "default" }} , 
 	{ "name": "W1v_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "W1v_16_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_103_266",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shl_ln81_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_61_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_60_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_59_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "z1_58_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "W1v_16_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_64_1_1_U471", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mul_Pipeline_VITIS_LOOP_103_266 {
		shl_ln81_6 {Type I LastRead 0 FirstWrite -1}
		z1_61_reload {Type I LastRead 0 FirstWrite -1}
		z1_60_reload {Type I LastRead 0 FirstWrite -1}
		z1_59_reload {Type I LastRead 0 FirstWrite -1}
		z1_58_reload {Type I LastRead 0 FirstWrite -1}
		W1v_16_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	shl_ln81_6 { ap_none {  { shl_ln81_6 in_data 0 3 } } }
	z1_61_reload { ap_none {  { z1_61_reload in_data 0 64 } } }
	z1_60_reload { ap_none {  { z1_60_reload in_data 0 64 } } }
	z1_59_reload { ap_none {  { z1_59_reload in_data 0 64 } } }
	z1_58_reload { ap_none {  { z1_58_reload in_data 0 64 } } }
	W1v_16_out { ap_vld {  { W1v_16_out out_data 1 258 }  { W1v_16_out_ap_vld out_vld 1 1 } } }
}
