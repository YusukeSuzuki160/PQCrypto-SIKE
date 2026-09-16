set moduleName fpinv503_chain_mont_Pipeline_VITIS_LOOP_228_1
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
set cdfgNum 598
set C_modelName {fpinv503_chain_mont_Pipeline_VITIS_LOOP_228_1}
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
	{ t int 64 regular {array 15 { 2 3 } 1 1 }  }
	{ t_1 int 64 regular {array 15 { 2 3 } 1 1 }  }
	{ t_2 int 64 regular {array 15 { 2 3 } 1 1 }  }
	{ t_3 int 64 regular {array 15 { 2 3 } 1 1 }  }
	{ t_4 int 64 regular {array 15 { 2 3 } 1 1 }  }
	{ t_5 int 64 regular {array 15 { 2 3 } 1 1 }  }
	{ t_6 int 64 regular {array 15 { 2 3 } 1 1 }  }
	{ t_7 int 64 regular {array 15 { 2 3 } 1 1 }  }
	{ tt int 64 regular {array 8 { 1 1 } 1 1 }  }
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
set portNum 52
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
	{ t_q0 sc_in sc_lv 64 signal 0 } 
	{ t_1_address0 sc_out sc_lv 4 signal 1 } 
	{ t_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ t_1_we0 sc_out sc_logic 1 signal 1 } 
	{ t_1_d0 sc_out sc_lv 64 signal 1 } 
	{ t_1_q0 sc_in sc_lv 64 signal 1 } 
	{ t_2_address0 sc_out sc_lv 4 signal 2 } 
	{ t_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ t_2_we0 sc_out sc_logic 1 signal 2 } 
	{ t_2_d0 sc_out sc_lv 64 signal 2 } 
	{ t_2_q0 sc_in sc_lv 64 signal 2 } 
	{ t_3_address0 sc_out sc_lv 4 signal 3 } 
	{ t_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ t_3_we0 sc_out sc_logic 1 signal 3 } 
	{ t_3_d0 sc_out sc_lv 64 signal 3 } 
	{ t_3_q0 sc_in sc_lv 64 signal 3 } 
	{ t_4_address0 sc_out sc_lv 4 signal 4 } 
	{ t_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ t_4_we0 sc_out sc_logic 1 signal 4 } 
	{ t_4_d0 sc_out sc_lv 64 signal 4 } 
	{ t_4_q0 sc_in sc_lv 64 signal 4 } 
	{ t_5_address0 sc_out sc_lv 4 signal 5 } 
	{ t_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ t_5_we0 sc_out sc_logic 1 signal 5 } 
	{ t_5_d0 sc_out sc_lv 64 signal 5 } 
	{ t_5_q0 sc_in sc_lv 64 signal 5 } 
	{ t_6_address0 sc_out sc_lv 4 signal 6 } 
	{ t_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ t_6_we0 sc_out sc_logic 1 signal 6 } 
	{ t_6_d0 sc_out sc_lv 64 signal 6 } 
	{ t_6_q0 sc_in sc_lv 64 signal 6 } 
	{ t_7_address0 sc_out sc_lv 4 signal 7 } 
	{ t_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ t_7_we0 sc_out sc_logic 1 signal 7 } 
	{ t_7_d0 sc_out sc_lv 64 signal 7 } 
	{ t_7_q0 sc_in sc_lv 64 signal 7 } 
	{ tt_address0 sc_out sc_lv 3 signal 8 } 
	{ tt_ce0 sc_out sc_logic 1 signal 8 } 
	{ tt_q0 sc_in sc_lv 64 signal 8 } 
	{ tt_address1 sc_out sc_lv 3 signal 8 } 
	{ tt_ce1 sc_out sc_logic 1 signal 8 } 
	{ tt_q1 sc_in sc_lv 64 signal 8 } 
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
 	{ "name": "t_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t", "role": "q0" }} , 
 	{ "name": "t_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_1", "role": "address0" }} , 
 	{ "name": "t_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_1", "role": "ce0" }} , 
 	{ "name": "t_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_1", "role": "we0" }} , 
 	{ "name": "t_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_1", "role": "d0" }} , 
 	{ "name": "t_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_1", "role": "q0" }} , 
 	{ "name": "t_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_2", "role": "address0" }} , 
 	{ "name": "t_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_2", "role": "ce0" }} , 
 	{ "name": "t_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_2", "role": "we0" }} , 
 	{ "name": "t_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_2", "role": "d0" }} , 
 	{ "name": "t_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_2", "role": "q0" }} , 
 	{ "name": "t_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_3", "role": "address0" }} , 
 	{ "name": "t_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_3", "role": "ce0" }} , 
 	{ "name": "t_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_3", "role": "we0" }} , 
 	{ "name": "t_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_3", "role": "d0" }} , 
 	{ "name": "t_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_3", "role": "q0" }} , 
 	{ "name": "t_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_4", "role": "address0" }} , 
 	{ "name": "t_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_4", "role": "ce0" }} , 
 	{ "name": "t_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_4", "role": "we0" }} , 
 	{ "name": "t_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_4", "role": "d0" }} , 
 	{ "name": "t_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_4", "role": "q0" }} , 
 	{ "name": "t_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_5", "role": "address0" }} , 
 	{ "name": "t_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_5", "role": "ce0" }} , 
 	{ "name": "t_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_5", "role": "we0" }} , 
 	{ "name": "t_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_5", "role": "d0" }} , 
 	{ "name": "t_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_5", "role": "q0" }} , 
 	{ "name": "t_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_6", "role": "address0" }} , 
 	{ "name": "t_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_6", "role": "ce0" }} , 
 	{ "name": "t_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_6", "role": "we0" }} , 
 	{ "name": "t_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_6", "role": "d0" }} , 
 	{ "name": "t_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_6", "role": "q0" }} , 
 	{ "name": "t_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "t_7", "role": "address0" }} , 
 	{ "name": "t_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_7", "role": "ce0" }} , 
 	{ "name": "t_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_7", "role": "we0" }} , 
 	{ "name": "t_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_7", "role": "d0" }} , 
 	{ "name": "t_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_7", "role": "q0" }} , 
 	{ "name": "tt_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tt", "role": "address0" }} , 
 	{ "name": "tt_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt", "role": "ce0" }} , 
 	{ "name": "tt_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tt", "role": "q0" }} , 
 	{ "name": "tt_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tt", "role": "address1" }} , 
 	{ "name": "tt_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt", "role": "ce1" }} , 
 	{ "name": "tt_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tt", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "55"],
		"CDFG" : "fpinv503_chain_mont_Pipeline_VITIS_LOOP_228_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "227", "EstimateLatencyMax" : "227",
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
					{"ID" : "1", "SubInstance" : "grp_fpmul503_mont_11_fu_284", "Port" : "mb", "Inst_start_state" : "2", "Inst_end_state" : "17"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_228_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "fpmul503_mont_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "15", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
					{"ID" : "2", "SubInstance" : "grp_mul_10_fu_70", "Port" : "b"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54"],
		"CDFG" : "mul_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "15", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1705", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1706", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1707", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1708", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1709", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1710", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1711", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1712", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1713", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1714", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1715", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1716", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1717", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1718", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1719", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1720", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1721", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1722", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1723", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1724", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1725", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1726", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_128_1_1_U1727", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_56ns_119_1_1_U1728", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_56ns_119_1_1_U1729", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_56ns_119_1_1_U1730", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_62ns_125_1_1_U1731", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_62ns_125_1_1_U1732", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_62ns_125_1_1_U1733", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_62ns_125_1_1_U1734", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_62ns_125_1_1_U1735", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_127_1_1_U1736", "Parent" : "2"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_64ns_127_1_1_U1737", "Parent" : "2"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_65ns_128_1_1_U1738", "Parent" : "2"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_65ns_128_1_1_U1739", "Parent" : "2"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_65ns_128_1_1_U1740", "Parent" : "2"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_65ns_128_1_1_U1741", "Parent" : "2"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_65ns_128_1_1_U1742", "Parent" : "2"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64ns_65ns_128_1_1_U1743", "Parent" : "2"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_62ns_64_1_1_U1744", "Parent" : "2"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_64ns_64_1_1_U1745", "Parent" : "2"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_64ns_64_1_1_U1746", "Parent" : "2"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_62ns_64_1_1_U1747", "Parent" : "2"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_62ns_64_1_1_U1748", "Parent" : "2"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_64ns_64_1_1_U1749", "Parent" : "2"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_64ns_64_1_1_U1750", "Parent" : "2"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_64ns_64_1_1_U1751", "Parent" : "2"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_62ns_64_1_1_U1752", "Parent" : "2"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_62ns_64_1_1_U1753", "Parent" : "2"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_64s_64_1_1_U1754", "Parent" : "2"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_64s_64_1_1_U1755", "Parent" : "2"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpmul503_mont_11_fu_284.grp_mul_10_fu_70.mul_64s_64s_64_1_1_U1756", "Parent" : "2"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fpinv503_chain_mont_Pipeline_VITIS_LOOP_228_1 {
		t {Type IO LastRead 0 FirstWrite 17}
		t_1 {Type IO LastRead 0 FirstWrite 17}
		t_2 {Type IO LastRead 0 FirstWrite 17}
		t_3 {Type IO LastRead 0 FirstWrite 17}
		t_4 {Type IO LastRead 0 FirstWrite 17}
		t_5 {Type IO LastRead 0 FirstWrite 17}
		t_6 {Type IO LastRead 0 FirstWrite 17}
		t_7 {Type IO LastRead 0 FirstWrite 17}
		tt {Type I LastRead 4 FirstWrite -1}}
	fpmul503_mont_11 {
		ma_read {Type I LastRead 0 FirstWrite -1}
		ma_read_45 {Type I LastRead 0 FirstWrite -1}
		ma_read_46 {Type I LastRead 0 FirstWrite -1}
		ma_read_47 {Type I LastRead 0 FirstWrite -1}
		ma_read_48 {Type I LastRead 0 FirstWrite -1}
		ma_read_49 {Type I LastRead 0 FirstWrite -1}
		ma_read_50 {Type I LastRead 0 FirstWrite -1}
		ma_read_51 {Type I LastRead 0 FirstWrite -1}
		mb {Type I LastRead 4 FirstWrite -1}}
	mul_10 {
		a_read {Type I LastRead 1 FirstWrite -1}
		a_read_22 {Type I LastRead 1 FirstWrite -1}
		a_read_23 {Type I LastRead 1 FirstWrite -1}
		a_read_24 {Type I LastRead 1 FirstWrite -1}
		a_read_25 {Type I LastRead 1 FirstWrite -1}
		a_read_26 {Type I LastRead 1 FirstWrite -1}
		a_read_27 {Type I LastRead 1 FirstWrite -1}
		a_read_28 {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "227", "Max" : "227"}
	, {"Name" : "Interval", "Min" : "227", "Max" : "227"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	t { ap_memory {  { t_address0 mem_address 1 4 }  { t_ce0 mem_ce 1 1 }  { t_we0 mem_we 1 1 }  { t_d0 mem_din 1 64 }  { t_q0 mem_dout 0 64 } } }
	t_1 { ap_memory {  { t_1_address0 mem_address 1 4 }  { t_1_ce0 mem_ce 1 1 }  { t_1_we0 mem_we 1 1 }  { t_1_d0 mem_din 1 64 }  { t_1_q0 mem_dout 0 64 } } }
	t_2 { ap_memory {  { t_2_address0 mem_address 1 4 }  { t_2_ce0 mem_ce 1 1 }  { t_2_we0 mem_we 1 1 }  { t_2_d0 mem_din 1 64 }  { t_2_q0 mem_dout 0 64 } } }
	t_3 { ap_memory {  { t_3_address0 mem_address 1 4 }  { t_3_ce0 mem_ce 1 1 }  { t_3_we0 mem_we 1 1 }  { t_3_d0 mem_din 1 64 }  { t_3_q0 mem_dout 0 64 } } }
	t_4 { ap_memory {  { t_4_address0 mem_address 1 4 }  { t_4_ce0 mem_ce 1 1 }  { t_4_we0 mem_we 1 1 }  { t_4_d0 mem_din 1 64 }  { t_4_q0 mem_dout 0 64 } } }
	t_5 { ap_memory {  { t_5_address0 mem_address 1 4 }  { t_5_ce0 mem_ce 1 1 }  { t_5_we0 mem_we 1 1 }  { t_5_d0 mem_din 1 64 }  { t_5_q0 mem_dout 0 64 } } }
	t_6 { ap_memory {  { t_6_address0 mem_address 1 4 }  { t_6_ce0 mem_ce 1 1 }  { t_6_we0 mem_we 1 1 }  { t_6_d0 mem_din 1 64 }  { t_6_q0 mem_dout 0 64 } } }
	t_7 { ap_memory {  { t_7_address0 mem_address 1 4 }  { t_7_ce0 mem_ce 1 1 }  { t_7_we0 mem_we 1 1 }  { t_7_d0 mem_din 1 64 }  { t_7_q0 mem_dout 0 64 } } }
	tt { ap_memory {  { tt_address0 mem_address 1 3 }  { tt_ce0 mem_ce 1 1 }  { tt_q0 mem_dout 0 64 }  { tt_address1 MemPortADDR2 1 3 }  { tt_ce1 MemPortCE2 1 1 }  { tt_q1 MemPortDOUT2 0 64 } } }
}
