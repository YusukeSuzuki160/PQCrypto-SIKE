set moduleName rsa_modexp_hw_Pipeline_VITIS_LOOP_122_19
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
set cdfgNum 25
set C_modelName {rsa_modexp_hw_Pipeline_VITIS_LOOP_122_19}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict final_x { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict final_y { MEM_WIDTH 1 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict z { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict one { MEM_WIDTH 1 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ final_x int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ final_y int 1 regular {array 16 { 0 3 } 0 1 }  }
	{ z int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ one int 1 regular {array 16 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "final_x", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "final_y", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "z", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "one", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ final_x_address0 sc_out sc_lv 4 signal 0 } 
	{ final_x_ce0 sc_out sc_logic 1 signal 0 } 
	{ final_x_we0 sc_out sc_logic 1 signal 0 } 
	{ final_x_d0 sc_out sc_lv 32 signal 0 } 
	{ final_y_address0 sc_out sc_lv 4 signal 1 } 
	{ final_y_ce0 sc_out sc_logic 1 signal 1 } 
	{ final_y_we0 sc_out sc_logic 1 signal 1 } 
	{ final_y_d0 sc_out sc_lv 1 signal 1 } 
	{ z_address0 sc_out sc_lv 4 signal 2 } 
	{ z_ce0 sc_out sc_logic 1 signal 2 } 
	{ z_q0 sc_in sc_lv 32 signal 2 } 
	{ one_address0 sc_out sc_lv 4 signal 3 } 
	{ one_ce0 sc_out sc_logic 1 signal 3 } 
	{ one_q0 sc_in sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "final_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "final_x", "role": "address0" }} , 
 	{ "name": "final_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_x", "role": "ce0" }} , 
 	{ "name": "final_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_x", "role": "we0" }} , 
 	{ "name": "final_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_x", "role": "d0" }} , 
 	{ "name": "final_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "final_y", "role": "address0" }} , 
 	{ "name": "final_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_y", "role": "ce0" }} , 
 	{ "name": "final_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "final_y", "role": "we0" }} , 
 	{ "name": "final_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "final_y", "role": "d0" }} , 
 	{ "name": "z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "z", "role": "address0" }} , 
 	{ "name": "z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z", "role": "ce0" }} , 
 	{ "name": "z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z", "role": "q0" }} , 
 	{ "name": "one_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "one", "role": "address0" }} , 
 	{ "name": "one_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "one", "role": "ce0" }} , 
 	{ "name": "one_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "one", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rsa_modexp_hw_Pipeline_VITIS_LOOP_122_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "final_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "final_y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "one", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_122_19", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rsa_modexp_hw_Pipeline_VITIS_LOOP_122_19 {
		final_x {Type O LastRead -1 FirstWrite 1}
		final_y {Type O LastRead -1 FirstWrite 1}
		z {Type I LastRead 0 FirstWrite -1}
		one {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	final_x { ap_memory {  { final_x_address0 mem_address 1 4 }  { final_x_ce0 mem_ce 1 1 }  { final_x_we0 mem_we 1 1 }  { final_x_d0 mem_din 1 32 } } }
	final_y { ap_memory {  { final_y_address0 mem_address 1 4 }  { final_y_ce0 mem_ce 1 1 }  { final_y_we0 mem_we 1 1 }  { final_y_d0 mem_din 1 1 } } }
	z { ap_memory {  { z_address0 mem_address 1 4 }  { z_ce0 mem_ce 1 1 }  { z_q0 mem_dout 0 32 } } }
	one { ap_memory {  { one_address0 mem_address 1 4 }  { one_ce0 mem_ce 1 1 }  { one_q0 mem_dout 0 1 } } }
}
