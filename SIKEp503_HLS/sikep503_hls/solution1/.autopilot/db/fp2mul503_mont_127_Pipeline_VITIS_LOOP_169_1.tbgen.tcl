set moduleName fp2mul503_mont_127_Pipeline_VITIS_LOOP_169_1
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
set C_modelName {fp2mul503_mont.127_Pipeline_VITIS_LOOP_169_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict tt1 { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict tt2 { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict tt3 { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ tt1 int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ tt2 int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ tt3 int 64 regular {array 16 { 0 3 } 0 1 }  }
	{ borrow_out int 1 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tt1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tt2", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "tt3", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "borrow_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tt1_address0 sc_out sc_lv 4 signal 0 } 
	{ tt1_ce0 sc_out sc_logic 1 signal 0 } 
	{ tt1_q0 sc_in sc_lv 64 signal 0 } 
	{ tt2_address0 sc_out sc_lv 4 signal 1 } 
	{ tt2_ce0 sc_out sc_logic 1 signal 1 } 
	{ tt2_q0 sc_in sc_lv 64 signal 1 } 
	{ tt3_address0 sc_out sc_lv 4 signal 2 } 
	{ tt3_ce0 sc_out sc_logic 1 signal 2 } 
	{ tt3_we0 sc_out sc_logic 1 signal 2 } 
	{ tt3_d0 sc_out sc_lv 64 signal 2 } 
	{ borrow_out sc_out sc_lv 1 signal 3 } 
	{ borrow_out_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tt1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tt1", "role": "address0" }} , 
 	{ "name": "tt1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt1", "role": "ce0" }} , 
 	{ "name": "tt1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tt1", "role": "q0" }} , 
 	{ "name": "tt2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tt2", "role": "address0" }} , 
 	{ "name": "tt2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt2", "role": "ce0" }} , 
 	{ "name": "tt2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tt2", "role": "q0" }} , 
 	{ "name": "tt3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tt3", "role": "address0" }} , 
 	{ "name": "tt3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt3", "role": "ce0" }} , 
 	{ "name": "tt3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt3", "role": "we0" }} , 
 	{ "name": "tt3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tt3", "role": "d0" }} , 
 	{ "name": "borrow_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "borrow_out", "role": "default" }} , 
 	{ "name": "borrow_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "borrow_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fp2mul503_mont_127_Pipeline_VITIS_LOOP_169_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fp2mul503_mont_127_Pipeline_VITIS_LOOP_169_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "19"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tt1 { ap_memory {  { tt1_address0 mem_address 1 4 }  { tt1_ce0 mem_ce 1 1 }  { tt1_q0 mem_dout 0 64 } } }
	tt2 { ap_memory {  { tt2_address0 mem_address 1 4 }  { tt2_ce0 mem_ce 1 1 }  { tt2_q0 mem_dout 0 64 } } }
	tt3 { ap_memory {  { tt3_address0 mem_address 1 4 }  { tt3_ce0 mem_ce 1 1 }  { tt3_we0 mem_we 1 1 }  { tt3_d0 mem_din 1 64 } } }
	borrow_out { ap_vld {  { borrow_out out_data 1 1 }  { borrow_out_ap_vld out_vld 1 1 } } }
}
