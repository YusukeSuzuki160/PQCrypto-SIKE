set moduleName fp2div2_503_Pipeline_VITIS_LOOP_78_1
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
set cdfgNum 712
set C_modelName {fp2div2_503_Pipeline_VITIS_LOOP_78_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict c_0 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict c_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ c_0 int 64 regular {array 8 { 2 3 } 1 1 }  }
	{ c_1 int 64 regular {array 8 { 2 3 } 1 1 }  }
	{ sext_ln75 int 1 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "c_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "c_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "sext_ln75", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_0_address0 sc_out sc_lv 3 signal 0 } 
	{ c_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ c_0_we0 sc_out sc_logic 1 signal 0 } 
	{ c_0_d0 sc_out sc_lv 64 signal 0 } 
	{ c_0_q0 sc_in sc_lv 64 signal 0 } 
	{ c_1_address0 sc_out sc_lv 3 signal 1 } 
	{ c_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ c_1_we0 sc_out sc_logic 1 signal 1 } 
	{ c_1_d0 sc_out sc_lv 64 signal 1 } 
	{ c_1_q0 sc_in sc_lv 64 signal 1 } 
	{ sext_ln75 sc_in sc_lv 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_0", "role": "address0" }} , 
 	{ "name": "c_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "ce0" }} , 
 	{ "name": "c_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "we0" }} , 
 	{ "name": "c_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_0", "role": "d0" }} , 
 	{ "name": "c_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_0", "role": "q0" }} , 
 	{ "name": "c_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_1", "role": "address0" }} , 
 	{ "name": "c_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "ce0" }} , 
 	{ "name": "c_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "we0" }} , 
 	{ "name": "c_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_1", "role": "d0" }} , 
 	{ "name": "c_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_1", "role": "q0" }} , 
 	{ "name": "sext_ln75", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sext_ln75", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_78_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_78_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p503_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fp2div2_503_Pipeline_VITIS_LOOP_78_1 {
		c_0 {Type IO LastRead 0 FirstWrite 3}
		c_1 {Type IO LastRead 0 FirstWrite 3}
		sext_ln75 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20", "Max" : "20"}
	, {"Name" : "Interval", "Min" : "20", "Max" : "20"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	c_0 { ap_memory {  { c_0_address0 mem_address 1 3 }  { c_0_ce0 mem_ce 1 1 }  { c_0_we0 mem_we 1 1 }  { c_0_d0 mem_din 1 64 }  { c_0_q0 mem_dout 0 64 } } }
	c_1 { ap_memory {  { c_1_address0 mem_address 1 3 }  { c_1_ce0 mem_ce 1 1 }  { c_1_we0 mem_we 1 1 }  { c_1_d0 mem_din 1 64 }  { c_1_q0 mem_dout 0 64 } } }
	sext_ln75 { ap_none {  { sext_ln75 in_data 0 1 } } }
}
