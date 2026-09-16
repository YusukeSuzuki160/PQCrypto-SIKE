set moduleName fpmul503_mont_10
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 655
set C_modelName {fpmul503_mont.10}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict ma { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mb { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mc_0 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mc_1 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mc_2 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mc_3 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mc_4 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mc_5 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mc_6 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict mc_7 { MEM_WIDTH 64 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ma int 64 regular {array 8 { 1 } 1 1 }  }
	{ mb int 64 regular {array 8 { 1 } 1 1 }  }
	{ mc_0 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ mc_1 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ mc_2 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ mc_3 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ mc_4 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ mc_5 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ mc_6 int 64 regular {array 15 { 0 3 } 0 1 }  }
	{ mc_7 int 64 regular {array 15 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ma", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mb", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mc_0", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mc_1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mc_2", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mc_3", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mc_4", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mc_5", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mc_6", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mc_7", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ma_address0 sc_out sc_lv 3 signal 0 } 
	{ ma_ce0 sc_out sc_logic 1 signal 0 } 
	{ ma_q0 sc_in sc_lv 64 signal 0 } 
	{ mb_address0 sc_out sc_lv 3 signal 1 } 
	{ mb_ce0 sc_out sc_logic 1 signal 1 } 
	{ mb_q0 sc_in sc_lv 64 signal 1 } 
	{ mc_0_address0 sc_out sc_lv 4 signal 2 } 
	{ mc_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ mc_0_we0 sc_out sc_logic 1 signal 2 } 
	{ mc_0_d0 sc_out sc_lv 64 signal 2 } 
	{ mc_1_address0 sc_out sc_lv 4 signal 3 } 
	{ mc_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ mc_1_we0 sc_out sc_logic 1 signal 3 } 
	{ mc_1_d0 sc_out sc_lv 64 signal 3 } 
	{ mc_2_address0 sc_out sc_lv 4 signal 4 } 
	{ mc_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ mc_2_we0 sc_out sc_logic 1 signal 4 } 
	{ mc_2_d0 sc_out sc_lv 64 signal 4 } 
	{ mc_3_address0 sc_out sc_lv 4 signal 5 } 
	{ mc_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ mc_3_we0 sc_out sc_logic 1 signal 5 } 
	{ mc_3_d0 sc_out sc_lv 64 signal 5 } 
	{ mc_4_address0 sc_out sc_lv 4 signal 6 } 
	{ mc_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ mc_4_we0 sc_out sc_logic 1 signal 6 } 
	{ mc_4_d0 sc_out sc_lv 64 signal 6 } 
	{ mc_5_address0 sc_out sc_lv 4 signal 7 } 
	{ mc_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ mc_5_we0 sc_out sc_logic 1 signal 7 } 
	{ mc_5_d0 sc_out sc_lv 64 signal 7 } 
	{ mc_6_address0 sc_out sc_lv 4 signal 8 } 
	{ mc_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ mc_6_we0 sc_out sc_logic 1 signal 8 } 
	{ mc_6_d0 sc_out sc_lv 64 signal 8 } 
	{ mc_7_address0 sc_out sc_lv 4 signal 9 } 
	{ mc_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ mc_7_we0 sc_out sc_logic 1 signal 9 } 
	{ mc_7_d0 sc_out sc_lv 64 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ma_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ma", "role": "address0" }} , 
 	{ "name": "ma_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ma", "role": "ce0" }} , 
 	{ "name": "ma_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ma", "role": "q0" }} , 
 	{ "name": "mb_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mb", "role": "address0" }} , 
 	{ "name": "mb_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mb", "role": "ce0" }} , 
 	{ "name": "mb_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mb", "role": "q0" }} , 
 	{ "name": "mc_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mc_0", "role": "address0" }} , 
 	{ "name": "mc_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_0", "role": "ce0" }} , 
 	{ "name": "mc_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_0", "role": "we0" }} , 
 	{ "name": "mc_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc_0", "role": "d0" }} , 
 	{ "name": "mc_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mc_1", "role": "address0" }} , 
 	{ "name": "mc_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_1", "role": "ce0" }} , 
 	{ "name": "mc_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_1", "role": "we0" }} , 
 	{ "name": "mc_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc_1", "role": "d0" }} , 
 	{ "name": "mc_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mc_2", "role": "address0" }} , 
 	{ "name": "mc_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_2", "role": "ce0" }} , 
 	{ "name": "mc_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_2", "role": "we0" }} , 
 	{ "name": "mc_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc_2", "role": "d0" }} , 
 	{ "name": "mc_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mc_3", "role": "address0" }} , 
 	{ "name": "mc_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_3", "role": "ce0" }} , 
 	{ "name": "mc_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_3", "role": "we0" }} , 
 	{ "name": "mc_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc_3", "role": "d0" }} , 
 	{ "name": "mc_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mc_4", "role": "address0" }} , 
 	{ "name": "mc_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_4", "role": "ce0" }} , 
 	{ "name": "mc_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_4", "role": "we0" }} , 
 	{ "name": "mc_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc_4", "role": "d0" }} , 
 	{ "name": "mc_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mc_5", "role": "address0" }} , 
 	{ "name": "mc_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_5", "role": "ce0" }} , 
 	{ "name": "mc_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_5", "role": "we0" }} , 
 	{ "name": "mc_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc_5", "role": "d0" }} , 
 	{ "name": "mc_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mc_6", "role": "address0" }} , 
 	{ "name": "mc_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_6", "role": "ce0" }} , 
 	{ "name": "mc_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_6", "role": "we0" }} , 
 	{ "name": "mc_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc_6", "role": "d0" }} , 
 	{ "name": "mc_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mc_7", "role": "address0" }} , 
 	{ "name": "mc_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_7", "role": "ce0" }} , 
 	{ "name": "mc_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_7", "role": "we0" }} , 
 	{ "name": "mc_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mc_7", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fpmul503_mont_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_9_fu_32", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_9_fu_32", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_9_fu_32", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_9_fu_32", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_9_fu_32", "Port" : "c_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_9_fu_32", "Port" : "c_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_9_fu_32", "Port" : "c_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_9_fu_32", "Port" : "c_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_9_fu_32", "Port" : "c_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_mul_9_fu_32", "Port" : "c_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "mul_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_8_fu_32", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_8_fu_32", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_8_fu_32", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_8_fu_32", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_8_fu_32", "Port" : "c_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_8_fu_32", "Port" : "c_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_8_fu_32", "Port" : "c_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_8_fu_32", "Port" : "c_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_8_fu_32", "Port" : "c_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mul_8_fu_32", "Port" : "c_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "mul_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_7", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_64ns_128_1_1_U1487", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_64ns_128_1_1_U1488", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_64ns_128_1_1_U1489", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_64ns_128_1_1_U1490", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_64ns_128_1_1_U1491", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_64ns_128_1_1_U1492", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_64ns_128_1_1_U1493", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_64ns_128_1_1_U1494", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_64ns_128_1_1_U1495", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_56ns_119_1_1_U1496", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_56ns_119_1_1_U1497", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_62ns_125_1_1_U1498", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_62ns_125_1_1_U1499", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_62ns_125_1_1_U1500", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_62ns_125_1_1_U1501", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_64ns_127_1_1_U1502", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_64ns_127_1_1_U1503", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_65ns_128_1_1_U1504", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64ns_65ns_128_1_1_U1505", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64s_64ns_64_1_1_U1506", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64s_64ns_64_1_1_U1507", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64s_64ns_64_1_1_U1508", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64s_62ns_64_1_1_U1509", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64s_64ns_64_1_1_U1510", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64s_62ns_64_1_1_U1511", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64s_64ns_64_1_1_U1512", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64s_64s_64_1_1_U1513", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mul_9_fu_32.grp_mul_8_fu_32.mul_64s_64s_64_1_1_U1514", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	fpmul503_mont_10 {
		ma {Type I LastRead 10 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc_0 {Type O LastRead -1 FirstWrite 20}
		mc_1 {Type O LastRead -1 FirstWrite 20}
		mc_2 {Type O LastRead -1 FirstWrite 20}
		mc_3 {Type O LastRead -1 FirstWrite 20}
		mc_4 {Type O LastRead -1 FirstWrite 20}
		mc_5 {Type O LastRead -1 FirstWrite 20}
		mc_6 {Type O LastRead -1 FirstWrite 20}
		mc_7 {Type O LastRead -1 FirstWrite 20}}
	mul_9 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 20}
		c_1 {Type O LastRead -1 FirstWrite 20}
		c_2 {Type O LastRead -1 FirstWrite 20}
		c_3 {Type O LastRead -1 FirstWrite 20}
		c_4 {Type O LastRead -1 FirstWrite 20}
		c_5 {Type O LastRead -1 FirstWrite 20}
		c_6 {Type O LastRead -1 FirstWrite 20}
		c_7 {Type O LastRead -1 FirstWrite 20}}
	mul_8 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 20}
		c_1 {Type O LastRead -1 FirstWrite 20}
		c_2 {Type O LastRead -1 FirstWrite 20}
		c_3 {Type O LastRead -1 FirstWrite 20}
		c_4 {Type O LastRead -1 FirstWrite 20}
		c_5 {Type O LastRead -1 FirstWrite 20}
		c_6 {Type O LastRead -1 FirstWrite 20}
		c_7 {Type O LastRead -1 FirstWrite 20}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "22"}
	, {"Name" : "Interval", "Min" : "22", "Max" : "22"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ma { ap_memory {  { ma_address0 mem_address 1 3 }  { ma_ce0 mem_ce 1 1 }  { ma_q0 mem_dout 0 64 } } }
	mb { ap_memory {  { mb_address0 mem_address 1 3 }  { mb_ce0 mem_ce 1 1 }  { mb_q0 mem_dout 0 64 } } }
	mc_0 { ap_memory {  { mc_0_address0 mem_address 1 4 }  { mc_0_ce0 mem_ce 1 1 }  { mc_0_we0 mem_we 1 1 }  { mc_0_d0 mem_din 1 64 } } }
	mc_1 { ap_memory {  { mc_1_address0 mem_address 1 4 }  { mc_1_ce0 mem_ce 1 1 }  { mc_1_we0 mem_we 1 1 }  { mc_1_d0 mem_din 1 64 } } }
	mc_2 { ap_memory {  { mc_2_address0 mem_address 1 4 }  { mc_2_ce0 mem_ce 1 1 }  { mc_2_we0 mem_we 1 1 }  { mc_2_d0 mem_din 1 64 } } }
	mc_3 { ap_memory {  { mc_3_address0 mem_address 1 4 }  { mc_3_ce0 mem_ce 1 1 }  { mc_3_we0 mem_we 1 1 }  { mc_3_d0 mem_din 1 64 } } }
	mc_4 { ap_memory {  { mc_4_address0 mem_address 1 4 }  { mc_4_ce0 mem_ce 1 1 }  { mc_4_we0 mem_we 1 1 }  { mc_4_d0 mem_din 1 64 } } }
	mc_5 { ap_memory {  { mc_5_address0 mem_address 1 4 }  { mc_5_ce0 mem_ce 1 1 }  { mc_5_we0 mem_we 1 1 }  { mc_5_d0 mem_din 1 64 } } }
	mc_6 { ap_memory {  { mc_6_address0 mem_address 1 4 }  { mc_6_ce0 mem_ce 1 1 }  { mc_6_we0 mem_we 1 1 }  { mc_6_d0 mem_din 1 64 } } }
	mc_7 { ap_memory {  { mc_7_address0 mem_address 1 4 }  { mc_7_ce0 mem_ce 1 1 }  { mc_7_we0 mem_we 1 1 }  { mc_7_d0 mem_din 1 64 } } }
}
