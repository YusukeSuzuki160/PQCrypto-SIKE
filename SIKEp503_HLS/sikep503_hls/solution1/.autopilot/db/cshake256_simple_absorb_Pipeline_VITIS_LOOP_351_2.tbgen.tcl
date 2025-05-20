set moduleName cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2
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
set C_modelName {cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict in_0 { MEM_WIDTH 8 MEM_SIZE 107 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict in_1 { MEM_WIDTH 8 MEM_SIZE 107 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict in_2 { MEM_WIDTH 8 MEM_SIZE 107 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict in_3 { MEM_WIDTH 8 MEM_SIZE 107 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s { MEM_WIDTH 64 MEM_SIZE 200 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ idx int 9 regular  }
	{ in_0 int 8 regular {array 107 { 1 1 } 1 1 }  }
	{ in_1 int 8 regular {array 107 { 1 1 } 1 1 }  }
	{ in_2 int 8 regular {array 107 { 1 1 } 1 1 }  }
	{ in_3 int 8 regular {array 107 { 1 1 } 1 1 }  }
	{ s int 64 regular {array 25 { 0 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "idx", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "in_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ idx sc_in sc_lv 9 signal 0 } 
	{ in_0_address0 sc_out sc_lv 7 signal 1 } 
	{ in_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_0_q0 sc_in sc_lv 8 signal 1 } 
	{ in_0_address1 sc_out sc_lv 7 signal 1 } 
	{ in_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ in_0_q1 sc_in sc_lv 8 signal 1 } 
	{ in_1_address0 sc_out sc_lv 7 signal 2 } 
	{ in_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_1_q0 sc_in sc_lv 8 signal 2 } 
	{ in_1_address1 sc_out sc_lv 7 signal 2 } 
	{ in_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ in_1_q1 sc_in sc_lv 8 signal 2 } 
	{ in_2_address0 sc_out sc_lv 7 signal 3 } 
	{ in_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ in_2_q0 sc_in sc_lv 8 signal 3 } 
	{ in_2_address1 sc_out sc_lv 7 signal 3 } 
	{ in_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ in_2_q1 sc_in sc_lv 8 signal 3 } 
	{ in_3_address0 sc_out sc_lv 7 signal 4 } 
	{ in_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_3_q0 sc_in sc_lv 8 signal 4 } 
	{ in_3_address1 sc_out sc_lv 7 signal 4 } 
	{ in_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ in_3_q1 sc_in sc_lv 8 signal 4 } 
	{ s_address0 sc_out sc_lv 5 signal 5 } 
	{ s_ce0 sc_out sc_logic 1 signal 5 } 
	{ s_we0 sc_out sc_lv 8 signal 5 } 
	{ s_d0 sc_out sc_lv 64 signal 5 } 
	{ s_address1 sc_out sc_lv 5 signal 5 } 
	{ s_ce1 sc_out sc_logic 1 signal 5 } 
	{ s_q1 sc_in sc_lv 64 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "idx", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "idx", "role": "default" }} , 
 	{ "name": "in_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_0", "role": "address0" }} , 
 	{ "name": "in_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_0", "role": "ce0" }} , 
 	{ "name": "in_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_0", "role": "q0" }} , 
 	{ "name": "in_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_0", "role": "address1" }} , 
 	{ "name": "in_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_0", "role": "ce1" }} , 
 	{ "name": "in_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_0", "role": "q1" }} , 
 	{ "name": "in_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_1", "role": "address0" }} , 
 	{ "name": "in_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_1", "role": "ce0" }} , 
 	{ "name": "in_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_1", "role": "q0" }} , 
 	{ "name": "in_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_1", "role": "address1" }} , 
 	{ "name": "in_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_1", "role": "ce1" }} , 
 	{ "name": "in_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_1", "role": "q1" }} , 
 	{ "name": "in_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_2", "role": "address0" }} , 
 	{ "name": "in_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_2", "role": "ce0" }} , 
 	{ "name": "in_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_2", "role": "q0" }} , 
 	{ "name": "in_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_2", "role": "address1" }} , 
 	{ "name": "in_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_2", "role": "ce1" }} , 
 	{ "name": "in_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_2", "role": "q1" }} , 
 	{ "name": "in_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_3", "role": "address0" }} , 
 	{ "name": "in_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_3", "role": "ce0" }} , 
 	{ "name": "in_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_3", "role": "q0" }} , 
 	{ "name": "in_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_3", "role": "address1" }} , 
 	{ "name": "in_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_3", "role": "ce1" }} , 
 	{ "name": "in_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_3", "role": "q1" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s", "role": "address1" }} , 
 	{ "name": "s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce1" }} , 
 	{ "name": "s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2",
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
			{"Name" : "idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_351_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cshake256_simple_absorb_Pipeline_VITIS_LOOP_351_2 {
		idx {Type I LastRead 0 FirstWrite -1}
		in_0 {Type I LastRead 2 FirstWrite -1}
		in_1 {Type I LastRead 2 FirstWrite -1}
		in_2 {Type I LastRead 2 FirstWrite -1}
		in_3 {Type I LastRead 2 FirstWrite -1}
		s {Type IO LastRead 0 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20", "Max" : "20"}
	, {"Name" : "Interval", "Min" : "20", "Max" : "20"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	idx { ap_none {  { idx in_data 0 9 } } }
	in_0 { ap_memory {  { in_0_address0 mem_address 1 7 }  { in_0_ce0 mem_ce 1 1 }  { in_0_q0 mem_dout 0 8 }  { in_0_address1 MemPortADDR2 1 7 }  { in_0_ce1 MemPortCE2 1 1 }  { in_0_q1 MemPortDOUT2 0 8 } } }
	in_1 { ap_memory {  { in_1_address0 mem_address 1 7 }  { in_1_ce0 mem_ce 1 1 }  { in_1_q0 mem_dout 0 8 }  { in_1_address1 MemPortADDR2 1 7 }  { in_1_ce1 MemPortCE2 1 1 }  { in_1_q1 MemPortDOUT2 0 8 } } }
	in_2 { ap_memory {  { in_2_address0 mem_address 1 7 }  { in_2_ce0 mem_ce 1 1 }  { in_2_q0 mem_dout 0 8 }  { in_2_address1 MemPortADDR2 1 7 }  { in_2_ce1 MemPortCE2 1 1 }  { in_2_q1 MemPortDOUT2 0 8 } } }
	in_3 { ap_memory {  { in_3_address0 mem_address 1 7 }  { in_3_ce0 mem_ce 1 1 }  { in_3_q0 mem_dout 0 8 }  { in_3_address1 MemPortADDR2 1 7 }  { in_3_ce1 MemPortCE2 1 1 }  { in_3_q1 MemPortDOUT2 0 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 5 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 8 }  { s_d0 mem_din 1 64 }  { s_address1 MemPortADDR2 1 5 }  { s_ce1 MemPortCE2 1 1 }  { s_q1 MemPortDOUT2 0 64 } } }
}
