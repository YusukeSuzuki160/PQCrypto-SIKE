set moduleName fpinv503_chain_mont_Pipeline_VITIS_LOOP_217_1
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
set cdfgNum 818
set C_modelName {fpinv503_chain_mont_Pipeline_VITIS_LOOP_217_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict t { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict t_1 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict t_2 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict t_3 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict t_4 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict t_5 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict t_6 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict t_7 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict tt { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ t int 64 regular {array 15 { 0 1 } 1 1 }  }
	{ t_1 int 64 regular {array 15 { 0 1 } 1 1 }  }
	{ t_2 int 64 regular {array 15 { 0 1 } 1 1 }  }
	{ t_3 int 64 regular {array 15 { 0 1 } 1 1 }  }
	{ t_4 int 64 regular {array 15 { 0 1 } 1 1 }  }
	{ t_5 int 64 regular {array 15 { 0 1 } 1 1 }  }
	{ t_6 int 64 regular {array 15 { 0 1 } 1 1 }  }
	{ t_7 int 64 regular {array 15 { 0 1 } 1 1 }  }
	{ tt int 64 regular {array 8 { 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "t", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "t_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "t_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "t_3", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "t_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "t_5", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "t_6", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "t_7", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "tt", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t_address0 sc_out sc_lv 4 signal 0 } 
	{ t_ce0 sc_out sc_logic 1 signal 0 } 
	{ t_we0 sc_out sc_logic 1 signal 0 } 
	{ t_d0 sc_out sc_lv 64 signal 0 } 
	{ t_address1 sc_out sc_lv 4 signal 0 } 
	{ t_ce1 sc_out sc_logic 1 signal 0 } 
	{ t_q1 sc_in sc_lv 64 signal 0 } 
	{ t_1_address0 sc_out sc_lv 4 signal 1 } 
	{ t_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ t_1_we0 sc_out sc_logic 1 signal 1 } 
	{ t_1_d0 sc_out sc_lv 64 signal 1 } 
	{ t_1_address1 sc_out sc_lv 4 signal 1 } 
	{ t_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ t_1_q1 sc_in sc_lv 64 signal 1 } 
	{ t_2_address0 sc_out sc_lv 4 signal 2 } 
	{ t_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ t_2_we0 sc_out sc_logic 1 signal 2 } 
	{ t_2_d0 sc_out sc_lv 64 signal 2 } 
	{ t_2_address1 sc_out sc_lv 4 signal 2 } 
	{ t_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ t_2_q1 sc_in sc_lv 64 signal 2 } 
	{ t_3_address0 sc_out sc_lv 4 signal 3 } 
	{ t_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ t_3_we0 sc_out sc_logic 1 signal 3 } 
	{ t_3_d0 sc_out sc_lv 64 signal 3 } 
	{ t_3_address1 sc_out sc_lv 4 signal 3 } 
	{ t_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ t_3_q1 sc_in sc_lv 64 signal 3 } 
	{ t_4_address0 sc_out sc_lv 4 signal 4 } 
	{ t_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ t_4_we0 sc_out sc_logic 1 signal 4 } 
	{ t_4_d0 sc_out sc_lv 64 signal 4 } 
	{ t_4_address1 sc_out sc_lv 4 signal 4 } 
	{ t_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ t_4_q1 sc_in sc_lv 64 signal 4 } 
	{ t_5_address0 sc_out sc_lv 4 signal 5 } 
	{ t_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ t_5_we0 sc_out sc_logic 1 signal 5 } 
	{ t_5_d0 sc_out sc_lv 64 signal 5 } 
	{ t_5_address1 sc_out sc_lv 4 signal 5 } 
	{ t_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ t_5_q1 sc_in sc_lv 64 signal 5 } 
	{ t_6_address0 sc_out sc_lv 4 signal 6 } 
	{ t_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ t_6_we0 sc_out sc_logic 1 signal 6 } 
	{ t_6_d0 sc_out sc_lv 64 signal 6 } 
	{ t_6_address1 sc_out sc_lv 4 signal 6 } 
	{ t_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ t_6_q1 sc_in sc_lv 64 signal 6 } 
	{ t_7_address0 sc_out sc_lv 4 signal 7 } 
	{ t_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ t_7_we0 sc_out sc_logic 1 signal 7 } 
	{ t_7_d0 sc_out sc_lv 64 signal 7 } 
	{ t_7_address1 sc_out sc_lv 4 signal 7 } 
	{ t_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ t_7_q1 sc_in sc_lv 64 signal 7 } 
	{ tt_address0 sc_out sc_lv 3 signal 8 } 
	{ tt_ce0 sc_out sc_logic 1 signal 8 } 
	{ tt_q0 sc_in sc_lv 64 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t", "role": "address0" }} , 
 	{ "name": "t_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t", "role": "ce0" }} , 
 	{ "name": "t_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t", "role": "we0" }} , 
 	{ "name": "t_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t", "role": "d0" }} , 
 	{ "name": "t_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t", "role": "address1" }} , 
 	{ "name": "t_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t", "role": "ce1" }} , 
 	{ "name": "t_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t", "role": "q1" }} , 
 	{ "name": "t_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_1", "role": "address0" }} , 
 	{ "name": "t_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_1", "role": "ce0" }} , 
 	{ "name": "t_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_1", "role": "we0" }} , 
 	{ "name": "t_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_1", "role": "d0" }} , 
 	{ "name": "t_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_1", "role": "address1" }} , 
 	{ "name": "t_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_1", "role": "ce1" }} , 
 	{ "name": "t_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_1", "role": "q1" }} , 
 	{ "name": "t_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_2", "role": "address0" }} , 
 	{ "name": "t_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_2", "role": "ce0" }} , 
 	{ "name": "t_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_2", "role": "we0" }} , 
 	{ "name": "t_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_2", "role": "d0" }} , 
 	{ "name": "t_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_2", "role": "address1" }} , 
 	{ "name": "t_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_2", "role": "ce1" }} , 
 	{ "name": "t_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_2", "role": "q1" }} , 
 	{ "name": "t_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_3", "role": "address0" }} , 
 	{ "name": "t_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_3", "role": "ce0" }} , 
 	{ "name": "t_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_3", "role": "we0" }} , 
 	{ "name": "t_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_3", "role": "d0" }} , 
 	{ "name": "t_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_3", "role": "address1" }} , 
 	{ "name": "t_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_3", "role": "ce1" }} , 
 	{ "name": "t_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_3", "role": "q1" }} , 
 	{ "name": "t_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_4", "role": "address0" }} , 
 	{ "name": "t_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_4", "role": "ce0" }} , 
 	{ "name": "t_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_4", "role": "we0" }} , 
 	{ "name": "t_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_4", "role": "d0" }} , 
 	{ "name": "t_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_4", "role": "address1" }} , 
 	{ "name": "t_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_4", "role": "ce1" }} , 
 	{ "name": "t_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_4", "role": "q1" }} , 
 	{ "name": "t_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_5", "role": "address0" }} , 
 	{ "name": "t_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_5", "role": "ce0" }} , 
 	{ "name": "t_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_5", "role": "we0" }} , 
 	{ "name": "t_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_5", "role": "d0" }} , 
 	{ "name": "t_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_5", "role": "address1" }} , 
 	{ "name": "t_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_5", "role": "ce1" }} , 
 	{ "name": "t_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_5", "role": "q1" }} , 
 	{ "name": "t_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_6", "role": "address0" }} , 
 	{ "name": "t_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_6", "role": "ce0" }} , 
 	{ "name": "t_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_6", "role": "we0" }} , 
 	{ "name": "t_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_6", "role": "d0" }} , 
 	{ "name": "t_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_6", "role": "address1" }} , 
 	{ "name": "t_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_6", "role": "ce1" }} , 
 	{ "name": "t_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_6", "role": "q1" }} , 
 	{ "name": "t_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_7", "role": "address0" }} , 
 	{ "name": "t_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_7", "role": "ce0" }} , 
 	{ "name": "t_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_7", "role": "we0" }} , 
 	{ "name": "t_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_7", "role": "d0" }} , 
 	{ "name": "t_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_7", "role": "address1" }} , 
 	{ "name": "t_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_7", "role": "ce1" }} , 
 	{ "name": "t_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_7", "role": "q1" }} , 
 	{ "name": "tt_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tt", "role": "address0" }} , 
 	{ "name": "tt_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt", "role": "ce0" }} , 
 	{ "name": "tt_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tt", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "30"],
		"CDFG" : "fpinv503_chain_mont_Pipeline_VITIS_LOOP_217_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "268", "EstimateLatencyMax" : "268",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "t_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fpmul503_mont_14_fu_322", "Port" : "mb", "Inst_start_state" : "2", "Inst_end_state" : "20"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_217_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "fpmul503_mont_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "ma_read_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_13_fu_78", "Port" : "b"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "mul_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_mul_12_fu_78", "Port" : "b"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78", "Parent" : "2", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "mul_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_read_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_64ns_128_1_1_U2042", "Parent" : "3"},
	{"ID" : "5", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_64ns_128_1_1_U2043", "Parent" : "3"},
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_64ns_128_1_1_U2044", "Parent" : "3"},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_64ns_128_1_1_U2045", "Parent" : "3"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_64ns_128_1_1_U2046", "Parent" : "3"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_64ns_128_1_1_U2047", "Parent" : "3"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_64ns_128_1_1_U2048", "Parent" : "3"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_64ns_128_1_1_U2049", "Parent" : "3"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_64ns_128_1_1_U2050", "Parent" : "3"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_56ns_119_1_1_U2051", "Parent" : "3"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_56ns_119_1_1_U2052", "Parent" : "3"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_62ns_125_1_1_U2053", "Parent" : "3"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_62ns_125_1_1_U2054", "Parent" : "3"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_62ns_125_1_1_U2055", "Parent" : "3"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_64ns_127_1_1_U2056", "Parent" : "3"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_64ns_127_1_1_U2057", "Parent" : "3"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_65ns_128_1_1_U2058", "Parent" : "3"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_65ns_128_1_1_U2059", "Parent" : "3"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64ns_65ns_128_1_1_U2060", "Parent" : "3"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64s_62ns_64_1_1_U2061", "Parent" : "3"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64s_62ns_64_1_1_U2062", "Parent" : "3"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64s_64ns_64_1_1_U2063", "Parent" : "3"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64s_64ns_64_1_1_U2064", "Parent" : "3"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64s_56ns_64_1_1_U2065", "Parent" : "3"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64s_64s_64_1_1_U2066", "Parent" : "3"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_14_fu_322.grp_mul_13_fu_78.grp_mul_12_fu_78.mul_64s_64s_64_1_1_U2067", "Parent" : "3"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fpinv503_chain_mont_Pipeline_VITIS_LOOP_217_1 {
		t {Type IO LastRead 0 FirstWrite 19}
		t_1 {Type IO LastRead 0 FirstWrite 19}
		t_2 {Type IO LastRead 0 FirstWrite 19}
		t_3 {Type IO LastRead 0 FirstWrite 19}
		t_4 {Type IO LastRead 0 FirstWrite 19}
		t_5 {Type IO LastRead 0 FirstWrite 19}
		t_6 {Type IO LastRead 0 FirstWrite 19}
		t_7 {Type IO LastRead 0 FirstWrite 19}
		tt {Type I LastRead 7 FirstWrite -1}}
	fpmul503_mont_14 {
		ma_read {Type I LastRead 0 FirstWrite -1}
		ma_read_45 {Type I LastRead 0 FirstWrite -1}
		ma_read_46 {Type I LastRead 0 FirstWrite -1}
		ma_read_47 {Type I LastRead 0 FirstWrite -1}
		ma_read_48 {Type I LastRead 0 FirstWrite -1}
		ma_read_49 {Type I LastRead 0 FirstWrite -1}
		ma_read_50 {Type I LastRead 0 FirstWrite -1}
		ma_read_51 {Type I LastRead 0 FirstWrite -1}
		mb {Type I LastRead 7 FirstWrite -1}}
	mul_13 {
		a_read {Type I LastRead 0 FirstWrite -1}
		a_read_50 {Type I LastRead 0 FirstWrite -1}
		a_read_51 {Type I LastRead 0 FirstWrite -1}
		a_read_52 {Type I LastRead 0 FirstWrite -1}
		a_read_53 {Type I LastRead 0 FirstWrite -1}
		a_read_54 {Type I LastRead 0 FirstWrite -1}
		a_read_55 {Type I LastRead 0 FirstWrite -1}
		a_read_56 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 7 FirstWrite -1}}
	mul_12 {
		a_read {Type I LastRead 1 FirstWrite -1}
		a_read_22 {Type I LastRead 1 FirstWrite -1}
		a_read_23 {Type I LastRead 1 FirstWrite -1}
		a_read_24 {Type I LastRead 1 FirstWrite -1}
		a_read_25 {Type I LastRead 1 FirstWrite -1}
		a_read_26 {Type I LastRead 1 FirstWrite -1}
		a_read_27 {Type I LastRead 1 FirstWrite -1}
		a_read_28 {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "268", "Max" : "268"}
	, {"Name" : "Interval", "Min" : "268", "Max" : "268"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	t { ap_memory {  { t_address0 mem_address 1 4 }  { t_ce0 mem_ce 1 1 }  { t_we0 mem_we 1 1 }  { t_d0 mem_din 1 64 }  { t_address1 MemPortADDR2 1 4 }  { t_ce1 MemPortCE2 1 1 }  { t_q1 MemPortDOUT2 0 64 } } }
	t_1 { ap_memory {  { t_1_address0 mem_address 1 4 }  { t_1_ce0 mem_ce 1 1 }  { t_1_we0 mem_we 1 1 }  { t_1_d0 mem_din 1 64 }  { t_1_address1 MemPortADDR2 1 4 }  { t_1_ce1 MemPortCE2 1 1 }  { t_1_q1 MemPortDOUT2 0 64 } } }
	t_2 { ap_memory {  { t_2_address0 mem_address 1 4 }  { t_2_ce0 mem_ce 1 1 }  { t_2_we0 mem_we 1 1 }  { t_2_d0 mem_din 1 64 }  { t_2_address1 MemPortADDR2 1 4 }  { t_2_ce1 MemPortCE2 1 1 }  { t_2_q1 MemPortDOUT2 0 64 } } }
	t_3 { ap_memory {  { t_3_address0 mem_address 1 4 }  { t_3_ce0 mem_ce 1 1 }  { t_3_we0 mem_we 1 1 }  { t_3_d0 mem_din 1 64 }  { t_3_address1 MemPortADDR2 1 4 }  { t_3_ce1 MemPortCE2 1 1 }  { t_3_q1 MemPortDOUT2 0 64 } } }
	t_4 { ap_memory {  { t_4_address0 mem_address 1 4 }  { t_4_ce0 mem_ce 1 1 }  { t_4_we0 mem_we 1 1 }  { t_4_d0 mem_din 1 64 }  { t_4_address1 MemPortADDR2 1 4 }  { t_4_ce1 MemPortCE2 1 1 }  { t_4_q1 MemPortDOUT2 0 64 } } }
	t_5 { ap_memory {  { t_5_address0 mem_address 1 4 }  { t_5_ce0 mem_ce 1 1 }  { t_5_we0 mem_we 1 1 }  { t_5_d0 mem_din 1 64 }  { t_5_address1 MemPortADDR2 1 4 }  { t_5_ce1 MemPortCE2 1 1 }  { t_5_q1 MemPortDOUT2 0 64 } } }
	t_6 { ap_memory {  { t_6_address0 mem_address 1 4 }  { t_6_ce0 mem_ce 1 1 }  { t_6_we0 mem_we 1 1 }  { t_6_d0 mem_din 1 64 }  { t_6_address1 MemPortADDR2 1 4 }  { t_6_ce1 MemPortCE2 1 1 }  { t_6_q1 MemPortDOUT2 0 64 } } }
	t_7 { ap_memory {  { t_7_address0 mem_address 1 4 }  { t_7_ce0 mem_ce 1 1 }  { t_7_we0 mem_we 1 1 }  { t_7_d0 mem_din 1 64 }  { t_7_address1 MemPortADDR2 1 4 }  { t_7_ce1 MemPortCE2 1 1 }  { t_7_q1 MemPortDOUT2 0 64 } } }
	tt { ap_memory {  { tt_address0 mem_address 1 3 }  { tt_ce0 mem_ce 1 1 }  { tt_q0 mem_dout 0 64 } } }
}
