set moduleName crypto_kem_enc_1_Pipeline_VITIS_LOOP_377_2
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
set C_modelName {crypto_kem_enc.1_Pipeline_VITIS_LOOP_377_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict t_80 { MEM_WIDTH 8 MEM_SIZE 34 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict t_79 { MEM_WIDTH 8 MEM_SIZE 34 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict t_78 { MEM_WIDTH 8 MEM_SIZE 34 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict t { MEM_WIDTH 8 MEM_SIZE 34 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict s_i { MEM_WIDTH 64 MEM_SIZE 200 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ t_80 int 8 regular {array 34 { 0 0 } 0 1 }  }
	{ t_79 int 8 regular {array 34 { 0 0 } 0 1 }  }
	{ t_78 int 8 regular {array 34 { 0 0 } 0 1 }  }
	{ t int 8 regular {array 34 { 0 0 } 0 1 }  }
	{ s_i int 64 regular {array 25 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "t_80", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t_79", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t_78", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_i", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t_80_address0 sc_out sc_lv 6 signal 0 } 
	{ t_80_ce0 sc_out sc_logic 1 signal 0 } 
	{ t_80_we0 sc_out sc_logic 1 signal 0 } 
	{ t_80_d0 sc_out sc_lv 8 signal 0 } 
	{ t_80_address1 sc_out sc_lv 6 signal 0 } 
	{ t_80_ce1 sc_out sc_logic 1 signal 0 } 
	{ t_80_we1 sc_out sc_logic 1 signal 0 } 
	{ t_80_d1 sc_out sc_lv 8 signal 0 } 
	{ t_79_address0 sc_out sc_lv 6 signal 1 } 
	{ t_79_ce0 sc_out sc_logic 1 signal 1 } 
	{ t_79_we0 sc_out sc_logic 1 signal 1 } 
	{ t_79_d0 sc_out sc_lv 8 signal 1 } 
	{ t_79_address1 sc_out sc_lv 6 signal 1 } 
	{ t_79_ce1 sc_out sc_logic 1 signal 1 } 
	{ t_79_we1 sc_out sc_logic 1 signal 1 } 
	{ t_79_d1 sc_out sc_lv 8 signal 1 } 
	{ t_78_address0 sc_out sc_lv 6 signal 2 } 
	{ t_78_ce0 sc_out sc_logic 1 signal 2 } 
	{ t_78_we0 sc_out sc_logic 1 signal 2 } 
	{ t_78_d0 sc_out sc_lv 8 signal 2 } 
	{ t_78_address1 sc_out sc_lv 6 signal 2 } 
	{ t_78_ce1 sc_out sc_logic 1 signal 2 } 
	{ t_78_we1 sc_out sc_logic 1 signal 2 } 
	{ t_78_d1 sc_out sc_lv 8 signal 2 } 
	{ t_address0 sc_out sc_lv 6 signal 3 } 
	{ t_ce0 sc_out sc_logic 1 signal 3 } 
	{ t_we0 sc_out sc_logic 1 signal 3 } 
	{ t_d0 sc_out sc_lv 8 signal 3 } 
	{ t_address1 sc_out sc_lv 6 signal 3 } 
	{ t_ce1 sc_out sc_logic 1 signal 3 } 
	{ t_we1 sc_out sc_logic 1 signal 3 } 
	{ t_d1 sc_out sc_lv 8 signal 3 } 
	{ s_i_address0 sc_out sc_lv 5 signal 4 } 
	{ s_i_ce0 sc_out sc_logic 1 signal 4 } 
	{ s_i_q0 sc_in sc_lv 64 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t_80_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_80", "role": "address0" }} , 
 	{ "name": "t_80_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_80", "role": "ce0" }} , 
 	{ "name": "t_80_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_80", "role": "we0" }} , 
 	{ "name": "t_80_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_80", "role": "d0" }} , 
 	{ "name": "t_80_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_80", "role": "address1" }} , 
 	{ "name": "t_80_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_80", "role": "ce1" }} , 
 	{ "name": "t_80_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_80", "role": "we1" }} , 
 	{ "name": "t_80_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_80", "role": "d1" }} , 
 	{ "name": "t_79_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_79", "role": "address0" }} , 
 	{ "name": "t_79_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_79", "role": "ce0" }} , 
 	{ "name": "t_79_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_79", "role": "we0" }} , 
 	{ "name": "t_79_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_79", "role": "d0" }} , 
 	{ "name": "t_79_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_79", "role": "address1" }} , 
 	{ "name": "t_79_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_79", "role": "ce1" }} , 
 	{ "name": "t_79_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_79", "role": "we1" }} , 
 	{ "name": "t_79_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_79", "role": "d1" }} , 
 	{ "name": "t_78_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_78", "role": "address0" }} , 
 	{ "name": "t_78_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_78", "role": "ce0" }} , 
 	{ "name": "t_78_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_78", "role": "we0" }} , 
 	{ "name": "t_78_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_78", "role": "d0" }} , 
 	{ "name": "t_78_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t_78", "role": "address1" }} , 
 	{ "name": "t_78_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_78", "role": "ce1" }} , 
 	{ "name": "t_78_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_78", "role": "we1" }} , 
 	{ "name": "t_78_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_78", "role": "d1" }} , 
 	{ "name": "t_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t", "role": "address0" }} , 
 	{ "name": "t_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t", "role": "ce0" }} , 
 	{ "name": "t_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t", "role": "we0" }} , 
 	{ "name": "t_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t", "role": "d0" }} , 
 	{ "name": "t_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "t", "role": "address1" }} , 
 	{ "name": "t_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t", "role": "ce1" }} , 
 	{ "name": "t_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t", "role": "we1" }} , 
 	{ "name": "t_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t", "role": "d1" }} , 
 	{ "name": "s_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s_i", "role": "address0" }} , 
 	{ "name": "s_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_i", "role": "ce0" }} , 
 	{ "name": "s_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_i", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "crypto_kem_enc_1_Pipeline_VITIS_LOOP_377_2",
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
			{"Name" : "t_80", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "t_79", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "t_78", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_i", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_377_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	crypto_kem_enc_1_Pipeline_VITIS_LOOP_377_2 {
		t_80 {Type O LastRead -1 FirstWrite 1}
		t_79 {Type O LastRead -1 FirstWrite 1}
		t_78 {Type O LastRead -1 FirstWrite 1}
		t {Type O LastRead -1 FirstWrite 1}
		s_i {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "19"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	t_80 { ap_memory {  { t_80_address0 mem_address 1 6 }  { t_80_ce0 mem_ce 1 1 }  { t_80_we0 mem_we 1 1 }  { t_80_d0 mem_din 1 8 }  { t_80_address1 MemPortADDR2 1 6 }  { t_80_ce1 MemPortCE2 1 1 }  { t_80_we1 MemPortWE2 1 1 }  { t_80_d1 MemPortDIN2 1 8 } } }
	t_79 { ap_memory {  { t_79_address0 mem_address 1 6 }  { t_79_ce0 mem_ce 1 1 }  { t_79_we0 mem_we 1 1 }  { t_79_d0 mem_din 1 8 }  { t_79_address1 MemPortADDR2 1 6 }  { t_79_ce1 MemPortCE2 1 1 }  { t_79_we1 MemPortWE2 1 1 }  { t_79_d1 MemPortDIN2 1 8 } } }
	t_78 { ap_memory {  { t_78_address0 mem_address 1 6 }  { t_78_ce0 mem_ce 1 1 }  { t_78_we0 mem_we 1 1 }  { t_78_d0 mem_din 1 8 }  { t_78_address1 MemPortADDR2 1 6 }  { t_78_ce1 MemPortCE2 1 1 }  { t_78_we1 MemPortWE2 1 1 }  { t_78_d1 MemPortDIN2 1 8 } } }
	t { ap_memory {  { t_address0 mem_address 1 6 }  { t_ce0 mem_ce 1 1 }  { t_we0 mem_we 1 1 }  { t_d0 mem_din 1 8 }  { t_address1 MemPortADDR2 1 6 }  { t_ce1 MemPortCE2 1 1 }  { t_we1 MemPortWE2 1 1 }  { t_d1 MemPortDIN2 1 8 } } }
	s_i { ap_memory {  { s_i_address0 mem_address 1 5 }  { s_i_ce0 mem_ce 1 1 }  { s_i_q0 mem_dout 0 64 } } }
}
