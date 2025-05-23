set moduleName EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_40_1
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
set C_modelName {EphemeralSecretAgreement_A.1_Pipeline_VITIS_LOOP_40_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict t_i { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict SharedSecretA { MEM_WIDTH 8 MEM_SIZE 126 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ t_i int 64 regular {array 16 { 1 1 } 1 1 }  }
	{ SharedSecretA int 8 regular {array 126 { 0 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "t_i", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "SharedSecretA", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t_i_address0 sc_out sc_lv 4 signal 0 } 
	{ t_i_ce0 sc_out sc_logic 1 signal 0 } 
	{ t_i_q0 sc_in sc_lv 64 signal 0 } 
	{ t_i_address1 sc_out sc_lv 4 signal 0 } 
	{ t_i_ce1 sc_out sc_logic 1 signal 0 } 
	{ t_i_q1 sc_in sc_lv 64 signal 0 } 
	{ SharedSecretA_address0 sc_out sc_lv 7 signal 1 } 
	{ SharedSecretA_ce0 sc_out sc_logic 1 signal 1 } 
	{ SharedSecretA_we0 sc_out sc_logic 1 signal 1 } 
	{ SharedSecretA_d0 sc_out sc_lv 8 signal 1 } 
	{ SharedSecretA_address1 sc_out sc_lv 7 signal 1 } 
	{ SharedSecretA_ce1 sc_out sc_logic 1 signal 1 } 
	{ SharedSecretA_we1 sc_out sc_logic 1 signal 1 } 
	{ SharedSecretA_d1 sc_out sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_i", "role": "address0" }} , 
 	{ "name": "t_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_i", "role": "ce0" }} , 
 	{ "name": "t_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_i", "role": "q0" }} , 
 	{ "name": "t_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_i", "role": "address1" }} , 
 	{ "name": "t_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_i", "role": "ce1" }} , 
 	{ "name": "t_i_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_i", "role": "q1" }} , 
 	{ "name": "SharedSecretA_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "SharedSecretA", "role": "address0" }} , 
 	{ "name": "SharedSecretA_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SharedSecretA", "role": "ce0" }} , 
 	{ "name": "SharedSecretA_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SharedSecretA", "role": "we0" }} , 
 	{ "name": "SharedSecretA_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SharedSecretA", "role": "d0" }} , 
 	{ "name": "SharedSecretA_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "SharedSecretA", "role": "address1" }} , 
 	{ "name": "SharedSecretA_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SharedSecretA", "role": "ce1" }} , 
 	{ "name": "SharedSecretA_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SharedSecretA", "role": "we1" }} , 
 	{ "name": "SharedSecretA_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SharedSecretA", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_40_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SharedSecretA", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_40_1 {
		t_i {Type I LastRead 1 FirstWrite -1}
		SharedSecretA {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	t_i { ap_memory {  { t_i_address0 mem_address 1 4 }  { t_i_ce0 mem_ce 1 1 }  { t_i_q0 mem_dout 0 64 }  { t_i_address1 MemPortADDR2 1 4 }  { t_i_ce1 MemPortCE2 1 1 }  { t_i_q1 MemPortDOUT2 0 64 } } }
	SharedSecretA { ap_memory {  { SharedSecretA_address0 mem_address 1 7 }  { SharedSecretA_ce0 mem_ce 1 1 }  { SharedSecretA_we0 mem_we 1 1 }  { SharedSecretA_d0 mem_din 1 8 }  { SharedSecretA_address1 MemPortADDR2 1 7 }  { SharedSecretA_ce1 MemPortCE2 1 1 }  { SharedSecretA_we1 MemPortWE2 1 1 }  { SharedSecretA_d1 MemPortDIN2 1 8 } } }
}
