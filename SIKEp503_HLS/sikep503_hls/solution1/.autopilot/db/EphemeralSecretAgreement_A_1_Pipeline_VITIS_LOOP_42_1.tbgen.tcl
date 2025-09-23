set moduleName EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_42_1
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
set cdfgNum 684
set C_modelName {EphemeralSecretAgreement_A.1_Pipeline_VITIS_LOOP_42_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict SharedSecretA_3 { MEM_WIDTH 8 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict SharedSecretA_2 { MEM_WIDTH 8 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict SharedSecretA_1 { MEM_WIDTH 8 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict SharedSecretA_0 { MEM_WIDTH 8 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict t { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ SharedSecretA_3 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ SharedSecretA_2 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ SharedSecretA_1 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ SharedSecretA_0 int 8 regular {array 32 { 0 3 } 0 1 }  }
	{ t int 64 regular {array 16 { 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "SharedSecretA_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SharedSecretA_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SharedSecretA_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SharedSecretA_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SharedSecretA_3_address0 sc_out sc_lv 5 signal 0 } 
	{ SharedSecretA_3_ce0 sc_out sc_logic 1 signal 0 } 
	{ SharedSecretA_3_we0 sc_out sc_logic 1 signal 0 } 
	{ SharedSecretA_3_d0 sc_out sc_lv 8 signal 0 } 
	{ SharedSecretA_2_address0 sc_out sc_lv 5 signal 1 } 
	{ SharedSecretA_2_ce0 sc_out sc_logic 1 signal 1 } 
	{ SharedSecretA_2_we0 sc_out sc_logic 1 signal 1 } 
	{ SharedSecretA_2_d0 sc_out sc_lv 8 signal 1 } 
	{ SharedSecretA_1_address0 sc_out sc_lv 5 signal 2 } 
	{ SharedSecretA_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ SharedSecretA_1_we0 sc_out sc_logic 1 signal 2 } 
	{ SharedSecretA_1_d0 sc_out sc_lv 8 signal 2 } 
	{ SharedSecretA_0_address0 sc_out sc_lv 5 signal 3 } 
	{ SharedSecretA_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ SharedSecretA_0_we0 sc_out sc_logic 1 signal 3 } 
	{ SharedSecretA_0_d0 sc_out sc_lv 8 signal 3 } 
	{ t_address0 sc_out sc_lv 4 signal 4 } 
	{ t_ce0 sc_out sc_logic 1 signal 4 } 
	{ t_q0 sc_in sc_lv 64 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SharedSecretA_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SharedSecretA_3", "role": "address0" }} , 
 	{ "name": "SharedSecretA_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SharedSecretA_3", "role": "ce0" }} , 
 	{ "name": "SharedSecretA_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SharedSecretA_3", "role": "we0" }} , 
 	{ "name": "SharedSecretA_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SharedSecretA_3", "role": "d0" }} , 
 	{ "name": "SharedSecretA_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SharedSecretA_2", "role": "address0" }} , 
 	{ "name": "SharedSecretA_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SharedSecretA_2", "role": "ce0" }} , 
 	{ "name": "SharedSecretA_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SharedSecretA_2", "role": "we0" }} , 
 	{ "name": "SharedSecretA_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SharedSecretA_2", "role": "d0" }} , 
 	{ "name": "SharedSecretA_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SharedSecretA_1", "role": "address0" }} , 
 	{ "name": "SharedSecretA_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SharedSecretA_1", "role": "ce0" }} , 
 	{ "name": "SharedSecretA_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SharedSecretA_1", "role": "we0" }} , 
 	{ "name": "SharedSecretA_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SharedSecretA_1", "role": "d0" }} , 
 	{ "name": "SharedSecretA_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SharedSecretA_0", "role": "address0" }} , 
 	{ "name": "SharedSecretA_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SharedSecretA_0", "role": "ce0" }} , 
 	{ "name": "SharedSecretA_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SharedSecretA_0", "role": "we0" }} , 
 	{ "name": "SharedSecretA_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SharedSecretA_0", "role": "d0" }} , 
 	{ "name": "t_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t", "role": "address0" }} , 
 	{ "name": "t_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t", "role": "ce0" }} , 
 	{ "name": "t_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_42_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "128", "EstimateLatencyMax" : "128",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "SharedSecretA_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "SharedSecretA_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "SharedSecretA_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "SharedSecretA_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "t", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_42_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	EphemeralSecretAgreement_A_1_Pipeline_VITIS_LOOP_42_1 {
		SharedSecretA_3 {Type O LastRead -1 FirstWrite 1}
		SharedSecretA_2 {Type O LastRead -1 FirstWrite 1}
		SharedSecretA_1 {Type O LastRead -1 FirstWrite 1}
		SharedSecretA_0 {Type O LastRead -1 FirstWrite 1}
		t {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "128", "Max" : "128"}
	, {"Name" : "Interval", "Min" : "128", "Max" : "128"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	SharedSecretA_3 { ap_memory {  { SharedSecretA_3_address0 mem_address 1 5 }  { SharedSecretA_3_ce0 mem_ce 1 1 }  { SharedSecretA_3_we0 mem_we 1 1 }  { SharedSecretA_3_d0 mem_din 1 8 } } }
	SharedSecretA_2 { ap_memory {  { SharedSecretA_2_address0 mem_address 1 5 }  { SharedSecretA_2_ce0 mem_ce 1 1 }  { SharedSecretA_2_we0 mem_we 1 1 }  { SharedSecretA_2_d0 mem_din 1 8 } } }
	SharedSecretA_1 { ap_memory {  { SharedSecretA_1_address0 mem_address 1 5 }  { SharedSecretA_1_ce0 mem_ce 1 1 }  { SharedSecretA_1_we0 mem_we 1 1 }  { SharedSecretA_1_d0 mem_din 1 8 } } }
	SharedSecretA_0 { ap_memory {  { SharedSecretA_0_address0 mem_address 1 5 }  { SharedSecretA_0_ce0 mem_ce 1 1 }  { SharedSecretA_0_we0 mem_we 1 1 }  { SharedSecretA_0_d0 mem_din 1 8 } } }
	t { ap_memory {  { t_address0 mem_address 1 4 }  { t_ce0 mem_ce 1 1 }  { t_q0 mem_dout 0 64 } } }
}
