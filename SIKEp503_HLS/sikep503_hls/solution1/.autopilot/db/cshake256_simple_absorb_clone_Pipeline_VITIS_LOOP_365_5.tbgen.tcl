set moduleName cshake256_simple_absorb_clone_Pipeline_VITIS_LOOP_365_5
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
set C_modelName {cshake256_simple_absorb.clone_Pipeline_VITIS_LOOP_365_5}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict t { MEM_WIDTH 8 MEM_SIZE 50 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict t_60 { MEM_WIDTH 8 MEM_SIZE 50 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict t_61 { MEM_WIDTH 8 MEM_SIZE 50 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict t_62 { MEM_WIDTH 8 MEM_SIZE 50 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s { MEM_WIDTH 64 MEM_SIZE 200 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ t int 8 regular {array 50 { 1 1 } 1 1 }  }
	{ t_60 int 8 regular {array 50 { 1 1 } 1 1 }  }
	{ t_61 int 8 regular {array 50 { 1 1 } 1 1 }  }
	{ t_62 int 8 regular {array 50 { 1 1 } 1 1 }  }
	{ s int 64 regular {array 25 { 0 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "t", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t_60", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t_61", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t_62", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t_address0 sc_out sc_lv 6 signal 0 } 
	{ t_ce0 sc_out sc_logic 1 signal 0 } 
	{ t_q0 sc_in sc_lv 8 signal 0 } 
	{ t_address1 sc_out sc_lv 6 signal 0 } 
	{ t_ce1 sc_out sc_logic 1 signal 0 } 
	{ t_q1 sc_in sc_lv 8 signal 0 } 
	{ t_60_address0 sc_out sc_lv 6 signal 1 } 
	{ t_60_ce0 sc_out sc_logic 1 signal 1 } 
	{ t_60_q0 sc_in sc_lv 8 signal 1 } 
	{ t_60_address1 sc_out sc_lv 6 signal 1 } 
	{ t_60_ce1 sc_out sc_logic 1 signal 1 } 
	{ t_60_q1 sc_in sc_lv 8 signal 1 } 
	{ t_61_address0 sc_out sc_lv 6 signal 2 } 
	{ t_61_ce0 sc_out sc_logic 1 signal 2 } 
	{ t_61_q0 sc_in sc_lv 8 signal 2 } 
	{ t_61_address1 sc_out sc_lv 6 signal 2 } 
	{ t_61_ce1 sc_out sc_logic 1 signal 2 } 
	{ t_61_q1 sc_in sc_lv 8 signal 2 } 
	{ t_62_address0 sc_out sc_lv 6 signal 3 } 
	{ t_62_ce0 sc_out sc_logic 1 signal 3 } 
	{ t_62_q0 sc_in sc_lv 8 signal 3 } 
	{ t_62_address1 sc_out sc_lv 6 signal 3 } 
	{ t_62_ce1 sc_out sc_logic 1 signal 3 } 
	{ t_62_q1 sc_in sc_lv 8 signal 3 } 
	{ s_address0 sc_out sc_lv 5 signal 4 } 
	{ s_ce0 sc_out sc_logic 1 signal 4 } 
	{ s_we0 sc_out sc_lv 8 signal 4 } 
	{ s_d0 sc_out sc_lv 64 signal 4 } 
	{ s_address1 sc_out sc_lv 5 signal 4 } 
	{ s_ce1 sc_out sc_logic 1 signal 4 } 
	{ s_q1 sc_in sc_lv 64 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t", "role": "address0" }} , 
 	{ "name": "t_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t", "role": "ce0" }} , 
 	{ "name": "t_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t", "role": "q0" }} , 
 	{ "name": "t_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t", "role": "address1" }} , 
 	{ "name": "t_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t", "role": "ce1" }} , 
 	{ "name": "t_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t", "role": "q1" }} , 
 	{ "name": "t_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_60", "role": "address0" }} , 
 	{ "name": "t_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_60", "role": "ce0" }} , 
 	{ "name": "t_60_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_60", "role": "q0" }} , 
 	{ "name": "t_60_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_60", "role": "address1" }} , 
 	{ "name": "t_60_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_60", "role": "ce1" }} , 
 	{ "name": "t_60_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_60", "role": "q1" }} , 
 	{ "name": "t_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_61", "role": "address0" }} , 
 	{ "name": "t_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_61", "role": "ce0" }} , 
 	{ "name": "t_61_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_61", "role": "q0" }} , 
 	{ "name": "t_61_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_61", "role": "address1" }} , 
 	{ "name": "t_61_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_61", "role": "ce1" }} , 
 	{ "name": "t_61_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_61", "role": "q1" }} , 
 	{ "name": "t_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_62", "role": "address0" }} , 
 	{ "name": "t_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_62", "role": "ce0" }} , 
 	{ "name": "t_62_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_62", "role": "q0" }} , 
 	{ "name": "t_62_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_62", "role": "address1" }} , 
 	{ "name": "t_62_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_62", "role": "ce1" }} , 
 	{ "name": "t_62_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_62", "role": "q1" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s", "role": "address1" }} , 
 	{ "name": "s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce1" }} , 
 	{ "name": "s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "cshake256_simple_absorb_clone_Pipeline_VITIS_LOOP_365_5",
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
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_365_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cshake256_simple_absorb_clone_Pipeline_VITIS_LOOP_365_5 {
		t {Type I LastRead 2 FirstWrite -1}
		t_60 {Type I LastRead 2 FirstWrite -1}
		t_61 {Type I LastRead 2 FirstWrite -1}
		t_62 {Type I LastRead 2 FirstWrite -1}
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
	t { ap_memory {  { t_address0 mem_address 1 6 }  { t_ce0 mem_ce 1 1 }  { t_q0 mem_dout 0 8 }  { t_address1 MemPortADDR2 1 6 }  { t_ce1 MemPortCE2 1 1 }  { t_q1 MemPortDOUT2 0 8 } } }
	t_60 { ap_memory {  { t_60_address0 mem_address 1 6 }  { t_60_ce0 mem_ce 1 1 }  { t_60_q0 mem_dout 0 8 }  { t_60_address1 MemPortADDR2 1 6 }  { t_60_ce1 MemPortCE2 1 1 }  { t_60_q1 MemPortDOUT2 0 8 } } }
	t_61 { ap_memory {  { t_61_address0 mem_address 1 6 }  { t_61_ce0 mem_ce 1 1 }  { t_61_q0 mem_dout 0 8 }  { t_61_address1 MemPortADDR2 1 6 }  { t_61_ce1 MemPortCE2 1 1 }  { t_61_q1 MemPortDOUT2 0 8 } } }
	t_62 { ap_memory {  { t_62_address0 mem_address 1 6 }  { t_62_ce0 mem_ce 1 1 }  { t_62_q0 mem_dout 0 8 }  { t_62_address1 MemPortADDR2 1 6 }  { t_62_ce1 MemPortCE2 1 1 }  { t_62_q1 MemPortDOUT2 0 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 5 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 8 }  { s_d0 mem_din 1 64 }  { s_address1 MemPortADDR2 1 5 }  { s_ce1 MemPortCE2 1 1 }  { s_q1 MemPortDOUT2 0 64 } } }
}
