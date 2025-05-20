set moduleName cshake256_simple_32_Pipeline_VITIS_LOOP_570_1
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
set C_modelName {cshake256_simple.32_Pipeline_VITIS_LOOP_570_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict t { MEM_WIDTH 8 MEM_SIZE 34 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict t_133 { MEM_WIDTH 8 MEM_SIZE 34 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict t_134 { MEM_WIDTH 8 MEM_SIZE 34 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict t_135 { MEM_WIDTH 8 MEM_SIZE 34 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict ephemeralsk { MEM_WIDTH 8 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ t int 8 regular {array 34 { 1 3 } 1 1 }  }
	{ t_133 int 8 regular {array 34 { 1 3 } 1 1 }  }
	{ t_134 int 8 regular {array 34 { 1 3 } 1 1 }  }
	{ t_135 int 8 regular {array 34 { 1 3 } 1 1 }  }
	{ ephemeralsk int 8 regular {array 32 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "t", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t_133", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t_134", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t_135", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ephemeralsk", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
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
	{ t_133_address0 sc_out sc_lv 6 signal 1 } 
	{ t_133_ce0 sc_out sc_logic 1 signal 1 } 
	{ t_133_q0 sc_in sc_lv 8 signal 1 } 
	{ t_134_address0 sc_out sc_lv 6 signal 2 } 
	{ t_134_ce0 sc_out sc_logic 1 signal 2 } 
	{ t_134_q0 sc_in sc_lv 8 signal 2 } 
	{ t_135_address0 sc_out sc_lv 6 signal 3 } 
	{ t_135_ce0 sc_out sc_logic 1 signal 3 } 
	{ t_135_q0 sc_in sc_lv 8 signal 3 } 
	{ ephemeralsk_address0 sc_out sc_lv 5 signal 4 } 
	{ ephemeralsk_ce0 sc_out sc_logic 1 signal 4 } 
	{ ephemeralsk_we0 sc_out sc_logic 1 signal 4 } 
	{ ephemeralsk_d0 sc_out sc_lv 8 signal 4 } 
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
 	{ "name": "t_133_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_133", "role": "address0" }} , 
 	{ "name": "t_133_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_133", "role": "ce0" }} , 
 	{ "name": "t_133_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_133", "role": "q0" }} , 
 	{ "name": "t_134_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_134", "role": "address0" }} , 
 	{ "name": "t_134_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_134", "role": "ce0" }} , 
 	{ "name": "t_134_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_134", "role": "q0" }} , 
 	{ "name": "t_135_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_135", "role": "address0" }} , 
 	{ "name": "t_135_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_135", "role": "ce0" }} , 
 	{ "name": "t_135_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_135", "role": "q0" }} , 
 	{ "name": "ephemeralsk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ephemeralsk", "role": "address0" }} , 
 	{ "name": "ephemeralsk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ephemeralsk", "role": "ce0" }} , 
 	{ "name": "ephemeralsk_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ephemeralsk", "role": "we0" }} , 
 	{ "name": "ephemeralsk_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ephemeralsk", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "cshake256_simple_32_Pipeline_VITIS_LOOP_570_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_133", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_134", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_135", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ephemeralsk", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_570_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_8_1_1_U81", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cshake256_simple_32_Pipeline_VITIS_LOOP_570_1 {
		t {Type I LastRead 0 FirstWrite -1}
		t_133 {Type I LastRead 0 FirstWrite -1}
		t_134 {Type I LastRead 0 FirstWrite -1}
		t_135 {Type I LastRead 0 FirstWrite -1}
		ephemeralsk {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	t { ap_memory {  { t_address0 mem_address 1 6 }  { t_ce0 mem_ce 1 1 }  { t_q0 mem_dout 0 8 } } }
	t_133 { ap_memory {  { t_133_address0 mem_address 1 6 }  { t_133_ce0 mem_ce 1 1 }  { t_133_q0 mem_dout 0 8 } } }
	t_134 { ap_memory {  { t_134_address0 mem_address 1 6 }  { t_134_ce0 mem_ce 1 1 }  { t_134_q0 mem_dout 0 8 } } }
	t_135 { ap_memory {  { t_135_address0 mem_address 1 6 }  { t_135_ce0 mem_ce 1 1 }  { t_135_q0 mem_dout 0 8 } } }
	ephemeralsk { ap_memory {  { ephemeralsk_address0 mem_address 1 5 }  { ephemeralsk_ce0 mem_ce 1 1 }  { ephemeralsk_we0 mem_we 1 1 }  { ephemeralsk_d0 mem_din 1 8 } } }
}
