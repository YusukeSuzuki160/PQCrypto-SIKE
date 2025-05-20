set moduleName cshake256_simple_32_clone_Pipeline_VITIS_LOOP_570_1
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
set C_modelName {cshake256_simple.32.clone_Pipeline_VITIS_LOOP_570_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict t { MEM_WIDTH 8 MEM_SIZE 34 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict t_130 { MEM_WIDTH 8 MEM_SIZE 34 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict t_131 { MEM_WIDTH 8 MEM_SIZE 34 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict t_132 { MEM_WIDTH 8 MEM_SIZE 34 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_r { MEM_WIDTH 8 MEM_SIZE 24 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ t int 8 regular {array 34 { 1 3 } 1 1 }  }
	{ t_130 int 8 regular {array 34 { 1 3 } 1 1 }  }
	{ t_131 int 8 regular {array 34 { 1 3 } 1 1 }  }
	{ t_132 int 8 regular {array 34 { 1 3 } 1 1 }  }
	{ output_r int 8 regular {array 24 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "t", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t_130", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t_131", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t_132", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
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
	{ t_130_address0 sc_out sc_lv 6 signal 1 } 
	{ t_130_ce0 sc_out sc_logic 1 signal 1 } 
	{ t_130_q0 sc_in sc_lv 8 signal 1 } 
	{ t_131_address0 sc_out sc_lv 6 signal 2 } 
	{ t_131_ce0 sc_out sc_logic 1 signal 2 } 
	{ t_131_q0 sc_in sc_lv 8 signal 2 } 
	{ t_132_address0 sc_out sc_lv 6 signal 3 } 
	{ t_132_ce0 sc_out sc_logic 1 signal 3 } 
	{ t_132_q0 sc_in sc_lv 8 signal 3 } 
	{ output_r_address0 sc_out sc_lv 5 signal 4 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 4 } 
	{ output_r_we0 sc_out sc_logic 1 signal 4 } 
	{ output_r_d0 sc_out sc_lv 8 signal 4 } 
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
 	{ "name": "t_130_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_130", "role": "address0" }} , 
 	{ "name": "t_130_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_130", "role": "ce0" }} , 
 	{ "name": "t_130_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_130", "role": "q0" }} , 
 	{ "name": "t_131_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_131", "role": "address0" }} , 
 	{ "name": "t_131_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_131", "role": "ce0" }} , 
 	{ "name": "t_131_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_131", "role": "q0" }} , 
 	{ "name": "t_132_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_132", "role": "address0" }} , 
 	{ "name": "t_132_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_132", "role": "ce0" }} , 
 	{ "name": "t_132_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_132", "role": "q0" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "cshake256_simple_32_clone_Pipeline_VITIS_LOOP_570_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_130", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_131", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_132", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_570_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_8_1_1_U3318", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cshake256_simple_32_clone_Pipeline_VITIS_LOOP_570_1 {
		t {Type I LastRead 0 FirstWrite -1}
		t_130 {Type I LastRead 0 FirstWrite -1}
		t_131 {Type I LastRead 0 FirstWrite -1}
		t_132 {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26", "Max" : "26"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	t { ap_memory {  { t_address0 mem_address 1 6 }  { t_ce0 mem_ce 1 1 }  { t_q0 mem_dout 0 8 } } }
	t_130 { ap_memory {  { t_130_address0 mem_address 1 6 }  { t_130_ce0 mem_ce 1 1 }  { t_130_q0 mem_dout 0 8 } } }
	t_131 { ap_memory {  { t_131_address0 mem_address 1 6 }  { t_131_ce0 mem_ce 1 1 }  { t_131_q0 mem_dout 0 8 } } }
	t_132 { ap_memory {  { t_132_address0 mem_address 1 6 }  { t_132_ce0 mem_ce 1 1 }  { t_132_q0 mem_dout 0 8 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 5 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 8 } } }
}
