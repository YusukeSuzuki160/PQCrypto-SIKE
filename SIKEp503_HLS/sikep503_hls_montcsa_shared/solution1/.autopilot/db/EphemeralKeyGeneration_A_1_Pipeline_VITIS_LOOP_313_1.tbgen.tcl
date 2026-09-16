set moduleName EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1
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
set cdfgNum 623
set C_modelName {EphemeralKeyGeneration_A.1_Pipeline_VITIS_LOOP_313_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict pts_Z_4 { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict pts_Z { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict pts_X_4 { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict pts_X { MEM_WIDTH 64 MEM_SIZE 448 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict R_cand_X { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_cand_X_4 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_cand_Z { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_cand_Z_4 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ pts_Z_4 int 64 regular {array 56 { 0 1 } 1 1 }  }
	{ zext_ln315 int 6 regular  }
	{ pts_Z int 64 regular {array 56 { 0 1 } 1 1 }  }
	{ pts_X_4 int 64 regular {array 56 { 0 1 } 1 1 }  }
	{ pts_X int 64 regular {array 56 { 0 1 } 1 1 }  }
	{ R_cand_X int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ R_cand_X_4 int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ R_cand_Z int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ R_cand_Z_4 int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ index_4 int 32 regular  }
	{ zext_ln143 int 7 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "pts_Z_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "zext_ln315", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "pts_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_X_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pts_X", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "R_cand_X", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "R_cand_X_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "R_cand_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "R_cand_Z_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "index_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln143", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pts_Z_4_address0 sc_out sc_lv 6 signal 0 } 
	{ pts_Z_4_ce0 sc_out sc_logic 1 signal 0 } 
	{ pts_Z_4_we0 sc_out sc_logic 1 signal 0 } 
	{ pts_Z_4_d0 sc_out sc_lv 64 signal 0 } 
	{ pts_Z_4_address1 sc_out sc_lv 6 signal 0 } 
	{ pts_Z_4_ce1 sc_out sc_logic 1 signal 0 } 
	{ pts_Z_4_q1 sc_in sc_lv 64 signal 0 } 
	{ zext_ln315 sc_in sc_lv 6 signal 1 } 
	{ pts_Z_address0 sc_out sc_lv 6 signal 2 } 
	{ pts_Z_ce0 sc_out sc_logic 1 signal 2 } 
	{ pts_Z_we0 sc_out sc_logic 1 signal 2 } 
	{ pts_Z_d0 sc_out sc_lv 64 signal 2 } 
	{ pts_Z_address1 sc_out sc_lv 6 signal 2 } 
	{ pts_Z_ce1 sc_out sc_logic 1 signal 2 } 
	{ pts_Z_q1 sc_in sc_lv 64 signal 2 } 
	{ pts_X_4_address0 sc_out sc_lv 6 signal 3 } 
	{ pts_X_4_ce0 sc_out sc_logic 1 signal 3 } 
	{ pts_X_4_we0 sc_out sc_logic 1 signal 3 } 
	{ pts_X_4_d0 sc_out sc_lv 64 signal 3 } 
	{ pts_X_4_address1 sc_out sc_lv 6 signal 3 } 
	{ pts_X_4_ce1 sc_out sc_logic 1 signal 3 } 
	{ pts_X_4_q1 sc_in sc_lv 64 signal 3 } 
	{ pts_X_address0 sc_out sc_lv 6 signal 4 } 
	{ pts_X_ce0 sc_out sc_logic 1 signal 4 } 
	{ pts_X_we0 sc_out sc_logic 1 signal 4 } 
	{ pts_X_d0 sc_out sc_lv 64 signal 4 } 
	{ pts_X_address1 sc_out sc_lv 6 signal 4 } 
	{ pts_X_ce1 sc_out sc_logic 1 signal 4 } 
	{ pts_X_q1 sc_in sc_lv 64 signal 4 } 
	{ R_cand_X_address0 sc_out sc_lv 3 signal 5 } 
	{ R_cand_X_ce0 sc_out sc_logic 1 signal 5 } 
	{ R_cand_X_q0 sc_in sc_lv 64 signal 5 } 
	{ R_cand_X_4_address0 sc_out sc_lv 3 signal 6 } 
	{ R_cand_X_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ R_cand_X_4_q0 sc_in sc_lv 64 signal 6 } 
	{ R_cand_Z_address0 sc_out sc_lv 3 signal 7 } 
	{ R_cand_Z_ce0 sc_out sc_logic 1 signal 7 } 
	{ R_cand_Z_q0 sc_in sc_lv 64 signal 7 } 
	{ R_cand_Z_4_address0 sc_out sc_lv 3 signal 8 } 
	{ R_cand_Z_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ R_cand_Z_4_q0 sc_in sc_lv 64 signal 8 } 
	{ index_4 sc_in sc_lv 32 signal 9 } 
	{ zext_ln143 sc_in sc_lv 7 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pts_Z_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "address0" }} , 
 	{ "name": "pts_Z_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "ce0" }} , 
 	{ "name": "pts_Z_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "we0" }} , 
 	{ "name": "pts_Z_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "d0" }} , 
 	{ "name": "pts_Z_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "address1" }} , 
 	{ "name": "pts_Z_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "ce1" }} , 
 	{ "name": "pts_Z_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z_4", "role": "q1" }} , 
 	{ "name": "zext_ln315", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln315", "role": "default" }} , 
 	{ "name": "pts_Z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z", "role": "address0" }} , 
 	{ "name": "pts_Z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "ce0" }} , 
 	{ "name": "pts_Z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "we0" }} , 
 	{ "name": "pts_Z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z", "role": "d0" }} , 
 	{ "name": "pts_Z_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_Z", "role": "address1" }} , 
 	{ "name": "pts_Z_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_Z", "role": "ce1" }} , 
 	{ "name": "pts_Z_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_Z", "role": "q1" }} , 
 	{ "name": "pts_X_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X_4", "role": "address0" }} , 
 	{ "name": "pts_X_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X_4", "role": "ce0" }} , 
 	{ "name": "pts_X_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X_4", "role": "we0" }} , 
 	{ "name": "pts_X_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X_4", "role": "d0" }} , 
 	{ "name": "pts_X_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X_4", "role": "address1" }} , 
 	{ "name": "pts_X_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X_4", "role": "ce1" }} , 
 	{ "name": "pts_X_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X_4", "role": "q1" }} , 
 	{ "name": "pts_X_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X", "role": "address0" }} , 
 	{ "name": "pts_X_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "ce0" }} , 
 	{ "name": "pts_X_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "we0" }} , 
 	{ "name": "pts_X_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X", "role": "d0" }} , 
 	{ "name": "pts_X_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pts_X", "role": "address1" }} , 
 	{ "name": "pts_X_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pts_X", "role": "ce1" }} , 
 	{ "name": "pts_X_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pts_X", "role": "q1" }} , 
 	{ "name": "R_cand_X_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "R_cand_X", "role": "address0" }} , 
 	{ "name": "R_cand_X_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_cand_X", "role": "ce0" }} , 
 	{ "name": "R_cand_X_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_cand_X", "role": "q0" }} , 
 	{ "name": "R_cand_X_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "R_cand_X_4", "role": "address0" }} , 
 	{ "name": "R_cand_X_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_cand_X_4", "role": "ce0" }} , 
 	{ "name": "R_cand_X_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_cand_X_4", "role": "q0" }} , 
 	{ "name": "R_cand_Z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "R_cand_Z", "role": "address0" }} , 
 	{ "name": "R_cand_Z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_cand_Z", "role": "ce0" }} , 
 	{ "name": "R_cand_Z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_cand_Z", "role": "q0" }} , 
 	{ "name": "R_cand_Z_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "R_cand_Z_4", "role": "address0" }} , 
 	{ "name": "R_cand_Z_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_cand_Z_4", "role": "ce0" }} , 
 	{ "name": "R_cand_Z_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_cand_Z_4", "role": "q0" }} , 
 	{ "name": "index_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "index_4", "role": "default" }} , 
 	{ "name": "zext_ln143", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "zext_ln143", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pts_Z_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln315", "Type" : "None", "Direction" : "I"},
			{"Name" : "pts_Z", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pts_X_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pts_X", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R_cand_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "R_cand_X_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "R_cand_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "R_cand_Z_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "index_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_313_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	EphemeralKeyGeneration_A_1_Pipeline_VITIS_LOOP_313_1 {
		pts_Z_4 {Type IO LastRead 0 FirstWrite 1}
		zext_ln315 {Type I LastRead 0 FirstWrite -1}
		pts_Z {Type IO LastRead 0 FirstWrite 1}
		pts_X_4 {Type IO LastRead 0 FirstWrite 1}
		pts_X {Type IO LastRead 0 FirstWrite 1}
		R_cand_X {Type I LastRead 0 FirstWrite -1}
		R_cand_X_4 {Type I LastRead 0 FirstWrite -1}
		R_cand_Z {Type I LastRead 0 FirstWrite -1}
		R_cand_Z_4 {Type I LastRead 0 FirstWrite -1}
		index_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pts_Z_4 { ap_memory {  { pts_Z_4_address0 mem_address 1 6 }  { pts_Z_4_ce0 mem_ce 1 1 }  { pts_Z_4_we0 mem_we 1 1 }  { pts_Z_4_d0 mem_din 1 64 }  { pts_Z_4_address1 MemPortADDR2 1 6 }  { pts_Z_4_ce1 MemPortCE2 1 1 }  { pts_Z_4_q1 MemPortDOUT2 0 64 } } }
	zext_ln315 { ap_none {  { zext_ln315 in_data 0 6 } } }
	pts_Z { ap_memory {  { pts_Z_address0 mem_address 1 6 }  { pts_Z_ce0 mem_ce 1 1 }  { pts_Z_we0 mem_we 1 1 }  { pts_Z_d0 mem_din 1 64 }  { pts_Z_address1 MemPortADDR2 1 6 }  { pts_Z_ce1 MemPortCE2 1 1 }  { pts_Z_q1 MemPortDOUT2 0 64 } } }
	pts_X_4 { ap_memory {  { pts_X_4_address0 mem_address 1 6 }  { pts_X_4_ce0 mem_ce 1 1 }  { pts_X_4_we0 mem_we 1 1 }  { pts_X_4_d0 mem_din 1 64 }  { pts_X_4_address1 MemPortADDR2 1 6 }  { pts_X_4_ce1 MemPortCE2 1 1 }  { pts_X_4_q1 MemPortDOUT2 0 64 } } }
	pts_X { ap_memory {  { pts_X_address0 mem_address 1 6 }  { pts_X_ce0 mem_ce 1 1 }  { pts_X_we0 mem_we 1 1 }  { pts_X_d0 mem_din 1 64 }  { pts_X_address1 MemPortADDR2 1 6 }  { pts_X_ce1 MemPortCE2 1 1 }  { pts_X_q1 MemPortDOUT2 0 64 } } }
	R_cand_X { ap_memory {  { R_cand_X_address0 mem_address 1 3 }  { R_cand_X_ce0 mem_ce 1 1 }  { R_cand_X_q0 mem_dout 0 64 } } }
	R_cand_X_4 { ap_memory {  { R_cand_X_4_address0 mem_address 1 3 }  { R_cand_X_4_ce0 mem_ce 1 1 }  { R_cand_X_4_q0 mem_dout 0 64 } } }
	R_cand_Z { ap_memory {  { R_cand_Z_address0 mem_address 1 3 }  { R_cand_Z_ce0 mem_ce 1 1 }  { R_cand_Z_q0 mem_dout 0 64 } } }
	R_cand_Z_4 { ap_memory {  { R_cand_Z_4_address0 mem_address 1 3 }  { R_cand_Z_4_ce0 mem_ce 1 1 }  { R_cand_Z_4_q0 mem_dout 0 64 } } }
	index_4 { ap_none {  { index_4 in_data 0 32 } } }
	zext_ln143 { ap_none {  { zext_ln143 in_data 0 7 } } }
}
