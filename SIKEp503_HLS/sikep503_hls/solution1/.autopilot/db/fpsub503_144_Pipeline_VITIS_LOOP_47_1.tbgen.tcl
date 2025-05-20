set moduleName fpsub503_144_Pipeline_VITIS_LOOP_47_1
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
set C_modelName {fpsub503.144_Pipeline_VITIS_LOOP_47_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict c { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict a { MEM_WIDTH 64 MEM_SIZE 896 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict b { MEM_WIDTH 64 MEM_SIZE 896 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ c_offset int 1 regular  }
	{ c int 64 regular {array 16 { 0 3 } 0 1 }  }
	{ a_offset int 3 regular  }
	{ a_offset2 int 1 regular  }
	{ a int 64 regular {array 112 { 1 3 } 1 1 }  }
	{ b_offset int 3 regular  }
	{ b_offset4 int 1 regular  }
	{ b int 64 regular {array 112 { 1 3 } 1 1 }  }
	{ borrow_out int 1 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "c_offset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "a_offset2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "b_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "b_offset4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "borrow_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_offset sc_in sc_lv 1 signal 0 } 
	{ c_address0 sc_out sc_lv 4 signal 1 } 
	{ c_ce0 sc_out sc_logic 1 signal 1 } 
	{ c_we0 sc_out sc_logic 1 signal 1 } 
	{ c_d0 sc_out sc_lv 64 signal 1 } 
	{ a_offset sc_in sc_lv 3 signal 2 } 
	{ a_offset2 sc_in sc_lv 1 signal 3 } 
	{ a_address0 sc_out sc_lv 7 signal 4 } 
	{ a_ce0 sc_out sc_logic 1 signal 4 } 
	{ a_q0 sc_in sc_lv 64 signal 4 } 
	{ b_offset sc_in sc_lv 3 signal 5 } 
	{ b_offset4 sc_in sc_lv 1 signal 6 } 
	{ b_address0 sc_out sc_lv 7 signal 7 } 
	{ b_ce0 sc_out sc_logic 1 signal 7 } 
	{ b_q0 sc_in sc_lv 64 signal 7 } 
	{ borrow_out sc_out sc_lv 1 signal 8 } 
	{ borrow_out_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_offset", "role": "default" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we0" }} , 
 	{ "name": "c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c", "role": "d0" }} , 
 	{ "name": "a_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_offset", "role": "default" }} , 
 	{ "name": "a_offset2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_offset2", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "b_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_offset", "role": "default" }} , 
 	{ "name": "b_offset4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_offset4", "role": "default" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b", "role": "q0" }} , 
 	{ "name": "borrow_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "borrow_out", "role": "default" }} , 
 	{ "name": "borrow_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "borrow_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fpsub503_144_Pipeline_VITIS_LOOP_47_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_offset4", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fpsub503_144_Pipeline_VITIS_LOOP_47_1 {
		c_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a_offset2 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		b_offset4 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		borrow_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	c_offset { ap_none {  { c_offset in_data 0 1 } } }
	c { ap_memory {  { c_address0 mem_address 1 4 }  { c_ce0 mem_ce 1 1 }  { c_we0 mem_we 1 1 }  { c_d0 mem_din 1 64 } } }
	a_offset { ap_none {  { a_offset in_data 0 3 } } }
	a_offset2 { ap_none {  { a_offset2 in_data 0 1 } } }
	a { ap_memory {  { a_address0 mem_address 1 7 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 64 } } }
	b_offset { ap_none {  { b_offset in_data 0 3 } } }
	b_offset4 { ap_none {  { b_offset4 in_data 0 1 } } }
	b { ap_memory {  { b_address0 mem_address 1 7 }  { b_ce0 mem_ce 1 1 }  { b_q0 mem_dout 0 64 } } }
	borrow_out { ap_vld {  { borrow_out out_data 1 1 }  { borrow_out_ap_vld out_vld 1 1 } } }
}
