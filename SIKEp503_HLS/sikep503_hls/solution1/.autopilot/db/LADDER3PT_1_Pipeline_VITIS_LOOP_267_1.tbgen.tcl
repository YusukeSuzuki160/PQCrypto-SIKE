set moduleName LADDER3PT_1_Pipeline_VITIS_LOOP_267_1
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
set C_modelName {LADDER3PT.1_Pipeline_VITIS_LOOP_267_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict R2_X { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict R2_X_4 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict R2_Z { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict R2_Z_4 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict R_X { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict R_Z { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ R2_X int 64 regular {array 8 { 2 3 } 1 1 }  }
	{ R2_X_4 int 64 regular {array 8 { 2 3 } 1 1 }  }
	{ R2_Z int 64 regular {array 8 { 2 3 } 1 1 }  }
	{ R2_Z_4 int 64 regular {array 8 { 2 3 } 1 1 }  }
	{ R_X int 64 regular {array 16 { 2 2 } 1 1 }  }
	{ sext_ln288 int 1 regular  }
	{ R_Z int 64 regular {array 16 { 2 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "R2_X", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "R2_X_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "R2_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "R2_Z_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "R_X", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "sext_ln288", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "R_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ R2_X_address0 sc_out sc_lv 3 signal 0 } 
	{ R2_X_ce0 sc_out sc_logic 1 signal 0 } 
	{ R2_X_we0 sc_out sc_logic 1 signal 0 } 
	{ R2_X_d0 sc_out sc_lv 64 signal 0 } 
	{ R2_X_q0 sc_in sc_lv 64 signal 0 } 
	{ R2_X_4_address0 sc_out sc_lv 3 signal 1 } 
	{ R2_X_4_ce0 sc_out sc_logic 1 signal 1 } 
	{ R2_X_4_we0 sc_out sc_logic 1 signal 1 } 
	{ R2_X_4_d0 sc_out sc_lv 64 signal 1 } 
	{ R2_X_4_q0 sc_in sc_lv 64 signal 1 } 
	{ R2_Z_address0 sc_out sc_lv 3 signal 2 } 
	{ R2_Z_ce0 sc_out sc_logic 1 signal 2 } 
	{ R2_Z_we0 sc_out sc_logic 1 signal 2 } 
	{ R2_Z_d0 sc_out sc_lv 64 signal 2 } 
	{ R2_Z_q0 sc_in sc_lv 64 signal 2 } 
	{ R2_Z_4_address0 sc_out sc_lv 3 signal 3 } 
	{ R2_Z_4_ce0 sc_out sc_logic 1 signal 3 } 
	{ R2_Z_4_we0 sc_out sc_logic 1 signal 3 } 
	{ R2_Z_4_d0 sc_out sc_lv 64 signal 3 } 
	{ R2_Z_4_q0 sc_in sc_lv 64 signal 3 } 
	{ R_X_address0 sc_out sc_lv 4 signal 4 } 
	{ R_X_ce0 sc_out sc_logic 1 signal 4 } 
	{ R_X_we0 sc_out sc_logic 1 signal 4 } 
	{ R_X_d0 sc_out sc_lv 64 signal 4 } 
	{ R_X_q0 sc_in sc_lv 64 signal 4 } 
	{ R_X_address1 sc_out sc_lv 4 signal 4 } 
	{ R_X_ce1 sc_out sc_logic 1 signal 4 } 
	{ R_X_we1 sc_out sc_logic 1 signal 4 } 
	{ R_X_d1 sc_out sc_lv 64 signal 4 } 
	{ R_X_q1 sc_in sc_lv 64 signal 4 } 
	{ sext_ln288 sc_in sc_lv 1 signal 5 } 
	{ R_Z_address0 sc_out sc_lv 4 signal 6 } 
	{ R_Z_ce0 sc_out sc_logic 1 signal 6 } 
	{ R_Z_we0 sc_out sc_logic 1 signal 6 } 
	{ R_Z_d0 sc_out sc_lv 64 signal 6 } 
	{ R_Z_q0 sc_in sc_lv 64 signal 6 } 
	{ R_Z_address1 sc_out sc_lv 4 signal 6 } 
	{ R_Z_ce1 sc_out sc_logic 1 signal 6 } 
	{ R_Z_we1 sc_out sc_logic 1 signal 6 } 
	{ R_Z_d1 sc_out sc_lv 64 signal 6 } 
	{ R_Z_q1 sc_in sc_lv 64 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "R2_X_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "R2_X", "role": "address0" }} , 
 	{ "name": "R2_X_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R2_X", "role": "ce0" }} , 
 	{ "name": "R2_X_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R2_X", "role": "we0" }} , 
 	{ "name": "R2_X_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R2_X", "role": "d0" }} , 
 	{ "name": "R2_X_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R2_X", "role": "q0" }} , 
 	{ "name": "R2_X_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "R2_X_4", "role": "address0" }} , 
 	{ "name": "R2_X_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R2_X_4", "role": "ce0" }} , 
 	{ "name": "R2_X_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R2_X_4", "role": "we0" }} , 
 	{ "name": "R2_X_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R2_X_4", "role": "d0" }} , 
 	{ "name": "R2_X_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R2_X_4", "role": "q0" }} , 
 	{ "name": "R2_Z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "R2_Z", "role": "address0" }} , 
 	{ "name": "R2_Z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R2_Z", "role": "ce0" }} , 
 	{ "name": "R2_Z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R2_Z", "role": "we0" }} , 
 	{ "name": "R2_Z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R2_Z", "role": "d0" }} , 
 	{ "name": "R2_Z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R2_Z", "role": "q0" }} , 
 	{ "name": "R2_Z_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "R2_Z_4", "role": "address0" }} , 
 	{ "name": "R2_Z_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R2_Z_4", "role": "ce0" }} , 
 	{ "name": "R2_Z_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R2_Z_4", "role": "we0" }} , 
 	{ "name": "R2_Z_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R2_Z_4", "role": "d0" }} , 
 	{ "name": "R2_Z_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R2_Z_4", "role": "q0" }} , 
 	{ "name": "R_X_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "R_X", "role": "address0" }} , 
 	{ "name": "R_X_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_X", "role": "ce0" }} , 
 	{ "name": "R_X_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_X", "role": "we0" }} , 
 	{ "name": "R_X_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_X", "role": "d0" }} , 
 	{ "name": "R_X_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_X", "role": "q0" }} , 
 	{ "name": "R_X_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "R_X", "role": "address1" }} , 
 	{ "name": "R_X_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_X", "role": "ce1" }} , 
 	{ "name": "R_X_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_X", "role": "we1" }} , 
 	{ "name": "R_X_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_X", "role": "d1" }} , 
 	{ "name": "R_X_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_X", "role": "q1" }} , 
 	{ "name": "sext_ln288", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sext_ln288", "role": "default" }} , 
 	{ "name": "R_Z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "R_Z", "role": "address0" }} , 
 	{ "name": "R_Z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_Z", "role": "ce0" }} , 
 	{ "name": "R_Z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_Z", "role": "we0" }} , 
 	{ "name": "R_Z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "d0" }} , 
 	{ "name": "R_Z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "q0" }} , 
 	{ "name": "R_Z_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "R_Z", "role": "address1" }} , 
 	{ "name": "R_Z_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_Z", "role": "ce1" }} , 
 	{ "name": "R_Z_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_Z", "role": "we1" }} , 
 	{ "name": "R_Z_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "d1" }} , 
 	{ "name": "R_Z_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "LADDER3PT_1_Pipeline_VITIS_LOOP_267_1",
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
			{"Name" : "R2_X", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R2_X_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R2_Z", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R2_Z_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln288", "Type" : "None", "Direction" : "I"},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_267_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state3", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state3_blk", "QuitState" : "ap_ST_fsm_state3", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state3_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	LADDER3PT_1_Pipeline_VITIS_LOOP_267_1 {
		R2_X {Type IO LastRead 0 FirstWrite 2}
		R2_X_4 {Type IO LastRead 0 FirstWrite 2}
		R2_Z {Type IO LastRead 0 FirstWrite 2}
		R2_Z_4 {Type IO LastRead 0 FirstWrite 2}
		R_X {Type IO LastRead 1 FirstWrite 2}
		sext_ln288 {Type I LastRead 0 FirstWrite -1}
		R_Z {Type IO LastRead 1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26", "Max" : "26"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	R2_X { ap_memory {  { R2_X_address0 mem_address 1 3 }  { R2_X_ce0 mem_ce 1 1 }  { R2_X_we0 mem_we 1 1 }  { R2_X_d0 mem_din 1 64 }  { R2_X_q0 mem_dout 0 64 } } }
	R2_X_4 { ap_memory {  { R2_X_4_address0 mem_address 1 3 }  { R2_X_4_ce0 mem_ce 1 1 }  { R2_X_4_we0 mem_we 1 1 }  { R2_X_4_d0 mem_din 1 64 }  { R2_X_4_q0 mem_dout 0 64 } } }
	R2_Z { ap_memory {  { R2_Z_address0 mem_address 1 3 }  { R2_Z_ce0 mem_ce 1 1 }  { R2_Z_we0 mem_we 1 1 }  { R2_Z_d0 mem_din 1 64 }  { R2_Z_q0 mem_dout 0 64 } } }
	R2_Z_4 { ap_memory {  { R2_Z_4_address0 mem_address 1 3 }  { R2_Z_4_ce0 mem_ce 1 1 }  { R2_Z_4_we0 mem_we 1 1 }  { R2_Z_4_d0 mem_din 1 64 }  { R2_Z_4_q0 mem_dout 0 64 } } }
	R_X { ap_memory {  { R_X_address0 mem_address 1 4 }  { R_X_ce0 mem_ce 1 1 }  { R_X_we0 mem_we 1 1 }  { R_X_d0 mem_din 1 64 }  { R_X_q0 mem_dout 0 64 }  { R_X_address1 MemPortADDR2 1 4 }  { R_X_ce1 MemPortCE2 1 1 }  { R_X_we1 MemPortWE2 1 1 }  { R_X_d1 MemPortDIN2 1 64 }  { R_X_q1 MemPortDOUT2 0 64 } } }
	sext_ln288 { ap_none {  { sext_ln288 in_data 0 1 } } }
	R_Z { ap_memory {  { R_Z_address0 mem_address 1 4 }  { R_Z_ce0 mem_ce 1 1 }  { R_Z_we0 mem_we 1 1 }  { R_Z_d0 mem_din 1 64 }  { R_Z_q0 mem_dout 0 64 }  { R_Z_address1 MemPortADDR2 1 4 }  { R_Z_ce1 MemPortCE2 1 1 }  { R_Z_we1 MemPortWE2 1 1 }  { R_Z_d1 MemPortDIN2 1 64 }  { R_Z_q1 MemPortDOUT2 0 64 } } }
}
