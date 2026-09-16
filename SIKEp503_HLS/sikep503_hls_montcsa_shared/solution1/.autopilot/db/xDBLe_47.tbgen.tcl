set moduleName xDBLe_47
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
set cdfgNum 623
set C_modelName {xDBLe.47}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict R_X { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_Z { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Q_X_0 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Q_X_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Q_Z_0 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Q_Z_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A24plus { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C24_0 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C24_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ R_X int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ R_Z int 64 regular {array 16 { 1 3 } 1 1 }  }
	{ Q_X_0 int 64 regular {array 8 { 2 1 } 1 1 }  }
	{ Q_X_1 int 64 regular {array 8 { 2 1 } 1 1 }  }
	{ Q_Z_0 int 64 regular {array 8 { 2 1 } 1 1 }  }
	{ Q_Z_1 int 64 regular {array 8 { 2 1 } 1 1 }  }
	{ A24plus int 64 regular {array 16 { 1 1 } 1 1 }  }
	{ C24_0 int 64 regular {array 8 { 1 1 } 1 1 }  }
	{ C24_1 int 64 regular {array 8 { 1 1 } 1 1 }  }
	{ e int 7 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "R_X", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "R_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Q_X_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "Q_X_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "Q_Z_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "Q_Z_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "A24plus", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C24_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C24_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "e", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ R_X_address0 sc_out sc_lv 4 signal 0 } 
	{ R_X_ce0 sc_out sc_logic 1 signal 0 } 
	{ R_X_q0 sc_in sc_lv 64 signal 0 } 
	{ R_Z_address0 sc_out sc_lv 4 signal 1 } 
	{ R_Z_ce0 sc_out sc_logic 1 signal 1 } 
	{ R_Z_q0 sc_in sc_lv 64 signal 1 } 
	{ Q_X_0_address0 sc_out sc_lv 3 signal 2 } 
	{ Q_X_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ Q_X_0_we0 sc_out sc_logic 1 signal 2 } 
	{ Q_X_0_d0 sc_out sc_lv 64 signal 2 } 
	{ Q_X_0_q0 sc_in sc_lv 64 signal 2 } 
	{ Q_X_0_address1 sc_out sc_lv 3 signal 2 } 
	{ Q_X_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ Q_X_0_q1 sc_in sc_lv 64 signal 2 } 
	{ Q_X_1_address0 sc_out sc_lv 3 signal 3 } 
	{ Q_X_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ Q_X_1_we0 sc_out sc_logic 1 signal 3 } 
	{ Q_X_1_d0 sc_out sc_lv 64 signal 3 } 
	{ Q_X_1_q0 sc_in sc_lv 64 signal 3 } 
	{ Q_X_1_address1 sc_out sc_lv 3 signal 3 } 
	{ Q_X_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ Q_X_1_q1 sc_in sc_lv 64 signal 3 } 
	{ Q_Z_0_address0 sc_out sc_lv 3 signal 4 } 
	{ Q_Z_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ Q_Z_0_we0 sc_out sc_logic 1 signal 4 } 
	{ Q_Z_0_d0 sc_out sc_lv 64 signal 4 } 
	{ Q_Z_0_q0 sc_in sc_lv 64 signal 4 } 
	{ Q_Z_0_address1 sc_out sc_lv 3 signal 4 } 
	{ Q_Z_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ Q_Z_0_q1 sc_in sc_lv 64 signal 4 } 
	{ Q_Z_1_address0 sc_out sc_lv 3 signal 5 } 
	{ Q_Z_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ Q_Z_1_we0 sc_out sc_logic 1 signal 5 } 
	{ Q_Z_1_d0 sc_out sc_lv 64 signal 5 } 
	{ Q_Z_1_q0 sc_in sc_lv 64 signal 5 } 
	{ Q_Z_1_address1 sc_out sc_lv 3 signal 5 } 
	{ Q_Z_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ Q_Z_1_q1 sc_in sc_lv 64 signal 5 } 
	{ A24plus_address0 sc_out sc_lv 4 signal 6 } 
	{ A24plus_ce0 sc_out sc_logic 1 signal 6 } 
	{ A24plus_q0 sc_in sc_lv 64 signal 6 } 
	{ A24plus_address1 sc_out sc_lv 4 signal 6 } 
	{ A24plus_ce1 sc_out sc_logic 1 signal 6 } 
	{ A24plus_q1 sc_in sc_lv 64 signal 6 } 
	{ C24_0_address0 sc_out sc_lv 3 signal 7 } 
	{ C24_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ C24_0_q0 sc_in sc_lv 64 signal 7 } 
	{ C24_0_address1 sc_out sc_lv 3 signal 7 } 
	{ C24_0_ce1 sc_out sc_logic 1 signal 7 } 
	{ C24_0_q1 sc_in sc_lv 64 signal 7 } 
	{ C24_1_address0 sc_out sc_lv 3 signal 8 } 
	{ C24_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ C24_1_q0 sc_in sc_lv 64 signal 8 } 
	{ C24_1_address1 sc_out sc_lv 3 signal 8 } 
	{ C24_1_ce1 sc_out sc_logic 1 signal 8 } 
	{ C24_1_q1 sc_in sc_lv 64 signal 8 } 
	{ e sc_in sc_lv 7 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "R_X_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "R_X", "role": "address0" }} , 
 	{ "name": "R_X_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_X", "role": "ce0" }} , 
 	{ "name": "R_X_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_X", "role": "q0" }} , 
 	{ "name": "R_Z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "R_Z", "role": "address0" }} , 
 	{ "name": "R_Z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_Z", "role": "ce0" }} , 
 	{ "name": "R_Z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "q0" }} , 
 	{ "name": "Q_X_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q_X_0", "role": "address0" }} , 
 	{ "name": "Q_X_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_0", "role": "ce0" }} , 
 	{ "name": "Q_X_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_0", "role": "we0" }} , 
 	{ "name": "Q_X_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_X_0", "role": "d0" }} , 
 	{ "name": "Q_X_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_X_0", "role": "q0" }} , 
 	{ "name": "Q_X_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q_X_0", "role": "address1" }} , 
 	{ "name": "Q_X_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_0", "role": "ce1" }} , 
 	{ "name": "Q_X_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_X_0", "role": "q1" }} , 
 	{ "name": "Q_X_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q_X_1", "role": "address0" }} , 
 	{ "name": "Q_X_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_1", "role": "ce0" }} , 
 	{ "name": "Q_X_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_1", "role": "we0" }} , 
 	{ "name": "Q_X_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_X_1", "role": "d0" }} , 
 	{ "name": "Q_X_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_X_1", "role": "q0" }} , 
 	{ "name": "Q_X_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q_X_1", "role": "address1" }} , 
 	{ "name": "Q_X_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_1", "role": "ce1" }} , 
 	{ "name": "Q_X_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_X_1", "role": "q1" }} , 
 	{ "name": "Q_Z_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "address0" }} , 
 	{ "name": "Q_Z_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "ce0" }} , 
 	{ "name": "Q_Z_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "we0" }} , 
 	{ "name": "Q_Z_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "d0" }} , 
 	{ "name": "Q_Z_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "q0" }} , 
 	{ "name": "Q_Z_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "address1" }} , 
 	{ "name": "Q_Z_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "ce1" }} , 
 	{ "name": "Q_Z_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "q1" }} , 
 	{ "name": "Q_Z_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "address0" }} , 
 	{ "name": "Q_Z_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "ce0" }} , 
 	{ "name": "Q_Z_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "we0" }} , 
 	{ "name": "Q_Z_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "d0" }} , 
 	{ "name": "Q_Z_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "q0" }} , 
 	{ "name": "Q_Z_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "address1" }} , 
 	{ "name": "Q_Z_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "ce1" }} , 
 	{ "name": "Q_Z_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "q1" }} , 
 	{ "name": "A24plus_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A24plus", "role": "address0" }} , 
 	{ "name": "A24plus_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A24plus", "role": "ce0" }} , 
 	{ "name": "A24plus_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A24plus", "role": "q0" }} , 
 	{ "name": "A24plus_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A24plus", "role": "address1" }} , 
 	{ "name": "A24plus_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A24plus", "role": "ce1" }} , 
 	{ "name": "A24plus_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A24plus", "role": "q1" }} , 
 	{ "name": "C24_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "C24_0", "role": "address0" }} , 
 	{ "name": "C24_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C24_0", "role": "ce0" }} , 
 	{ "name": "C24_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C24_0", "role": "q0" }} , 
 	{ "name": "C24_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "C24_0", "role": "address1" }} , 
 	{ "name": "C24_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C24_0", "role": "ce1" }} , 
 	{ "name": "C24_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C24_0", "role": "q1" }} , 
 	{ "name": "C24_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "C24_1", "role": "address0" }} , 
 	{ "name": "C24_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C24_1", "role": "ce0" }} , 
 	{ "name": "C24_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C24_1", "role": "q0" }} , 
 	{ "name": "C24_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "C24_1", "role": "address1" }} , 
 	{ "name": "C24_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C24_1", "role": "ce1" }} , 
 	{ "name": "C24_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C24_1", "role": "q1" }} , 
 	{ "name": "e", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "e", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "9", "11", "13", "19", "28", "103", "180", "257", "263", "340", "349", "426"],
		"CDFG" : "xDBLe_47",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1262051", "EstimateLatencyMax" : "1262051",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1_fu_378", "Port" : "R_X", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1170_fu_394", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1171_fu_386", "Port" : "R_Z", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "11", "SubInstance" : "grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1172_fu_402", "Port" : "R_Z", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Q_X_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1_fu_378", "Port" : "Q_X_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "13", "SubInstance" : "grp_fpsub503_193_fu_410", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "19", "SubInstance" : "grp_fpadd503_155130_fu_426", "Port" : "a", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "426", "SubInstance" : "grp_xDBLe_47_Pipeline_VITIS_LOOP_313_1_fu_516", "Port" : "Q_X_0", "Inst_start_state" : "29", "Inst_end_state" : "30"}]},
			{"Name" : "Q_X_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1170_fu_394", "Port" : "Q_X_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "13", "SubInstance" : "grp_fpsub503_193_fu_410", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "19", "SubInstance" : "grp_fpadd503_155130_fu_426", "Port" : "a", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "426", "SubInstance" : "grp_xDBLe_47_Pipeline_VITIS_LOOP_313_1_fu_516", "Port" : "Q_X_1", "Inst_start_state" : "29", "Inst_end_state" : "30"}]},
			{"Name" : "Q_Z_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1171_fu_386", "Port" : "Q_Z_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "13", "SubInstance" : "grp_fpsub503_193_fu_410", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "19", "SubInstance" : "grp_fpadd503_155130_fu_426", "Port" : "b", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "426", "SubInstance" : "grp_xDBLe_47_Pipeline_VITIS_LOOP_313_1_fu_516", "Port" : "Q_Z_0", "Inst_start_state" : "29", "Inst_end_state" : "30"}]},
			{"Name" : "Q_Z_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1172_fu_402", "Port" : "Q_Z_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "13", "SubInstance" : "grp_fpsub503_193_fu_410", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "19", "SubInstance" : "grp_fpadd503_155130_fu_426", "Port" : "b", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "426", "SubInstance" : "grp_xDBLe_47_Pipeline_VITIS_LOOP_313_1_fu_516", "Port" : "Q_Z_1", "Inst_start_state" : "29", "Inst_end_state" : "30"}]},
			{"Name" : "A24plus", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "263", "SubInstance" : "grp_fp2mul503_mont_335129_fu_484", "Port" : "a", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "C24_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_fp2mul503_mont_25128_fu_449", "Port" : "a_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "C24_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_fp2mul503_mont_25128_fu_449", "Port" : "a_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_fpsub503_193_fu_410", "Port" : "p503x2_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "19", "SubInstance" : "grp_fpadd503_155130_fu_426", "Port" : "p503x2_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "28", "SubInstance" : "grp_fp2sqr503_mont_2_1_fu_442", "Port" : "p503x2_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "257", "SubInstance" : "grp_fpsub503_2_1_fu_470", "Port" : "p503x2_1", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "340", "SubInstance" : "grp_fpadd503_156_2143_fu_494", "Port" : "p503x2_1", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_fp2mul503_mont_25128_fu_449", "Port" : "p503_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "180", "SubInstance" : "grp_fp2mul503_mont_2_fu_461", "Port" : "p503_1", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "263", "SubInstance" : "grp_fp2mul503_mont_335129_fu_484", "Port" : "p503_1", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "349", "SubInstance" : "grp_fp2mul503_mont_3321_fu_508", "Port" : "p503_1", "Inst_start_state" : "27", "Inst_end_state" : "28"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "30", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state30"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Qnew_X_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Qnew_Z_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1_fu_378", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "xDBLe_47_Pipeline_VITIS_LOOP_17_1",
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
			{"Name" : "Q_X_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1_fu_378.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1171_fu_386", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "xDBLe_47_Pipeline_VITIS_LOOP_17_1171",
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
			{"Name" : "Q_Z_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1171_fu_386.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1170_fu_394", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "xDBLe_47_Pipeline_VITIS_LOOP_17_1170",
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
			{"Name" : "Q_X_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1170_fu_394.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1172_fu_402", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "xDBLe_47_Pipeline_VITIS_LOOP_17_1172",
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
			{"Name" : "Q_Z_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_47_Pipeline_VITIS_LOOP_17_1172_fu_402.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_193_fu_410", "Parent" : "0", "Child" : ["14", "16"],
		"CDFG" : "fpsub503_193",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
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
					{"ID" : "14", "SubInstance" : "grp_fpsub503_193_Pipeline_VITIS_LOOP_62_1_fu_32", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_fpsub503_193_Pipeline_VITIS_LOOP_62_1_fu_32", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_fpsub503_193_Pipeline_VITIS_LOOP_62_1_fu_32", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "16", "SubInstance" : "grp_fpsub503_193_Pipeline_VITIS_LOOP_69_2_fu_44", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_fpsub503_193_Pipeline_VITIS_LOOP_69_2_fu_44", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_193_fu_410.grp_fpsub503_193_Pipeline_VITIS_LOOP_62_1_fu_32", "Parent" : "13", "Child" : ["15"],
		"CDFG" : "fpsub503_193_Pipeline_VITIS_LOOP_62_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln64_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_193_fu_410.grp_fpsub503_193_Pipeline_VITIS_LOOP_62_1_fu_32.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_193_fu_410.grp_fpsub503_193_Pipeline_VITIS_LOOP_69_2_fu_44", "Parent" : "13", "Child" : ["17", "18"],
		"CDFG" : "fpsub503_193_Pipeline_VITIS_LOOP_69_2",
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
			{"Name" : "zext_ln64_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_193_fu_410.grp_fpsub503_193_Pipeline_VITIS_LOOP_69_2_fu_44.p503x2_1_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_193_fu_410.grp_fpsub503_193_Pipeline_VITIS_LOOP_69_2_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_155130_fu_426", "Parent" : "0", "Child" : ["20", "22", "25"],
		"CDFG" : "fpadd503_155130",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
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
					{"ID" : "20", "SubInstance" : "grp_fpadd503_155130_Pipeline_VITIS_LOOP_34_1_fu_34", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_fpadd503_155130_Pipeline_VITIS_LOOP_34_1_fu_34", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_fpadd503_155130_Pipeline_VITIS_LOOP_34_1_fu_34", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "22", "SubInstance" : "grp_fpadd503_155130_Pipeline_VITIS_LOOP_40_2_fu_45", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "25", "SubInstance" : "grp_fpadd503_155130_Pipeline_VITIS_LOOP_47_3_fu_55", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_fpadd503_155130_Pipeline_VITIS_LOOP_40_2_fu_45", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "25", "SubInstance" : "grp_fpadd503_155130_Pipeline_VITIS_LOOP_47_3_fu_55", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_155130_fu_426.grp_fpadd503_155130_Pipeline_VITIS_LOOP_34_1_fu_34", "Parent" : "19", "Child" : ["21"],
		"CDFG" : "fpadd503_155130_Pipeline_VITIS_LOOP_34_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_155130_fu_426.grp_fpadd503_155130_Pipeline_VITIS_LOOP_34_1_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_155130_fu_426.grp_fpadd503_155130_Pipeline_VITIS_LOOP_40_2_fu_45", "Parent" : "19", "Child" : ["23", "24"],
		"CDFG" : "fpadd503_155130_Pipeline_VITIS_LOOP_40_2",
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
			{"Name" : "zext_ln36_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_649_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_155130_fu_426.grp_fpadd503_155130_Pipeline_VITIS_LOOP_40_2_fu_45.p503x2_1_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_155130_fu_426.grp_fpadd503_155130_Pipeline_VITIS_LOOP_40_2_fu_45.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_155130_fu_426.grp_fpadd503_155130_Pipeline_VITIS_LOOP_47_3_fu_55", "Parent" : "19", "Child" : ["26", "27"],
		"CDFG" : "fpadd503_155130_Pipeline_VITIS_LOOP_47_3",
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
			{"Name" : "zext_ln36_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_155130_fu_426.grp_fpadd503_155130_Pipeline_VITIS_LOOP_47_3_fu_55.p503x2_1_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_155130_fu_426.grp_fpadd503_155130_Pipeline_VITIS_LOOP_47_3_fu_55.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442", "Parent" : "0", "Child" : ["29", "30", "31", "32", "34", "36", "39", "41", "72"],
		"CDFG" : "fp2sqr503_mont_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "89", "EstimateLatencyMax" : "89",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_34", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "34", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1_fu_42", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "39", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1183_fu_58", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "41", "SubInstance" : "grp_fpmul503_mont_6_fu_65", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "72", "SubInstance" : "grp_fpmul503_mont_5_1_fu_73", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2_fu_50", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.t1_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.t2_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.t3_U", "Parent" : "28"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_34", "Parent" : "28", "Child" : ["33"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1_fu_42", "Parent" : "28", "Child" : ["35"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2_fu_50", "Parent" : "28", "Child" : ["37", "38"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2_fu_50.p503x2_1_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1183_fu_58", "Parent" : "28", "Child" : ["40"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1183",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1183_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65", "Parent" : "28", "Child" : ["42"],
		"CDFG" : "fpmul503_mont_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
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
					{"ID" : "42", "SubInstance" : "grp_mul_4_2_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_mul_4_2_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_mul_4_2_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8", "Parent" : "41", "Child" : ["43"],
		"CDFG" : "mul_4_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "24",
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
					{"ID" : "43", "SubInstance" : "grp_mul_6_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_mul_6_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_mul_6_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8", "Parent" : "42", "Child" : ["44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71"],
		"CDFG" : "mul_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U926", "Parent" : "43"},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U927", "Parent" : "43"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U928", "Parent" : "43"},
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U929", "Parent" : "43"},
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U930", "Parent" : "43"},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U931", "Parent" : "43"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U932", "Parent" : "43"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U933", "Parent" : "43"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_64ns_128_1_1_U934", "Parent" : "43"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_56ns_119_1_1_U935", "Parent" : "43"},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_56ns_119_1_1_U936", "Parent" : "43"},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_62ns_125_1_1_U937", "Parent" : "43"},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_62ns_125_1_1_U938", "Parent" : "43"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_62ns_125_1_1_U939", "Parent" : "43"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_62ns_125_1_1_U940", "Parent" : "43"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_64ns_127_1_1_U941", "Parent" : "43"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_64ns_127_1_1_U942", "Parent" : "43"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_65ns_128_1_1_U943", "Parent" : "43"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64ns_65ns_128_1_1_U944", "Parent" : "43"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64s_64ns_64_1_1_U945", "Parent" : "43"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64s_64ns_64_1_1_U946", "Parent" : "43"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64s_64ns_64_1_1_U947", "Parent" : "43"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64s_62ns_64_1_1_U948", "Parent" : "43"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64s_64ns_64_1_1_U949", "Parent" : "43"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64s_62ns_64_1_1_U950", "Parent" : "43"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64s_64ns_64_1_1_U951", "Parent" : "43"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64s_64s_64_1_1_U952", "Parent" : "43"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_6_fu_65.grp_mul_4_2_fu_8.grp_mul_6_fu_8.mul_64s_64s_64_1_1_U953", "Parent" : "43"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73", "Parent" : "28", "Child" : ["73"],
		"CDFG" : "fpmul503_mont_5_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
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
					{"ID" : "73", "SubInstance" : "grp_mul_5_1_1_fu_6", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_mul_5_1_1_fu_6", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6", "Parent" : "72", "Child" : ["74"],
		"CDFG" : "mul_5_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "24",
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
					{"ID" : "74", "SubInstance" : "grp_mul_5_1_fu_6", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "grp_mul_5_1_fu_6", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6", "Parent" : "73", "Child" : ["75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102"],
		"CDFG" : "mul_5_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U963", "Parent" : "74"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U964", "Parent" : "74"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U965", "Parent" : "74"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U966", "Parent" : "74"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U967", "Parent" : "74"},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U968", "Parent" : "74"},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U969", "Parent" : "74"},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U970", "Parent" : "74"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_64ns_128_1_1_U971", "Parent" : "74"},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_56ns_119_1_1_U972", "Parent" : "74"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_56ns_119_1_1_U973", "Parent" : "74"},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_62ns_125_1_1_U974", "Parent" : "74"},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_62ns_125_1_1_U975", "Parent" : "74"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_62ns_125_1_1_U976", "Parent" : "74"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_62ns_125_1_1_U977", "Parent" : "74"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_64ns_127_1_1_U978", "Parent" : "74"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_64ns_127_1_1_U979", "Parent" : "74"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_65ns_128_1_1_U980", "Parent" : "74"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64ns_65ns_128_1_1_U981", "Parent" : "74"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64s_64ns_64_1_1_U982", "Parent" : "74"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64s_64ns_64_1_1_U983", "Parent" : "74"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64s_64ns_64_1_1_U984", "Parent" : "74"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64s_62ns_64_1_1_U985", "Parent" : "74"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64s_64ns_64_1_1_U986", "Parent" : "74"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64s_62ns_64_1_1_U987", "Parent" : "74"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64s_64ns_64_1_1_U988", "Parent" : "74"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64s_64s_64_1_1_U989", "Parent" : "74"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_442.grp_fpmul503_mont_5_1_fu_73.grp_mul_5_1_1_fu_6.grp_mul_5_1_fu_6.mul_64s_64s_64_1_1_U990", "Parent" : "74"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449", "Parent" : "0", "Child" : ["104", "105", "106", "107", "108", "109", "115", "117", "119", "121", "124", "126", "172", "178"],
		"CDFG" : "fp2mul503_mont_25128",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "558", "EstimateLatencyMax" : "558",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_mp_mul_24131_fu_58", "Port" : "a_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "115", "SubInstance" : "grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1_fu_79", "Port" : "a_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_mp_mul_24131_fu_58", "Port" : "a_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "115", "SubInstance" : "grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1_fu_79", "Port" : "a_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_mp_mul_24131_fu_58", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "117", "SubInstance" : "grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1229_fu_88", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_rdc_mont_2107_fu_117", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "121", "SubInstance" : "grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_205_1_fu_103", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.t1_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.t2_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.tt1_U", "Parent" : "103"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.tt2_U", "Parent" : "103"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.tt3_U", "Parent" : "103"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_mp_mul_24131_fu_58", "Parent" : "103", "Child" : ["110"],
		"CDFG" : "mp_mul_24131",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_mul_23132_fu_36", "Port" : "a_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_mul_23132_fu_36", "Port" : "a_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_mul_23132_fu_36", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "110", "SubInstance" : "grp_mul_23132_fu_36", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_mp_mul_24131_fu_58.grp_mul_23132_fu_36", "Parent" : "109", "Child" : ["111"],
		"CDFG" : "mul_23132",
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
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_mul_23132_Pipeline_COL_fu_355", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_mp_mul_24131_fu_58.grp_mul_23132_fu_36.grp_mul_23132_Pipeline_COL_fu_355", "Parent" : "110", "Child" : ["112", "113", "114"],
		"CDFG" : "mul_23132_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zext_ln69_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_598_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_mp_mul_24131_fu_58.grp_mul_23132_fu_36.grp_mul_23132_Pipeline_COL_fu_355.mul_64ns_64ns_128_1_1_U2560", "Parent" : "111"},
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_mp_mul_24131_fu_58.grp_mul_23132_fu_36.grp_mul_23132_Pipeline_COL_fu_355.sparsemux_31_4_64_1_1_U2561", "Parent" : "111"},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_mp_mul_24131_fu_58.grp_mul_23132_fu_36.grp_mul_23132_Pipeline_COL_fu_355.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1_fu_79", "Parent" : "103", "Child" : ["116"],
		"CDFG" : "fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1",
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
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1229_fu_88", "Parent" : "103", "Child" : ["118"],
		"CDFG" : "fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1229",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1229_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_178_1_fu_95", "Parent" : "103", "Child" : ["120"],
		"CDFG" : "fp2mul503_mont_25128_Pipeline_VITIS_LOOP_178_1",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_178_1_fu_95.flow_control_loop_pipe_sequential_init_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_205_1_fu_103", "Parent" : "103", "Child" : ["122", "123"],
		"CDFG" : "fp2mul503_mont_25128_Pipeline_VITIS_LOOP_205_1",
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
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln197", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_205_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_205_1_fu_103.p503_1_U", "Parent" : "121"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_205_1_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "121"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1230_fu_111", "Parent" : "103", "Child" : ["125"],
		"CDFG" : "fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1230",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1230_fu_111.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117", "Parent" : "103", "Child" : ["127", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "147", "152", "157", "162", "167"],
		"CDFG" : "rdc_mont_2107",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "104", "EstimateLatencyMax" : "104",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "126", "Child" : ["128"],
		"CDFG" : "rdc_mont_2107_Pipeline_VITIS_LOOP_299_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln301", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_299_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_is_digit_lessthan_ct_fu_305", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_is_digit_lessthan_ct_fu_312", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_is_digit_lessthan_ct_fu_319", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_is_digit_lessthan_ct_fu_325", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_is_digit_lessthan_ct_fu_331", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_is_digit_lessthan_ct_fu_338", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_is_digit_lessthan_ct_fu_345", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_is_digit_lessthan_ct_fu_351", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_is_digit_lessthan_ct_fu_358", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_is_digit_lessthan_ct_fu_367", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_is_digit_lessthan_ct_fu_374", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.tmp_44_is_digit_lessthan_ct_fu_380", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.tmp_45_is_digit_lessthan_ct_fu_387", "Parent" : "126",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_394", "Parent" : "126", "Child" : ["143", "144", "145", "146"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U413", "Parent" : "142"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U414", "Parent" : "142"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U415", "Parent" : "142"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U416", "Parent" : "142"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_401", "Parent" : "126", "Child" : ["148", "149", "150", "151"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U413", "Parent" : "147"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U414", "Parent" : "147"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U415", "Parent" : "147"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U416", "Parent" : "147"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_408", "Parent" : "126", "Child" : ["153", "154", "155", "156"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U413", "Parent" : "152"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U414", "Parent" : "152"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U415", "Parent" : "152"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U416", "Parent" : "152"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_415", "Parent" : "126", "Child" : ["158", "159", "160", "161"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U413", "Parent" : "157"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U414", "Parent" : "157"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U415", "Parent" : "157"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U416", "Parent" : "157"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_422", "Parent" : "126", "Child" : ["163", "164", "165", "166"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U413", "Parent" : "162"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U414", "Parent" : "162"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U415", "Parent" : "162"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U416", "Parent" : "162"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_429", "Parent" : "126", "Child" : ["168", "169", "170", "171"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U413", "Parent" : "167"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U414", "Parent" : "167"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U415", "Parent" : "167"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_rdc_mont_2107_fu_117.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U416", "Parent" : "167"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_mp_mul_5173_fu_127", "Parent" : "103", "Child" : ["173"],
		"CDFG" : "mp_mul_5173",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "173", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "173", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "173", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_mp_mul_5173_fu_127.grp_mul_4181_fu_8", "Parent" : "172", "Child" : ["174"],
		"CDFG" : "mul_4181",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_mul_4181_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_mp_mul_5173_fu_127.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306", "Parent" : "173", "Child" : ["175", "176", "177"],
		"CDFG" : "mul_4181_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_590_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_mp_mul_5173_fu_127.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U425", "Parent" : "174"},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_mp_mul_5173_fu_127.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U426", "Parent" : "174"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_mp_mul_5173_fu_127.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "174"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_178_1231_fu_134", "Parent" : "103", "Child" : ["179"],
		"CDFG" : "fp2mul503_mont_25128_Pipeline_VITIS_LOOP_178_1231",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_25128_fu_449.grp_fp2mul503_mont_25128_Pipeline_VITIS_LOOP_178_1231_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "178"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461", "Parent" : "0", "Child" : ["181", "182", "183", "184", "185", "186", "192", "194", "196", "198", "201", "203", "249", "255"],
		"CDFG" : "fp2mul503_mont_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "558", "EstimateLatencyMax" : "558",
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
					{"ID" : "186", "SubInstance" : "grp_mp_mul_5172_fu_56", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "192", "SubInstance" : "grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1_fu_72", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "grp_mp_mul_5172_fu_56", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "194", "SubInstance" : "grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1232_fu_79", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_rdc_mont_2107_fu_108", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "198", "SubInstance" : "grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_205_1_fu_94", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.t1_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.t2_U", "Parent" : "180"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.tt1_U", "Parent" : "180"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.tt2_U", "Parent" : "180"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.tt3_U", "Parent" : "180"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_mp_mul_5172_fu_56", "Parent" : "180", "Child" : ["187"],
		"CDFG" : "mp_mul_5172",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "187", "SubInstance" : "grp_mul_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "grp_mul_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "grp_mul_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_mp_mul_5172_fu_56.grp_mul_1_fu_26", "Parent" : "186", "Child" : ["188"],
		"CDFG" : "mul_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_mul_1_Pipeline_COL_fu_326", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_mp_mul_5172_fu_56.grp_mul_1_fu_26.grp_mul_1_Pipeline_COL_fu_326", "Parent" : "187", "Child" : ["189", "190", "191"],
		"CDFG" : "mul_1_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zext_ln69_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_599_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_mp_mul_5172_fu_56.grp_mul_1_fu_26.grp_mul_1_Pipeline_COL_fu_326.mul_64ns_64ns_128_1_1_U1018", "Parent" : "188"},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_mp_mul_5172_fu_56.grp_mul_1_fu_26.grp_mul_1_Pipeline_COL_fu_326.sparsemux_31_4_64_1_1_U1019", "Parent" : "188"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_mp_mul_5172_fu_56.grp_mul_1_fu_26.grp_mul_1_Pipeline_COL_fu_326.flow_control_loop_pipe_sequential_init_U", "Parent" : "188"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1_fu_72", "Parent" : "180", "Child" : ["193"],
		"CDFG" : "fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1232_fu_79", "Parent" : "180", "Child" : ["195"],
		"CDFG" : "fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1232",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1232_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "194"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_178_1_fu_86", "Parent" : "180", "Child" : ["197"],
		"CDFG" : "fp2mul503_mont_2_Pipeline_VITIS_LOOP_178_1",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_178_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_205_1_fu_94", "Parent" : "180", "Child" : ["199", "200"],
		"CDFG" : "fp2mul503_mont_2_Pipeline_VITIS_LOOP_205_1",
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
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln197", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_205_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_205_1_fu_94.p503_1_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_205_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "198"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1233_fu_102", "Parent" : "180", "Child" : ["202"],
		"CDFG" : "fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1233",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1233_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108", "Parent" : "180", "Child" : ["204", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "224", "229", "234", "239", "244"],
		"CDFG" : "rdc_mont_2107",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "104", "EstimateLatencyMax" : "104",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "203", "Child" : ["205"],
		"CDFG" : "rdc_mont_2107_Pipeline_VITIS_LOOP_299_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln301", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_299_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_is_digit_lessthan_ct_fu_305", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_is_digit_lessthan_ct_fu_312", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_is_digit_lessthan_ct_fu_319", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_is_digit_lessthan_ct_fu_325", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_is_digit_lessthan_ct_fu_331", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_is_digit_lessthan_ct_fu_338", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_is_digit_lessthan_ct_fu_345", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_is_digit_lessthan_ct_fu_351", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_is_digit_lessthan_ct_fu_358", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_is_digit_lessthan_ct_fu_367", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_is_digit_lessthan_ct_fu_374", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.tmp_44_is_digit_lessthan_ct_fu_380", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.tmp_45_is_digit_lessthan_ct_fu_387", "Parent" : "203",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_394", "Parent" : "203", "Child" : ["220", "221", "222", "223"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U413", "Parent" : "219"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U414", "Parent" : "219"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U415", "Parent" : "219"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U416", "Parent" : "219"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_401", "Parent" : "203", "Child" : ["225", "226", "227", "228"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U413", "Parent" : "224"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U414", "Parent" : "224"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U415", "Parent" : "224"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U416", "Parent" : "224"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_408", "Parent" : "203", "Child" : ["230", "231", "232", "233"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U413", "Parent" : "229"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U414", "Parent" : "229"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U415", "Parent" : "229"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U416", "Parent" : "229"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_415", "Parent" : "203", "Child" : ["235", "236", "237", "238"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U413", "Parent" : "234"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U414", "Parent" : "234"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U415", "Parent" : "234"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U416", "Parent" : "234"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_422", "Parent" : "203", "Child" : ["240", "241", "242", "243"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U413", "Parent" : "239"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U414", "Parent" : "239"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U415", "Parent" : "239"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U416", "Parent" : "239"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_429", "Parent" : "203", "Child" : ["245", "246", "247", "248"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U413", "Parent" : "244"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U414", "Parent" : "244"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U415", "Parent" : "244"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_rdc_mont_2107_fu_108.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U416", "Parent" : "244"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_mp_mul_5173_fu_118", "Parent" : "180", "Child" : ["250"],
		"CDFG" : "mp_mul_5173",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "250", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "250", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "250", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8", "Parent" : "249", "Child" : ["251"],
		"CDFG" : "mul_4181",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_mul_4181_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306", "Parent" : "250", "Child" : ["252", "253", "254"],
		"CDFG" : "mul_4181_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_590_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U425", "Parent" : "251"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U426", "Parent" : "251"},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "251"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_178_1234_fu_125", "Parent" : "180", "Child" : ["256"],
		"CDFG" : "fp2mul503_mont_2_Pipeline_VITIS_LOOP_178_1234",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_2_fu_461.grp_fp2mul503_mont_2_Pipeline_VITIS_LOOP_178_1234_fu_125.flow_control_loop_pipe_sequential_init_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_1_fu_470", "Parent" : "0", "Child" : ["258", "260"],
		"CDFG" : "fpsub503_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "258", "SubInstance" : "grp_fpsub503_2_1_Pipeline_VITIS_LOOP_62_1_fu_38", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "260", "SubInstance" : "grp_fpsub503_2_1_Pipeline_VITIS_LOOP_69_2_fu_49", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "258", "SubInstance" : "grp_fpsub503_2_1_Pipeline_VITIS_LOOP_62_1_fu_38", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_fpsub503_2_1_Pipeline_VITIS_LOOP_69_2_fu_49", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_1_fu_470.grp_fpsub503_2_1_Pipeline_VITIS_LOOP_62_1_fu_38", "Parent" : "257", "Child" : ["259"],
		"CDFG" : "fpsub503_2_1_Pipeline_VITIS_LOOP_62_1",
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
			{"Name" : "zext_ln64_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln64_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_1_fu_470.grp_fpsub503_2_1_Pipeline_VITIS_LOOP_62_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "258"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_1_fu_470.grp_fpsub503_2_1_Pipeline_VITIS_LOOP_69_2_fu_49", "Parent" : "257", "Child" : ["261", "262"],
		"CDFG" : "fpsub503_2_1_Pipeline_VITIS_LOOP_69_2",
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
			{"Name" : "zext_ln64_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_1_fu_470.grp_fpsub503_2_1_Pipeline_VITIS_LOOP_69_2_fu_49.p503x2_1_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_1_fu_470.grp_fpsub503_2_1_Pipeline_VITIS_LOOP_69_2_fu_49.flow_control_loop_pipe_sequential_init_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484", "Parent" : "0", "Child" : ["264", "265", "266", "267", "268", "269", "275", "277", "279", "281", "284", "286", "332", "338"],
		"CDFG" : "fp2mul503_mont_335129",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "536", "EstimateLatencyMax" : "536",
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
					{"ID" : "269", "SubInstance" : "grp_mp_mul_517146_fu_56", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "275", "SubInstance" : "grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1_fu_72", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_mp_mul_517146_fu_56", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "277", "SubInstance" : "grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1199_fu_79", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "286", "SubInstance" : "grp_rdc_mont_1_fu_108", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "281", "SubInstance" : "grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_205_1_fu_94", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.t1_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.t2_U", "Parent" : "263"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.tt1_U", "Parent" : "263"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.tt2_U", "Parent" : "263"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.tt3_U", "Parent" : "263"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_mp_mul_517146_fu_56", "Parent" : "263", "Child" : ["270"],
		"CDFG" : "mp_mul_517146",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "270", "SubInstance" : "grp_mul_248_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_mul_248_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_mul_248_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_mp_mul_517146_fu_56.grp_mul_248_fu_26", "Parent" : "269", "Child" : ["271"],
		"CDFG" : "mul_248",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_mul_248_Pipeline_COL_fu_326", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_mp_mul_517146_fu_56.grp_mul_248_fu_26.grp_mul_248_Pipeline_COL_fu_326", "Parent" : "270", "Child" : ["272", "273", "274"],
		"CDFG" : "mul_248_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zext_ln69_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_597_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_mp_mul_517146_fu_56.grp_mul_248_fu_26.grp_mul_248_Pipeline_COL_fu_326.mul_64ns_64ns_128_1_1_U366", "Parent" : "271"},
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_mp_mul_517146_fu_56.grp_mul_248_fu_26.grp_mul_248_Pipeline_COL_fu_326.sparsemux_31_4_64_1_1_U367", "Parent" : "271"},
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_mp_mul_517146_fu_56.grp_mul_248_fu_26.grp_mul_248_Pipeline_COL_fu_326.flow_control_loop_pipe_sequential_init_U", "Parent" : "271"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1_fu_72", "Parent" : "263", "Child" : ["276"],
		"CDFG" : "fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1199_fu_79", "Parent" : "263", "Child" : ["278"],
		"CDFG" : "fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1199",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1199_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_178_1_fu_86", "Parent" : "263", "Child" : ["280"],
		"CDFG" : "fp2mul503_mont_335129_Pipeline_VITIS_LOOP_178_1",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_178_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_205_1_fu_94", "Parent" : "263", "Child" : ["282", "283"],
		"CDFG" : "fp2mul503_mont_335129_Pipeline_VITIS_LOOP_205_1",
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
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln197", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_205_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_205_1_fu_94.p503_1_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_205_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "281"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1200_fu_102", "Parent" : "263", "Child" : ["285"],
		"CDFG" : "fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1200",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1200_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108", "Parent" : "263", "Child" : ["287", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "307", "312", "317", "322", "327"],
		"CDFG" : "rdc_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "82", "EstimateLatencyMax" : "82",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "286", "Child" : ["288"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_299_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln301", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_299_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_305", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_312", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_319", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_325", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_331", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_338", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_345", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_351", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_358", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_367", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_374", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.tmp_45_is_digit_lessthan_ct_fu_380", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.tmp_46_is_digit_lessthan_ct_fu_387", "Parent" : "286",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_394", "Parent" : "286", "Child" : ["303", "304", "305", "306"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U413", "Parent" : "302"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U414", "Parent" : "302"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U415", "Parent" : "302"},
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U416", "Parent" : "302"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_401", "Parent" : "286", "Child" : ["308", "309", "310", "311"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U413", "Parent" : "307"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U414", "Parent" : "307"},
	{"ID" : "310", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U415", "Parent" : "307"},
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U416", "Parent" : "307"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_408", "Parent" : "286", "Child" : ["313", "314", "315", "316"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U413", "Parent" : "312"},
	{"ID" : "314", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U414", "Parent" : "312"},
	{"ID" : "315", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U415", "Parent" : "312"},
	{"ID" : "316", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U416", "Parent" : "312"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_415", "Parent" : "286", "Child" : ["318", "319", "320", "321"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U413", "Parent" : "317"},
	{"ID" : "319", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U414", "Parent" : "317"},
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U415", "Parent" : "317"},
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U416", "Parent" : "317"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_422", "Parent" : "286", "Child" : ["323", "324", "325", "326"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "323", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U413", "Parent" : "322"},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U414", "Parent" : "322"},
	{"ID" : "325", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U415", "Parent" : "322"},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U416", "Parent" : "322"},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_429", "Parent" : "286", "Child" : ["328", "329", "330", "331"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U413", "Parent" : "327"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U414", "Parent" : "327"},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U415", "Parent" : "327"},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U416", "Parent" : "327"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_mp_mul_5173_fu_118", "Parent" : "263", "Child" : ["333"],
		"CDFG" : "mp_mul_5173",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "333", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8", "Parent" : "332", "Child" : ["334"],
		"CDFG" : "mul_4181",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "334", "SubInstance" : "grp_mul_4181_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306", "Parent" : "333", "Child" : ["335", "336", "337"],
		"CDFG" : "mul_4181_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_590_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "335", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U425", "Parent" : "334"},
	{"ID" : "336", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U426", "Parent" : "334"},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "334"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_178_1201_fu_125", "Parent" : "263", "Child" : ["339"],
		"CDFG" : "fp2mul503_mont_335129_Pipeline_VITIS_LOOP_178_1201",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_335129_fu_484.grp_fp2mul503_mont_335129_Pipeline_VITIS_LOOP_178_1201_fu_125.flow_control_loop_pipe_sequential_init_U", "Parent" : "338"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_156_2143_fu_494", "Parent" : "0", "Child" : ["341", "343", "346"],
		"CDFG" : "fpadd503_156_2143",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_34_1_fu_40", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "343", "SubInstance" : "grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_40_2_fu_50", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "346", "SubInstance" : "grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_47_3_fu_60", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_34_1_fu_40", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "343", "SubInstance" : "grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_40_2_fu_50", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "346", "SubInstance" : "grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_47_3_fu_60", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_156_2143_fu_494.grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_34_1_fu_40", "Parent" : "340", "Child" : ["342"],
		"CDFG" : "fpadd503_156_2143_Pipeline_VITIS_LOOP_34_1",
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
			{"Name" : "zext_ln36_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln36_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_156_2143_fu_494.grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_34_1_fu_40.flow_control_loop_pipe_sequential_init_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_156_2143_fu_494.grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_40_2_fu_50", "Parent" : "340", "Child" : ["344", "345"],
		"CDFG" : "fpadd503_156_2143_Pipeline_VITIS_LOOP_40_2",
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
			{"Name" : "zext_ln36_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_640_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_156_2143_fu_494.grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_40_2_fu_50.p503x2_1_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_156_2143_fu_494.grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_40_2_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "343"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_156_2143_fu_494.grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_47_3_fu_60", "Parent" : "340", "Child" : ["347", "348"],
		"CDFG" : "fpadd503_156_2143_Pipeline_VITIS_LOOP_47_3",
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
			{"Name" : "zext_ln36_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_156_2143_fu_494.grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_47_3_fu_60.p503x2_1_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_156_2143_fu_494.grp_fpadd503_156_2143_Pipeline_VITIS_LOOP_47_3_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "346"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508", "Parent" : "0", "Child" : ["350", "351", "352", "353", "354", "355", "361", "363", "365", "367", "370", "372", "418", "424"],
		"CDFG" : "fp2mul503_mont_3321",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "558", "EstimateLatencyMax" : "558",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "355", "SubInstance" : "grp_mp_mul_5170109_fu_54", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "361", "SubInstance" : "grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1_fu_70", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "372", "SubInstance" : "grp_rdc_mont_2107_fu_106", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "355", "SubInstance" : "grp_mp_mul_5170109_fu_54", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "363", "SubInstance" : "grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1214_fu_77", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_205_1_fu_92", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.t1_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.t2_U", "Parent" : "349"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.tt1_U", "Parent" : "349"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.tt2_U", "Parent" : "349"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.tt3_U", "Parent" : "349"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_mp_mul_5170109_fu_54", "Parent" : "349", "Child" : ["356"],
		"CDFG" : "mp_mul_5170109",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "356", "SubInstance" : "grp_mul_3110_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_mul_3110_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_mul_3110_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_mp_mul_5170109_fu_54.grp_mul_3110_fu_26", "Parent" : "355", "Child" : ["357"],
		"CDFG" : "mul_3110",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "357", "SubInstance" : "grp_mul_3110_Pipeline_COL_fu_326", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "357", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_mp_mul_5170109_fu_54.grp_mul_3110_fu_26.grp_mul_3110_Pipeline_COL_fu_326", "Parent" : "356", "Child" : ["358", "359", "360"],
		"CDFG" : "mul_3110_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "zext_ln69_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_596_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "358", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_mp_mul_5170109_fu_54.grp_mul_3110_fu_26.grp_mul_3110_Pipeline_COL_fu_326.mul_64ns_64ns_128_1_1_U668", "Parent" : "357"},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_mp_mul_5170109_fu_54.grp_mul_3110_fu_26.grp_mul_3110_Pipeline_COL_fu_326.sparsemux_31_4_64_1_1_U669", "Parent" : "357"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_mp_mul_5170109_fu_54.grp_mul_3110_fu_26.grp_mul_3110_Pipeline_COL_fu_326.flow_control_loop_pipe_sequential_init_U", "Parent" : "357"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1_fu_70", "Parent" : "349", "Child" : ["362"],
		"CDFG" : "fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "361"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1214_fu_77", "Parent" : "349", "Child" : ["364"],
		"CDFG" : "fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1214",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1214_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "363"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_178_1_fu_84", "Parent" : "349", "Child" : ["366"],
		"CDFG" : "fp2mul503_mont_3321_Pipeline_VITIS_LOOP_178_1",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_178_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_205_1_fu_92", "Parent" : "349", "Child" : ["368", "369"],
		"CDFG" : "fp2mul503_mont_3321_Pipeline_VITIS_LOOP_205_1",
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
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln197", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_205_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_205_1_fu_92.p503_1_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_205_1_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "367"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1215_fu_100", "Parent" : "349", "Child" : ["371"],
		"CDFG" : "fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1215",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1215_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106", "Parent" : "349", "Child" : ["373", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "393", "398", "403", "408", "413"],
		"CDFG" : "rdc_mont_2107",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "104", "EstimateLatencyMax" : "104",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "372", "Child" : ["374"],
		"CDFG" : "rdc_mont_2107_Pipeline_VITIS_LOOP_299_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln301", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_299_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "374", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "373"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_305", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_312", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_319", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_325", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_331", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_338", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_345", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_351", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_358", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_367", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_374", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.tmp_44_is_digit_lessthan_ct_fu_380", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "387", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.tmp_45_is_digit_lessthan_ct_fu_387", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394", "Parent" : "372", "Child" : ["389", "390", "391", "392"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "389", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U413", "Parent" : "388"},
	{"ID" : "390", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U414", "Parent" : "388"},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U415", "Parent" : "388"},
	{"ID" : "392", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U416", "Parent" : "388"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401", "Parent" : "372", "Child" : ["394", "395", "396", "397"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U413", "Parent" : "393"},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U414", "Parent" : "393"},
	{"ID" : "396", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U415", "Parent" : "393"},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U416", "Parent" : "393"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408", "Parent" : "372", "Child" : ["399", "400", "401", "402"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U413", "Parent" : "398"},
	{"ID" : "400", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U414", "Parent" : "398"},
	{"ID" : "401", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U415", "Parent" : "398"},
	{"ID" : "402", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U416", "Parent" : "398"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415", "Parent" : "372", "Child" : ["404", "405", "406", "407"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "404", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U413", "Parent" : "403"},
	{"ID" : "405", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U414", "Parent" : "403"},
	{"ID" : "406", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U415", "Parent" : "403"},
	{"ID" : "407", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U416", "Parent" : "403"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422", "Parent" : "372", "Child" : ["409", "410", "411", "412"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U413", "Parent" : "408"},
	{"ID" : "410", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U414", "Parent" : "408"},
	{"ID" : "411", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U415", "Parent" : "408"},
	{"ID" : "412", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U416", "Parent" : "408"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429", "Parent" : "372", "Child" : ["414", "415", "416", "417"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "414", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U413", "Parent" : "413"},
	{"ID" : "415", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U414", "Parent" : "413"},
	{"ID" : "416", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U415", "Parent" : "413"},
	{"ID" : "417", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U416", "Parent" : "413"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_mp_mul_5173_fu_116", "Parent" : "349", "Child" : ["419"],
		"CDFG" : "mp_mul_5173",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
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
					{"ID" : "419", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "419", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "419", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8", "Parent" : "418", "Child" : ["420"],
		"CDFG" : "mul_4181",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_mul_4181_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306", "Parent" : "419", "Child" : ["421", "422", "423"],
		"CDFG" : "mul_4181_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_590_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "421", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U425", "Parent" : "420"},
	{"ID" : "422", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U426", "Parent" : "420"},
	{"ID" : "423", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "420"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_178_1216_fu_123", "Parent" : "349", "Child" : ["425"],
		"CDFG" : "fp2mul503_mont_3321_Pipeline_VITIS_LOOP_178_1216",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_508.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_178_1216_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "424"},
	{"ID" : "426", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_47_Pipeline_VITIS_LOOP_313_1_fu_516", "Parent" : "0", "Child" : ["427"],
		"CDFG" : "xDBLe_47_Pipeline_VITIS_LOOP_313_1",
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
			{"Name" : "Q_X_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Q_X_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Q_Z_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Q_Z_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Qnew_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Qnew_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_313_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_47_Pipeline_VITIS_LOOP_313_1_fu_516.flow_control_loop_pipe_sequential_init_U", "Parent" : "426"}]}


set ArgLastReadFirstWriteLatency {
	xDBLe_47 {
		R_X {Type I LastRead 0 FirstWrite -1}
		R_Z {Type I LastRead 0 FirstWrite -1}
		Q_X_0 {Type IO LastRead 0 FirstWrite -1}
		Q_X_1 {Type IO LastRead 0 FirstWrite -1}
		Q_Z_0 {Type IO LastRead 0 FirstWrite -1}
		Q_Z_1 {Type IO LastRead 0 FirstWrite -1}
		A24plus {Type I LastRead 1 FirstWrite -1}
		C24_0 {Type I LastRead 1 FirstWrite -1}
		C24_1 {Type I LastRead 1 FirstWrite -1}
		e {Type I LastRead 3 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	xDBLe_47_Pipeline_VITIS_LOOP_17_1 {
		Q_X_0 {Type O LastRead -1 FirstWrite 1}
		R_X {Type I LastRead 0 FirstWrite -1}}
	xDBLe_47_Pipeline_VITIS_LOOP_17_1171 {
		Q_Z_0 {Type O LastRead -1 FirstWrite 1}
		R_Z {Type I LastRead 0 FirstWrite -1}}
	xDBLe_47_Pipeline_VITIS_LOOP_17_1170 {
		Q_X_1 {Type O LastRead -1 FirstWrite 1}
		R_X {Type I LastRead 0 FirstWrite -1}}
	xDBLe_47_Pipeline_VITIS_LOOP_17_1172 {
		Q_Z_1 {Type O LastRead -1 FirstWrite 1}
		R_Z {Type I LastRead 0 FirstWrite -1}}
	fpsub503_193 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_193_Pipeline_VITIS_LOOP_62_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		zext_ln64_22 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_193_Pipeline_VITIS_LOOP_69_2 {
		zext_ln64_22 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_155130 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_155130_Pipeline_VITIS_LOOP_34_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		zext_ln36_32 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_155130_Pipeline_VITIS_LOOP_40_2 {
		zext_ln36_32 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		carry_649_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_155130_Pipeline_VITIS_LOOP_47_3 {
		zext_ln36_32 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1 {
		c {Type IO LastRead 13 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_62_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_69_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1183 {
		c {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_6 {
		ma {Type I LastRead 11 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_4_2 {
		a {Type I LastRead 11 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_6 {
		a {Type I LastRead 11 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	fpmul503_mont_5_1 {
		ma {Type I LastRead 11 FirstWrite -1}
		mc {Type IO LastRead 13 FirstWrite 20}}
	mul_5_1_1 {
		a {Type I LastRead 11 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	mul_5_1 {
		a {Type I LastRead 11 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	fp2mul503_mont_25128 {
		a_0 {Type I LastRead 1 FirstWrite -1}
		a_1 {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_24131 {
		a_0 {Type I LastRead 1 FirstWrite -1}
		a_0_offset {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 1 FirstWrite -1}
		a_1_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_23132 {
		a_0 {Type I LastRead 1 FirstWrite -1}
		a_0_offset {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 1 FirstWrite -1}
		a_1_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_23132_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		zext_ln69_10 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_598_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1 {
		a_0 {Type I LastRead 1 FirstWrite -1}
		a_1 {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1229 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_25128_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_25128_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_25128_Pipeline_VITIS_LOOP_396_1230 {
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_2107 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}
		mc_offset1 {Type I LastRead 2 FirstWrite -1}}
	rdc_mont_2107_Pipeline_VITIS_LOOP_299_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln301 {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_5173 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4181 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4181_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_590_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_25128_Pipeline_VITIS_LOOP_178_1231 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_2 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_5172 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_1 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_1_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		zext_ln69_11 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_599_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1 {
		a {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1232 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_2_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_2_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_2_Pipeline_VITIS_LOOP_396_1233 {
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_2107 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}
		mc_offset1 {Type I LastRead 2 FirstWrite -1}}
	rdc_mont_2107_Pipeline_VITIS_LOOP_299_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln301 {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_5173 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4181 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4181_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_590_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_2_Pipeline_VITIS_LOOP_178_1234 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fpsub503_2_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_2_1_Pipeline_VITIS_LOOP_62_1 {
		zext_ln64_21 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		zext_ln64_20 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_2_1_Pipeline_VITIS_LOOP_69_2 {
		zext_ln64_21 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_335129 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_517146 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_248 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_248_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		zext_ln69_9 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_597_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1 {
		a {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1199 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_335129_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_335129_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_335129_Pipeline_VITIS_LOOP_396_1200 {
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_1 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}
		mc_offset {Type I LastRead 2 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_299_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln301 {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_5173 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4181 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4181_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_590_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_335129_Pipeline_VITIS_LOOP_178_1201 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fpadd503_156_2143 {
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_156_2143_Pipeline_VITIS_LOOP_34_1 {
		zext_ln36_27 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		zext_ln36_26 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_156_2143_Pipeline_VITIS_LOOP_40_2 {
		zext_ln36_27 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		carry_640_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_156_2143_Pipeline_VITIS_LOOP_47_3 {
		zext_ln36_27 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_3321 {
		c {Type IO LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_5170109 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_3110 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_3110_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		zext_ln69_8 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_596_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1214 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_3321_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_3321_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1215 {
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_2107 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}
		mc_offset1 {Type I LastRead 2 FirstWrite -1}}
	rdc_mont_2107_Pipeline_VITIS_LOOP_299_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln301 {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	is_digit_lessthan_ct {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_5173 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4181 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4181_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		acc_14 {Type IO LastRead 1 FirstWrite 1}
		acc_13 {Type IO LastRead 1 FirstWrite 1}
		acc_12 {Type IO LastRead 1 FirstWrite 1}
		acc_11 {Type IO LastRead 1 FirstWrite 1}
		acc_10 {Type IO LastRead 1 FirstWrite 1}
		acc_9 {Type IO LastRead 1 FirstWrite 1}
		acc_8 {Type IO LastRead 1 FirstWrite 1}
		acc_7 {Type IO LastRead 1 FirstWrite 1}
		acc_6 {Type IO LastRead 1 FirstWrite 1}
		acc_5 {Type IO LastRead 1 FirstWrite 1}
		acc_4 {Type IO LastRead 1 FirstWrite 1}
		acc_3 {Type IO LastRead 1 FirstWrite 1}
		acc_2 {Type IO LastRead 1 FirstWrite 1}
		acc_1 {Type IO LastRead 1 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_590_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_3321_Pipeline_VITIS_LOOP_178_1216 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	xDBLe_47_Pipeline_VITIS_LOOP_313_1 {
		Q_X_0 {Type IO LastRead 0 FirstWrite 1}
		Q_X_1 {Type IO LastRead 0 FirstWrite 1}
		Q_Z_0 {Type IO LastRead 0 FirstWrite 1}
		Q_Z_1 {Type IO LastRead 0 FirstWrite 1}
		Qnew_X {Type I LastRead 1 FirstWrite -1}
		Qnew_Z {Type I LastRead 1 FirstWrite -1}
		zext_ln47 {Type I LastRead 0 FirstWrite -1}
		e_cast {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1262051", "Max" : "1262051"}
	, {"Name" : "Interval", "Min" : "1262051", "Max" : "1262051"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	R_X { ap_memory {  { R_X_address0 mem_address 1 4 }  { R_X_ce0 mem_ce 1 1 }  { R_X_q0 mem_dout 0 64 } } }
	R_Z { ap_memory {  { R_Z_address0 mem_address 1 4 }  { R_Z_ce0 mem_ce 1 1 }  { R_Z_q0 mem_dout 0 64 } } }
	Q_X_0 { ap_memory {  { Q_X_0_address0 mem_address 1 3 }  { Q_X_0_ce0 mem_ce 1 1 }  { Q_X_0_we0 mem_we 1 1 }  { Q_X_0_d0 mem_din 1 64 }  { Q_X_0_q0 mem_dout 0 64 }  { Q_X_0_address1 MemPortADDR2 1 3 }  { Q_X_0_ce1 MemPortCE2 1 1 }  { Q_X_0_q1 MemPortDOUT2 0 64 } } }
	Q_X_1 { ap_memory {  { Q_X_1_address0 mem_address 1 3 }  { Q_X_1_ce0 mem_ce 1 1 }  { Q_X_1_we0 mem_we 1 1 }  { Q_X_1_d0 mem_din 1 64 }  { Q_X_1_q0 mem_dout 0 64 }  { Q_X_1_address1 MemPortADDR2 1 3 }  { Q_X_1_ce1 MemPortCE2 1 1 }  { Q_X_1_q1 MemPortDOUT2 0 64 } } }
	Q_Z_0 { ap_memory {  { Q_Z_0_address0 mem_address 1 3 }  { Q_Z_0_ce0 mem_ce 1 1 }  { Q_Z_0_we0 mem_we 1 1 }  { Q_Z_0_d0 mem_din 1 64 }  { Q_Z_0_q0 mem_dout 0 64 }  { Q_Z_0_address1 MemPortADDR2 1 3 }  { Q_Z_0_ce1 MemPortCE2 1 1 }  { Q_Z_0_q1 MemPortDOUT2 0 64 } } }
	Q_Z_1 { ap_memory {  { Q_Z_1_address0 mem_address 1 3 }  { Q_Z_1_ce0 mem_ce 1 1 }  { Q_Z_1_we0 mem_we 1 1 }  { Q_Z_1_d0 mem_din 1 64 }  { Q_Z_1_q0 mem_dout 0 64 }  { Q_Z_1_address1 MemPortADDR2 1 3 }  { Q_Z_1_ce1 MemPortCE2 1 1 }  { Q_Z_1_q1 MemPortDOUT2 0 64 } } }
	A24plus { ap_memory {  { A24plus_address0 mem_address 1 4 }  { A24plus_ce0 mem_ce 1 1 }  { A24plus_q0 mem_dout 0 64 }  { A24plus_address1 MemPortADDR2 1 4 }  { A24plus_ce1 MemPortCE2 1 1 }  { A24plus_q1 MemPortDOUT2 0 64 } } }
	C24_0 { ap_memory {  { C24_0_address0 mem_address 1 3 }  { C24_0_ce0 mem_ce 1 1 }  { C24_0_q0 mem_dout 0 64 }  { C24_0_address1 MemPortADDR2 1 3 }  { C24_0_ce1 MemPortCE2 1 1 }  { C24_0_q1 MemPortDOUT2 0 64 } } }
	C24_1 { ap_memory {  { C24_1_address0 mem_address 1 3 }  { C24_1_ce0 mem_ce 1 1 }  { C24_1_q0 mem_dout 0 64 }  { C24_1_address1 MemPortADDR2 1 3 }  { C24_1_ce1 MemPortCE2 1 1 }  { C24_1_q1 MemPortDOUT2 0 64 } } }
	e { ap_none {  { e in_data 0 7 } } }
}
