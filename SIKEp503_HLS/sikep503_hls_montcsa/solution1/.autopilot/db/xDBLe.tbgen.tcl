set moduleName xDBLe
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
set C_modelName {xDBLe}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict R_X { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_Z { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Q_X_0 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Q_X_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Q_Z_0 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict Q_Z_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A24plus_0 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A24plus_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C24_0 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C24_1 { MEM_WIDTH 64 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ R_X int 64 regular {array 16 { 1 } 1 1 }  }
	{ R_Z int 64 regular {array 16 { 1 } 1 1 }  }
	{ Q_X_0 int 64 regular {array 8 { 2 } 1 1 }  }
	{ Q_X_1 int 64 regular {array 8 { 2 } 1 1 }  }
	{ Q_Z_0 int 64 regular {array 8 { 2 } 1 1 }  }
	{ Q_Z_1 int 64 regular {array 8 { 2 } 1 1 }  }
	{ A24plus_0 int 64 regular {array 8 { 1 } 1 1 }  }
	{ A24plus_1 int 64 regular {array 8 { 1 } 1 1 }  }
	{ C24_0 int 64 regular {array 8 { 1 } 1 1 }  }
	{ C24_1 int 64 regular {array 8 { 1 } 1 1 }  }
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
 	{ "Name" : "A24plus_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "A24plus_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C24_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C24_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "e", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 45
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
	{ Q_X_1_address0 sc_out sc_lv 3 signal 3 } 
	{ Q_X_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ Q_X_1_we0 sc_out sc_logic 1 signal 3 } 
	{ Q_X_1_d0 sc_out sc_lv 64 signal 3 } 
	{ Q_X_1_q0 sc_in sc_lv 64 signal 3 } 
	{ Q_Z_0_address0 sc_out sc_lv 3 signal 4 } 
	{ Q_Z_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ Q_Z_0_we0 sc_out sc_logic 1 signal 4 } 
	{ Q_Z_0_d0 sc_out sc_lv 64 signal 4 } 
	{ Q_Z_0_q0 sc_in sc_lv 64 signal 4 } 
	{ Q_Z_1_address0 sc_out sc_lv 3 signal 5 } 
	{ Q_Z_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ Q_Z_1_we0 sc_out sc_logic 1 signal 5 } 
	{ Q_Z_1_d0 sc_out sc_lv 64 signal 5 } 
	{ Q_Z_1_q0 sc_in sc_lv 64 signal 5 } 
	{ A24plus_0_address0 sc_out sc_lv 3 signal 6 } 
	{ A24plus_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ A24plus_0_q0 sc_in sc_lv 64 signal 6 } 
	{ A24plus_1_address0 sc_out sc_lv 3 signal 7 } 
	{ A24plus_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ A24plus_1_q0 sc_in sc_lv 64 signal 7 } 
	{ C24_0_address0 sc_out sc_lv 3 signal 8 } 
	{ C24_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ C24_0_q0 sc_in sc_lv 64 signal 8 } 
	{ C24_1_address0 sc_out sc_lv 3 signal 9 } 
	{ C24_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ C24_1_q0 sc_in sc_lv 64 signal 9 } 
	{ e sc_in sc_lv 7 signal 10 } 
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
 	{ "name": "Q_X_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q_X_1", "role": "address0" }} , 
 	{ "name": "Q_X_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_1", "role": "ce0" }} , 
 	{ "name": "Q_X_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_1", "role": "we0" }} , 
 	{ "name": "Q_X_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_X_1", "role": "d0" }} , 
 	{ "name": "Q_X_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_X_1", "role": "q0" }} , 
 	{ "name": "Q_Z_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "address0" }} , 
 	{ "name": "Q_Z_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "ce0" }} , 
 	{ "name": "Q_Z_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "we0" }} , 
 	{ "name": "Q_Z_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "d0" }} , 
 	{ "name": "Q_Z_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_Z_0", "role": "q0" }} , 
 	{ "name": "Q_Z_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "address0" }} , 
 	{ "name": "Q_Z_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "ce0" }} , 
 	{ "name": "Q_Z_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "we0" }} , 
 	{ "name": "Q_Z_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "d0" }} , 
 	{ "name": "Q_Z_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Q_Z_1", "role": "q0" }} , 
 	{ "name": "A24plus_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A24plus_0", "role": "address0" }} , 
 	{ "name": "A24plus_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A24plus_0", "role": "ce0" }} , 
 	{ "name": "A24plus_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A24plus_0", "role": "q0" }} , 
 	{ "name": "A24plus_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A24plus_1", "role": "address0" }} , 
 	{ "name": "A24plus_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A24plus_1", "role": "ce0" }} , 
 	{ "name": "A24plus_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A24plus_1", "role": "q0" }} , 
 	{ "name": "C24_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "C24_0", "role": "address0" }} , 
 	{ "name": "C24_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C24_0", "role": "ce0" }} , 
 	{ "name": "C24_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C24_0", "role": "q0" }} , 
 	{ "name": "C24_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "C24_1", "role": "address0" }} , 
 	{ "name": "C24_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C24_1", "role": "ce0" }} , 
 	{ "name": "C24_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C24_1", "role": "q0" }} , 
 	{ "name": "e", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "e", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "22", "31", "106", "263", "399", "405", "411", "568", "577", "586", "765"],
		"CDFG" : "xDBLe",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1670487", "EstimateLatencyMax" : "1670487",
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
					{"ID" : "8", "SubInstance" : "grp_xDBLe_Pipeline_VITIS_LOOP_17_1_fu_394", "Port" : "R_X", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "12", "SubInstance" : "grp_xDBLe_Pipeline_VITIS_LOOP_17_180_fu_410", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_xDBLe_Pipeline_VITIS_LOOP_17_181_fu_402", "Port" : "R_Z", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "14", "SubInstance" : "grp_xDBLe_Pipeline_VITIS_LOOP_17_182_fu_418", "Port" : "R_Z", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Q_X_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_xDBLe_Pipeline_VITIS_LOOP_17_1_fu_394", "Port" : "Q_X_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "16", "SubInstance" : "grp_fpsub503_2_fu_426", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "22", "SubInstance" : "grp_fpadd503_1_fu_439", "Port" : "a", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "765", "SubInstance" : "grp_xDBLe_Pipeline_VITIS_LOOP_313_1_fu_541", "Port" : "Q_X_0", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "Q_X_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_xDBLe_Pipeline_VITIS_LOOP_17_180_fu_410", "Port" : "Q_X_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "16", "SubInstance" : "grp_fpsub503_2_fu_426", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "22", "SubInstance" : "grp_fpadd503_1_fu_439", "Port" : "a", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "765", "SubInstance" : "grp_xDBLe_Pipeline_VITIS_LOOP_313_1_fu_541", "Port" : "Q_X_1", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "Q_Z_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_xDBLe_Pipeline_VITIS_LOOP_17_181_fu_402", "Port" : "Q_Z_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "16", "SubInstance" : "grp_fpsub503_2_fu_426", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "22", "SubInstance" : "grp_fpadd503_1_fu_439", "Port" : "b", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "765", "SubInstance" : "grp_xDBLe_Pipeline_VITIS_LOOP_313_1_fu_541", "Port" : "Q_Z_0", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "Q_Z_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_xDBLe_Pipeline_VITIS_LOOP_17_182_fu_418", "Port" : "Q_Z_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "16", "SubInstance" : "grp_fpsub503_2_fu_426", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "22", "SubInstance" : "grp_fpadd503_1_fu_439", "Port" : "b", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "765", "SubInstance" : "grp_xDBLe_Pipeline_VITIS_LOOP_313_1_fu_541", "Port" : "Q_Z_1", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "A24plus_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_fp2mul503_mont_631_fu_501", "Port" : "a_0", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "A24plus_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_fp2mul503_mont_631_fu_501", "Port" : "a_1", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "C24_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_fp2mul503_mont_1_fu_460", "Port" : "a_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "C24_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_fp2mul503_mont_1_fu_460", "Port" : "a_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_fpsub503_2_fu_426", "Port" : "p503x2_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "22", "SubInstance" : "grp_fpadd503_1_fu_439", "Port" : "p503x2_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "31", "SubInstance" : "grp_fp2sqr503_mont_2_1_fu_452", "Port" : "p503x2_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "399", "SubInstance" : "grp_fpsub503_4_2112_fu_485", "Port" : "p503x2_1", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "405", "SubInstance" : "grp_fpsub503_4_2112_fu_493", "Port" : "p503x2_1", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "568", "SubInstance" : "grp_fpadd503_255_fu_515", "Port" : "p503x2_1", "Inst_start_state" : "27", "Inst_end_state" : "28"},
					{"ID" : "577", "SubInstance" : "grp_fpadd503_255_fu_523", "Port" : "p503x2_1", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_fp2mul503_mont_1_fu_460", "Port" : "p503_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "263", "SubInstance" : "grp_fp2mul503_mont_8_fu_474", "Port" : "p503_1", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "411", "SubInstance" : "grp_fp2mul503_mont_631_fu_501", "Port" : "p503_1", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "586", "SubInstance" : "grp_fp2mul503_mont_5_fu_531", "Port" : "p503_1", "Inst_start_state" : "29", "Inst_end_state" : "30"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state32"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Qnew_X_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Qnew_Z_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Qnew_Z_4_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_Pipeline_VITIS_LOOP_17_1_fu_394", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "xDBLe_Pipeline_VITIS_LOOP_17_1",
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_Pipeline_VITIS_LOOP_17_1_fu_394.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_Pipeline_VITIS_LOOP_17_181_fu_402", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "xDBLe_Pipeline_VITIS_LOOP_17_181",
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_Pipeline_VITIS_LOOP_17_181_fu_402.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_Pipeline_VITIS_LOOP_17_180_fu_410", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "xDBLe_Pipeline_VITIS_LOOP_17_180",
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
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_Pipeline_VITIS_LOOP_17_180_fu_410.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_Pipeline_VITIS_LOOP_17_182_fu_418", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "xDBLe_Pipeline_VITIS_LOOP_17_182",
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_Pipeline_VITIS_LOOP_17_182_fu_418.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_426", "Parent" : "0", "Child" : ["17", "19"],
		"CDFG" : "fpsub503_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
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
					{"ID" : "17", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "19", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_426.grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Parent" : "16", "Child" : ["18"],
		"CDFG" : "fpsub503_2_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_426.grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_426.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Parent" : "16", "Child" : ["20", "21"],
		"CDFG" : "fpsub503_2_Pipeline_VITIS_LOOP_68_2",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_426.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39.p503x2_1_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_426.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_439", "Parent" : "0", "Child" : ["23", "25", "28"],
		"CDFG" : "fpadd503_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
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
					{"ID" : "23", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "25", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "28", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "28", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_439.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "22", "Child" : ["24"],
		"CDFG" : "fpadd503_1_Pipeline_VITIS_LOOP_33_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_439.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_439.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "22", "Child" : ["26", "27"],
		"CDFG" : "fpadd503_1_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_1360_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_439.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_439.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_439.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "22", "Child" : ["29", "30"],
		"CDFG" : "fpadd503_1_Pipeline_VITIS_LOOP_46_3",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_439.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_439.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452", "Parent" : "0", "Child" : ["32", "33", "34", "35", "37", "39", "42", "44", "75"],
		"CDFG" : "fp2sqr503_mont_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "74", "EstimateLatencyMax" : "74",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "37", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "42", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102_fu_74", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "44", "SubInstance" : "grp_fpmul503_mont_2_fu_81", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "37", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "75", "SubInstance" : "grp_fpmul503_mont_2_3_fu_89", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.t1_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.t2_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.t3_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_46", "Parent" : "31", "Child" : ["36"],
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Parent" : "31", "Child" : ["38"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66", "Parent" : "31", "Child" : ["40", "41"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66.p503x2_1_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102_fu_74", "Parent" : "31", "Child" : ["43"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81", "Parent" : "31", "Child" : ["45"],
		"CDFG" : "fpmul503_mont_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
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
					{"ID" : "45", "SubInstance" : "grp_mul_2_3_2_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_mul_2_3_2_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_mul_2_3_2_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18", "Parent" : "44", "Child" : ["46"],
		"CDFG" : "mul_2_3_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
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
					{"ID" : "46", "SubInstance" : "grp_mul_2_1_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_mul_2_1_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_mul_2_1_1_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18", "Parent" : "45", "Child" : ["47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
		"CDFG" : "mul_2_1_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
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
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U761", "Parent" : "46"},
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U762", "Parent" : "46"},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U763", "Parent" : "46"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U764", "Parent" : "46"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U765", "Parent" : "46"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U766", "Parent" : "46"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U767", "Parent" : "46"},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U768", "Parent" : "46"},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_128_1_1_U769", "Parent" : "46"},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_56ns_119_1_1_U770", "Parent" : "46"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_56ns_119_1_1_U771", "Parent" : "46"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U772", "Parent" : "46"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U773", "Parent" : "46"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U774", "Parent" : "46"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_62ns_125_1_1_U775", "Parent" : "46"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_127_1_1_U776", "Parent" : "46"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_64ns_127_1_1_U777", "Parent" : "46"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_65ns_128_1_1_U778", "Parent" : "46"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64ns_65ns_128_1_1_U779", "Parent" : "46"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U780", "Parent" : "46"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U781", "Parent" : "46"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U782", "Parent" : "46"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_62ns_64_1_1_U783", "Parent" : "46"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U784", "Parent" : "46"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_62ns_64_1_1_U785", "Parent" : "46"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64ns_64_1_1_U786", "Parent" : "46"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64s_64_1_1_U787", "Parent" : "46"},
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_fu_81.grp_mul_2_3_2_fu_18.grp_mul_2_1_1_fu_18.mul_64s_64s_64_1_1_U788", "Parent" : "46"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89", "Parent" : "31", "Child" : ["76"],
		"CDFG" : "fpmul503_mont_2_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
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
					{"ID" : "76", "SubInstance" : "grp_mul_2_3_1_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_mul_2_3_1_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16", "Parent" : "75", "Child" : ["77"],
		"CDFG" : "mul_2_3_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
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
					{"ID" : "77", "SubInstance" : "grp_mul_2_3_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_mul_2_3_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16", "Parent" : "76", "Child" : ["78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105"],
		"CDFG" : "mul_2_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
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
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U798", "Parent" : "77"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U799", "Parent" : "77"},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U800", "Parent" : "77"},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U801", "Parent" : "77"},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U802", "Parent" : "77"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U803", "Parent" : "77"},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U804", "Parent" : "77"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U805", "Parent" : "77"},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_128_1_1_U806", "Parent" : "77"},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_56ns_119_1_1_U807", "Parent" : "77"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_56ns_119_1_1_U808", "Parent" : "77"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_62ns_125_1_1_U809", "Parent" : "77"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_62ns_125_1_1_U810", "Parent" : "77"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_62ns_125_1_1_U811", "Parent" : "77"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_62ns_125_1_1_U812", "Parent" : "77"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_127_1_1_U813", "Parent" : "77"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_64ns_127_1_1_U814", "Parent" : "77"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_65ns_128_1_1_U815", "Parent" : "77"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64ns_65ns_128_1_1_U816", "Parent" : "77"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U817", "Parent" : "77"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U818", "Parent" : "77"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U819", "Parent" : "77"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_62ns_64_1_1_U820", "Parent" : "77"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U821", "Parent" : "77"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_62ns_64_1_1_U822", "Parent" : "77"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64ns_64_1_1_U823", "Parent" : "77"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64s_64_1_1_U824", "Parent" : "77"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_452.grp_fpmul503_mont_2_3_fu_89.grp_mul_2_3_1_fu_16.grp_mul_2_3_fu_16.mul_64s_64s_64_1_1_U825", "Parent" : "77"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460", "Parent" : "0", "Child" : ["107", "108", "109", "110", "111", "112", "113", "114", "136", "158", "160", "162", "164", "167", "169", "215", "217"],
		"CDFG" : "fp2mul503_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "755", "EstimateLatencyMax" : "755",
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
					{"ID" : "114", "SubInstance" : "grp_mp_mul_5120_fu_76", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "158", "SubInstance" : "grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1_fu_100", "Port" : "a_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_mp_mul_5120_fu_88", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "158", "SubInstance" : "grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1_fu_100", "Port" : "a_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_mp_mul_5120_fu_76", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "160", "SubInstance" : "grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1157_fu_109", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_mp_mul_5120_fu_88", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "160", "SubInstance" : "grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1157_fu_109", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_rdc_mont_fu_144", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "217", "SubInstance" : "grp_rdc_mont_1_fu_159", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_205_1_fu_128", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.t1_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.t2_U", "Parent" : "106"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.tt1_U", "Parent" : "106"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.tt1_1_U", "Parent" : "106"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.tt2_U", "Parent" : "106"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.tt2_1_U", "Parent" : "106"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.tt3_U", "Parent" : "106"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76", "Parent" : "106", "Child" : ["115"],
		"CDFG" : "mp_mul_5120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "115", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18", "Parent" : "114", "Child" : ["116", "117", "118", "120", "123", "126", "128", "131"],
		"CDFG" : "mul_4124",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "120", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "131", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "131", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.acc_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.acc_1_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "115", "Child" : ["119"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "115", "Child" : ["121", "122"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "120"},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "115", "Child" : ["124", "125"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_187",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "124", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "123"},
	{"ID" : "125", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "123"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "115", "Child" : ["127"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "115", "Child" : ["129", "130"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "128"},
	{"ID" : "130", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "128"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "115", "Child" : ["132", "134"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "134", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "134", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "131", "Child" : ["133"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "133", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "131", "Child" : ["135"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "135", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88", "Parent" : "106", "Child" : ["137"],
		"CDFG" : "mp_mul_5120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "137", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18", "Parent" : "136", "Child" : ["138", "139", "140", "142", "145", "148", "150", "153"],
		"CDFG" : "mul_4124",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "142", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "153", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "153", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.acc_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.acc_1_U", "Parent" : "137"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "137", "Child" : ["141"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "137", "Child" : ["143", "144"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "142"},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "142"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "137", "Child" : ["146", "147"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_187",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "145"},
	{"ID" : "147", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "145"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "137", "Child" : ["149"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "137", "Child" : ["151", "152"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "150"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "137", "Child" : ["154", "156"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "156", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "156", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "156", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "156", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "153", "Child" : ["155"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "155", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "153", "Child" : ["157"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "157", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "156"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1_fu_100", "Parent" : "106", "Child" : ["159"],
		"CDFG" : "fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1",
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
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1157_fu_109", "Parent" : "106", "Child" : ["161"],
		"CDFG" : "fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1157",
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
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1157_fu_109.flow_control_loop_pipe_sequential_init_U", "Parent" : "160"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_178_1_fu_118", "Parent" : "106", "Child" : ["163"],
		"CDFG" : "fp2mul503_mont_1_Pipeline_VITIS_LOOP_178_1",
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
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_178_1_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "162"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_205_1_fu_128", "Parent" : "106", "Child" : ["165", "166"],
		"CDFG" : "fp2mul503_mont_1_Pipeline_VITIS_LOOP_205_1",
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
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_205_1_fu_128.p503_1_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_205_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1158_fu_136", "Parent" : "106", "Child" : ["168"],
		"CDFG" : "fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1158",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1158_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144", "Parent" : "106", "Child" : ["170", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "190", "195", "200", "205", "210"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "126", "EstimateLatencyMax" : "126",
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
					{"ID" : "170", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "169", "Child" : ["171"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_is_digit_lessthan_ct_fu_292", "Parent" : "169",
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
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_is_digit_lessthan_ct_fu_299", "Parent" : "169",
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
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_is_digit_lessthan_ct_fu_306", "Parent" : "169",
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
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_is_digit_lessthan_ct_fu_312", "Parent" : "169",
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
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_is_digit_lessthan_ct_fu_318", "Parent" : "169",
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
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_is_digit_lessthan_ct_fu_325", "Parent" : "169",
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
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_is_digit_lessthan_ct_fu_332", "Parent" : "169",
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
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_is_digit_lessthan_ct_fu_338", "Parent" : "169",
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
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_is_digit_lessthan_ct_fu_345", "Parent" : "169",
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
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_is_digit_lessthan_ct_fu_354", "Parent" : "169",
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
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_is_digit_lessthan_ct_fu_361", "Parent" : "169",
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
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.tmp_261_is_digit_lessthan_ct_fu_367", "Parent" : "169",
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
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.tmp_262_is_digit_lessthan_ct_fu_374", "Parent" : "169",
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
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_381", "Parent" : "169", "Child" : ["186", "187", "188", "189"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U342", "Parent" : "185"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U343", "Parent" : "185"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U344", "Parent" : "185"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U345", "Parent" : "185"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_388", "Parent" : "169", "Child" : ["191", "192", "193", "194"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U342", "Parent" : "190"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U343", "Parent" : "190"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U344", "Parent" : "190"},
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U345", "Parent" : "190"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_395", "Parent" : "169", "Child" : ["196", "197", "198", "199"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U342", "Parent" : "195"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U343", "Parent" : "195"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U344", "Parent" : "195"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U345", "Parent" : "195"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_402", "Parent" : "169", "Child" : ["201", "202", "203", "204"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U342", "Parent" : "200"},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U343", "Parent" : "200"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U344", "Parent" : "200"},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U345", "Parent" : "200"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_409", "Parent" : "169", "Child" : ["206", "207", "208", "209"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U342", "Parent" : "205"},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U343", "Parent" : "205"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U344", "Parent" : "205"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U345", "Parent" : "205"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_416", "Parent" : "169", "Child" : ["211", "212", "213", "214"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U342", "Parent" : "210"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U343", "Parent" : "210"},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U344", "Parent" : "210"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U345", "Parent" : "210"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_178_1159_fu_151", "Parent" : "106", "Child" : ["216"],
		"CDFG" : "fp2mul503_mont_1_Pipeline_VITIS_LOOP_178_1159",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_fp2mul503_mont_1_Pipeline_VITIS_LOOP_178_1159_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159", "Parent" : "106", "Child" : ["218", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "238", "243", "248", "253", "258"],
		"CDFG" : "rdc_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "217", "Child" : ["219"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_is_digit_lessthan_ct_fu_283", "Parent" : "217",
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
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_is_digit_lessthan_ct_fu_290", "Parent" : "217",
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
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_is_digit_lessthan_ct_fu_297", "Parent" : "217",
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
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_is_digit_lessthan_ct_fu_303", "Parent" : "217",
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
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_is_digit_lessthan_ct_fu_309", "Parent" : "217",
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
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_is_digit_lessthan_ct_fu_316", "Parent" : "217",
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
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_is_digit_lessthan_ct_fu_323", "Parent" : "217",
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
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_is_digit_lessthan_ct_fu_329", "Parent" : "217",
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
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_is_digit_lessthan_ct_fu_336", "Parent" : "217",
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
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_is_digit_lessthan_ct_fu_345", "Parent" : "217",
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
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_is_digit_lessthan_ct_fu_352", "Parent" : "217",
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
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.tmp_45_is_digit_lessthan_ct_fu_358", "Parent" : "217",
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
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.tmp_46_is_digit_lessthan_ct_fu_365", "Parent" : "217",
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
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_372", "Parent" : "217", "Child" : ["234", "235", "236", "237"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U342", "Parent" : "233"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U343", "Parent" : "233"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U344", "Parent" : "233"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U345", "Parent" : "233"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_379", "Parent" : "217", "Child" : ["239", "240", "241", "242"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U342", "Parent" : "238"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U343", "Parent" : "238"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U344", "Parent" : "238"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U345", "Parent" : "238"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_386", "Parent" : "217", "Child" : ["244", "245", "246", "247"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U342", "Parent" : "243"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U343", "Parent" : "243"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U344", "Parent" : "243"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U345", "Parent" : "243"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_393", "Parent" : "217", "Child" : ["249", "250", "251", "252"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U342", "Parent" : "248"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U343", "Parent" : "248"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U344", "Parent" : "248"},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U345", "Parent" : "248"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_400", "Parent" : "217", "Child" : ["254", "255", "256", "257"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U342", "Parent" : "253"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U343", "Parent" : "253"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U344", "Parent" : "253"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U345", "Parent" : "253"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_407", "Parent" : "217", "Child" : ["259", "260", "261", "262"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U342", "Parent" : "258"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U343", "Parent" : "258"},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U344", "Parent" : "258"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1_fu_460.grp_rdc_mont_1_fu_159.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U345", "Parent" : "258"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474", "Parent" : "0", "Child" : ["264", "265", "266", "267", "268", "269", "270", "271", "293", "315", "317", "319", "321", "324", "326", "329", "351", "353", "356", "361", "366", "371", "376", "381", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398"],
		"CDFG" : "fp2mul503_mont_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "799", "EstimateLatencyMax" : "799",
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
					{"ID" : "271", "SubInstance" : "grp_mp_mul_fu_76", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "315", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1_fu_100", "Port" : "a_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_mp_mul_fu_88", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "315", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1_fu_100", "Port" : "a_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_mp_mul_fu_76", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "317", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1106_fu_109", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_mp_mul_fu_88", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "317", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1106_fu_109", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "grp_rdc_mont_133_fu_144", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "353", "SubInstance" : "grp_rdc_mont_2_fu_167", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "321", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_205_1_fu_128", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.t1_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.t2_U", "Parent" : "263"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.tt1_U", "Parent" : "263"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.tt1_1_U", "Parent" : "263"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.tt2_U", "Parent" : "263"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.tt2_1_U", "Parent" : "263"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.tt3_U", "Parent" : "263"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76", "Parent" : "263", "Child" : ["272"],
		"CDFG" : "mp_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "272", "SubInstance" : "grp_mul_2_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_mul_2_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_mul_2_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_mul_2_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18", "Parent" : "271", "Child" : ["273", "274", "275", "277", "280", "283", "285", "288"],
		"CDFG" : "mul_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "277", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_38_193_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "288", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "275", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "288", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.acc_U", "Parent" : "272"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.acc_1_U", "Parent" : "272"},
	{"ID" : "275", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "272", "Child" : ["276"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "276", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "272", "Child" : ["278", "279"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U370", "Parent" : "277"},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "277"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_38_193_fu_63", "Parent" : "272", "Child" : ["281", "282"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_38_193",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_38_193_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U373", "Parent" : "280"},
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_38_193_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "272", "Child" : ["284"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "272", "Child" : ["286", "287"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload75", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U378", "Parent" : "285"},
	{"ID" : "287", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "285"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "272", "Child" : ["289", "291"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "289", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "291", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "289", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "291", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "289", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "288", "Child" : ["290"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "290", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "288", "Child" : ["292"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "292", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88", "Parent" : "263", "Child" : ["294"],
		"CDFG" : "mp_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "294", "SubInstance" : "grp_mul_2_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "294", "SubInstance" : "grp_mul_2_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "294", "SubInstance" : "grp_mul_2_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "294", "SubInstance" : "grp_mul_2_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18", "Parent" : "293", "Child" : ["295", "296", "297", "299", "302", "305", "307", "310"],
		"CDFG" : "mul_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "299", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "302", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_38_193_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "297", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "310", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "297", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "310", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.acc_U", "Parent" : "294"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.acc_1_U", "Parent" : "294"},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "294", "Child" : ["298"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "297"},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "294", "Child" : ["300", "301"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "300", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U370", "Parent" : "299"},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "299"},
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_38_193_fu_63", "Parent" : "294", "Child" : ["303", "304"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_38_193",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_38_193_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U373", "Parent" : "302"},
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_38_193_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "302"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "294", "Child" : ["306"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "294", "Child" : ["308", "309"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload75", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U378", "Parent" : "307"},
	{"ID" : "309", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "307"},
	{"ID" : "310", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "294", "Child" : ["311", "313"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "313", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "311", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "313", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "311", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "310", "Child" : ["312"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "312", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "310", "Child" : ["314"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "314", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1_fu_100", "Parent" : "263", "Child" : ["316"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1",
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
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "315"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1106_fu_109", "Parent" : "263", "Child" : ["318"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1106",
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
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1106_fu_109.flow_control_loop_pipe_sequential_init_U", "Parent" : "317"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_178_1_fu_118", "Parent" : "263", "Child" : ["320"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_178_1",
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
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_178_1_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "319"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_205_1_fu_128", "Parent" : "263", "Child" : ["322", "323"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_205_1",
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
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_205_1_fu_128.p503_1_U", "Parent" : "321"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_205_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "321"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1107_fu_136", "Parent" : "263", "Child" : ["325"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1107",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1107_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "324"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_rdc_mont_133_fu_144", "Parent" : "263", "Child" : ["327"],
		"CDFG" : "rdc_mont_133",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "170", "EstimateLatencyMax" : "170",
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
					{"ID" : "327", "SubInstance" : "grp_rdc_mont_133_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_rdc_mont_133_fu_144.grp_rdc_mont_133_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "326", "Child" : ["328"],
		"CDFG" : "rdc_mont_133_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_rdc_mont_133_fu_144.grp_rdc_mont_133_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "327"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151", "Parent" : "263", "Child" : ["330"],
		"CDFG" : "mp_mul_5120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "330", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "330", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "330", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "330", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18", "Parent" : "329", "Child" : ["331", "332", "333", "335", "338", "341", "343", "346"],
		"CDFG" : "mul_4124",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "335", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "338", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "346", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "333", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "346", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.acc_U", "Parent" : "330"},
	{"ID" : "332", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.acc_1_U", "Parent" : "330"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "330", "Child" : ["334"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "330", "Child" : ["336", "337"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "336", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "335"},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "335"},
	{"ID" : "338", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "330", "Child" : ["339", "340"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_187",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "339", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "338"},
	{"ID" : "340", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "338"},
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "330", "Child" : ["342"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "342", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "330", "Child" : ["344", "345"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "344", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "343"},
	{"ID" : "345", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "343"},
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "330", "Child" : ["347", "349"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "349", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "349", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "349", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "347", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "349", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "347", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "346", "Child" : ["348"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "348", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "346", "Child" : ["350"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "350", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_mp_mul_5120_fu_151.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_178_1108_fu_159", "Parent" : "263", "Child" : ["352"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_178_1108",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_178_1108_fu_159.flow_control_loop_pipe_sequential_init_U", "Parent" : "351"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_rdc_mont_2_fu_167", "Parent" : "263", "Child" : ["354"],
		"CDFG" : "rdc_mont_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "192", "EstimateLatencyMax" : "192",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "354", "SubInstance" : "grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_293", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_rdc_mont_2_fu_167.grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_293", "Parent" : "353", "Child" : ["355"],
		"CDFG" : "rdc_mont_2_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "355", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_rdc_mont_2_fu_167.grp_rdc_mont_2_Pipeline_VITIS_LOOP_306_1_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "354"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_188", "Parent" : "263", "Child" : ["357", "358", "359", "360"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_188.mul_32ns_32ns_64_1_1_U342", "Parent" : "356"},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_188.mul_32ns_32ns_64_1_1_U343", "Parent" : "356"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_188.mul_32ns_32ns_64_1_1_U344", "Parent" : "356"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_188.mul_32ns_32ns_64_1_1_U345", "Parent" : "356"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_193", "Parent" : "263", "Child" : ["362", "363", "364", "365"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_193.mul_32ns_32ns_64_1_1_U342", "Parent" : "361"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_193.mul_32ns_32ns_64_1_1_U343", "Parent" : "361"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_193.mul_32ns_32ns_64_1_1_U344", "Parent" : "361"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_193.mul_32ns_32ns_64_1_1_U345", "Parent" : "361"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_198", "Parent" : "263", "Child" : ["367", "368", "369", "370"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_198.mul_32ns_32ns_64_1_1_U342", "Parent" : "366"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_198.mul_32ns_32ns_64_1_1_U343", "Parent" : "366"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_198.mul_32ns_32ns_64_1_1_U344", "Parent" : "366"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_198.mul_32ns_32ns_64_1_1_U345", "Parent" : "366"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_203", "Parent" : "263", "Child" : ["372", "373", "374", "375"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_203.mul_32ns_32ns_64_1_1_U342", "Parent" : "371"},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_203.mul_32ns_32ns_64_1_1_U343", "Parent" : "371"},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_203.mul_32ns_32ns_64_1_1_U344", "Parent" : "371"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_203.mul_32ns_32ns_64_1_1_U345", "Parent" : "371"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_208", "Parent" : "263", "Child" : ["377", "378", "379", "380"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_208.mul_32ns_32ns_64_1_1_U342", "Parent" : "376"},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_208.mul_32ns_32ns_64_1_1_U343", "Parent" : "376"},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_208.mul_32ns_32ns_64_1_1_U344", "Parent" : "376"},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_208.mul_32ns_32ns_64_1_1_U345", "Parent" : "376"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_213", "Parent" : "263", "Child" : ["382", "383", "384", "385"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_213.mul_32ns_32ns_64_1_1_U342", "Parent" : "381"},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_213.mul_32ns_32ns_64_1_1_U343", "Parent" : "381"},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_213.mul_32ns_32ns_64_1_1_U344", "Parent" : "381"},
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_digit_x_digit_fu_213.mul_32ns_32ns_64_1_1_U345", "Parent" : "381"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_is_digit_lessthan_ct_fu_218", "Parent" : "263",
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
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_is_digit_lessthan_ct_fu_223", "Parent" : "263",
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
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_is_digit_lessthan_ct_fu_228", "Parent" : "263",
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
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_is_digit_lessthan_ct_fu_233", "Parent" : "263",
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
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_is_digit_lessthan_ct_fu_238", "Parent" : "263",
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
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_is_digit_lessthan_ct_fu_243", "Parent" : "263",
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
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_is_digit_lessthan_ct_fu_248", "Parent" : "263",
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
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_is_digit_lessthan_ct_fu_253", "Parent" : "263",
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
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_is_digit_lessthan_ct_fu_258", "Parent" : "263",
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
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_is_digit_lessthan_ct_fu_263", "Parent" : "263",
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
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.grp_is_digit_lessthan_ct_fu_268", "Parent" : "263",
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
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.tmp_261_is_digit_lessthan_ct_fu_273", "Parent" : "263",
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
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_474.tmp_262_is_digit_lessthan_ct_fu_278", "Parent" : "263",
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
	{"ID" : "399", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2112_fu_485", "Parent" : "0", "Child" : ["400", "402"],
		"CDFG" : "fpsub503_4_2112",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
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
					{"ID" : "400", "SubInstance" : "grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "402", "SubInstance" : "grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "400", "SubInstance" : "grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "402", "SubInstance" : "grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2112_fu_485.grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "399", "Child" : ["401"],
		"CDFG" : "fpsub503_4_2112_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2112_fu_485.grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "400"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2112_fu_485.grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "399", "Child" : ["403", "404"],
		"CDFG" : "fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2112_fu_485.grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2112_fu_485.grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "402"},
	{"ID" : "405", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2112_fu_493", "Parent" : "0", "Child" : ["406", "408"],
		"CDFG" : "fpsub503_4_2112",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
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
					{"ID" : "406", "SubInstance" : "grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "408", "SubInstance" : "grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "406", "SubInstance" : "grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2112_fu_493.grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "405", "Child" : ["407"],
		"CDFG" : "fpsub503_4_2112_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2112_fu_493.grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "406"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2112_fu_493.grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "405", "Child" : ["409", "410"],
		"CDFG" : "fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2112_fu_493.grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "408"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_2112_fu_493.grp_fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "408"},
	{"ID" : "411", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501", "Parent" : "0", "Child" : ["412", "413", "414", "415", "416", "417", "418", "419", "441", "463", "465", "467", "469", "472", "474", "520", "522"],
		"CDFG" : "fp2mul503_mont_631",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "711", "EstimateLatencyMax" : "711",
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
					{"ID" : "419", "SubInstance" : "grp_mp_mul_5120_fu_76", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "463", "SubInstance" : "grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1_fu_100", "Port" : "a_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "441", "SubInstance" : "grp_mp_mul_5120_fu_88", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "463", "SubInstance" : "grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1_fu_100", "Port" : "a_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "419", "SubInstance" : "grp_mp_mul_5120_fu_76", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "465", "SubInstance" : "grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1112_fu_109", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "441", "SubInstance" : "grp_mp_mul_5120_fu_88", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "465", "SubInstance" : "grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1112_fu_109", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "474", "SubInstance" : "grp_rdc_mont_134_fu_144", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "522", "SubInstance" : "grp_rdc_mont_4_fu_159", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "469", "SubInstance" : "grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_205_1_fu_128", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.t1_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.t2_U", "Parent" : "411"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.tt1_U", "Parent" : "411"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.tt1_1_U", "Parent" : "411"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.tt2_U", "Parent" : "411"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.tt2_1_U", "Parent" : "411"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.tt3_U", "Parent" : "411"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76", "Parent" : "411", "Child" : ["420"],
		"CDFG" : "mp_mul_5120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "420", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "420", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18", "Parent" : "419", "Child" : ["421", "422", "423", "425", "428", "431", "433", "436"],
		"CDFG" : "mul_4124",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "425", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "428", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "423", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "436", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "423", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "436", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "421", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.acc_U", "Parent" : "420"},
	{"ID" : "422", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.acc_1_U", "Parent" : "420"},
	{"ID" : "423", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "420", "Child" : ["424"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "424", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "420", "Child" : ["426", "427"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "426", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "425"},
	{"ID" : "427", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "425"},
	{"ID" : "428", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "420", "Child" : ["429", "430"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_187",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "429", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "428"},
	{"ID" : "430", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "428"},
	{"ID" : "431", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "420", "Child" : ["432"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "432", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "431"},
	{"ID" : "433", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "420", "Child" : ["434", "435"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "434", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "433"},
	{"ID" : "435", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "433"},
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "420", "Child" : ["437", "439"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "439", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "439", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "437", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "439", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "437", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "439", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "437", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "436", "Child" : ["438"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "438", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "437"},
	{"ID" : "439", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "436", "Child" : ["440"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "440", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_76.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "439"},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88", "Parent" : "411", "Child" : ["442"],
		"CDFG" : "mp_mul_5120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "442", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "442", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "442", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "442", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18", "Parent" : "441", "Child" : ["443", "444", "445", "447", "450", "453", "455", "458"],
		"CDFG" : "mul_4124",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "447", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "450", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "445", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "458", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "445", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "458", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.acc_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.acc_1_U", "Parent" : "442"},
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "442", "Child" : ["446"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "445"},
	{"ID" : "447", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "442", "Child" : ["448", "449"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "448", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "447"},
	{"ID" : "449", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "447"},
	{"ID" : "450", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "442", "Child" : ["451", "452"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_187",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "450"},
	{"ID" : "452", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "450"},
	{"ID" : "453", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "442", "Child" : ["454"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "454", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "453"},
	{"ID" : "455", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "442", "Child" : ["456", "457"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "456", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "455"},
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "455"},
	{"ID" : "458", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "442", "Child" : ["459", "461"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "461", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "461", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "459", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "461", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "459", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "461", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "459", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "458", "Child" : ["460"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "460", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "459"},
	{"ID" : "461", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "458", "Child" : ["462"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "462", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_mp_mul_5120_fu_88.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "461"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1_fu_100", "Parent" : "411", "Child" : ["464"],
		"CDFG" : "fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1",
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
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "463"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1112_fu_109", "Parent" : "411", "Child" : ["466"],
		"CDFG" : "fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1112",
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
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1112_fu_109.flow_control_loop_pipe_sequential_init_U", "Parent" : "465"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_178_1_fu_118", "Parent" : "411", "Child" : ["468"],
		"CDFG" : "fp2mul503_mont_631_Pipeline_VITIS_LOOP_178_1",
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
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_178_1_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_205_1_fu_128", "Parent" : "411", "Child" : ["470", "471"],
		"CDFG" : "fp2mul503_mont_631_Pipeline_VITIS_LOOP_205_1",
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
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_205_1_fu_128.p503_1_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_205_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "469"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1113_fu_136", "Parent" : "411", "Child" : ["473"],
		"CDFG" : "fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1113",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1113_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "472"},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144", "Parent" : "411", "Child" : ["475", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "495", "500", "505", "510", "515"],
		"CDFG" : "rdc_mont_134",
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
					{"ID" : "475", "SubInstance" : "grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "474", "Child" : ["476"],
		"CDFG" : "rdc_mont_134_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "476", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_rdc_mont_134_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "475"},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_is_digit_lessthan_ct_fu_292", "Parent" : "474",
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
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_is_digit_lessthan_ct_fu_299", "Parent" : "474",
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
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_is_digit_lessthan_ct_fu_306", "Parent" : "474",
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
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_is_digit_lessthan_ct_fu_312", "Parent" : "474",
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
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_is_digit_lessthan_ct_fu_318", "Parent" : "474",
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
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_is_digit_lessthan_ct_fu_325", "Parent" : "474",
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
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_is_digit_lessthan_ct_fu_332", "Parent" : "474",
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
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_is_digit_lessthan_ct_fu_338", "Parent" : "474",
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
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_is_digit_lessthan_ct_fu_345", "Parent" : "474",
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
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_is_digit_lessthan_ct_fu_354", "Parent" : "474",
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
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_is_digit_lessthan_ct_fu_361", "Parent" : "474",
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
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.tmp_260_is_digit_lessthan_ct_fu_367", "Parent" : "474",
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
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.tmp_261_is_digit_lessthan_ct_fu_374", "Parent" : "474",
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
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_381", "Parent" : "474", "Child" : ["491", "492", "493", "494"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "491", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U342", "Parent" : "490"},
	{"ID" : "492", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U343", "Parent" : "490"},
	{"ID" : "493", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U344", "Parent" : "490"},
	{"ID" : "494", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U345", "Parent" : "490"},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_388", "Parent" : "474", "Child" : ["496", "497", "498", "499"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "496", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U342", "Parent" : "495"},
	{"ID" : "497", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U343", "Parent" : "495"},
	{"ID" : "498", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U344", "Parent" : "495"},
	{"ID" : "499", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U345", "Parent" : "495"},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_395", "Parent" : "474", "Child" : ["501", "502", "503", "504"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "501", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U342", "Parent" : "500"},
	{"ID" : "502", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U343", "Parent" : "500"},
	{"ID" : "503", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U344", "Parent" : "500"},
	{"ID" : "504", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U345", "Parent" : "500"},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_402", "Parent" : "474", "Child" : ["506", "507", "508", "509"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "506", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U342", "Parent" : "505"},
	{"ID" : "507", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U343", "Parent" : "505"},
	{"ID" : "508", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U344", "Parent" : "505"},
	{"ID" : "509", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U345", "Parent" : "505"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_409", "Parent" : "474", "Child" : ["511", "512", "513", "514"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "511", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U342", "Parent" : "510"},
	{"ID" : "512", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U343", "Parent" : "510"},
	{"ID" : "513", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U344", "Parent" : "510"},
	{"ID" : "514", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U345", "Parent" : "510"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_416", "Parent" : "474", "Child" : ["516", "517", "518", "519"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "516", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U342", "Parent" : "515"},
	{"ID" : "517", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U343", "Parent" : "515"},
	{"ID" : "518", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U344", "Parent" : "515"},
	{"ID" : "519", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_134_fu_144.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U345", "Parent" : "515"},
	{"ID" : "520", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_178_1114_fu_151", "Parent" : "411", "Child" : ["521"],
		"CDFG" : "fp2mul503_mont_631_Pipeline_VITIS_LOOP_178_1114",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_fp2mul503_mont_631_Pipeline_VITIS_LOOP_178_1114_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "520"},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159", "Parent" : "411", "Child" : ["523", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "543", "548", "553", "558", "563"],
		"CDFG" : "rdc_mont_4",
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
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "523", "SubInstance" : "grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "522", "Child" : ["524"],
		"CDFG" : "rdc_mont_4_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "524", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_rdc_mont_4_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "523"},
	{"ID" : "525", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_is_digit_lessthan_ct_fu_283", "Parent" : "522",
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
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_is_digit_lessthan_ct_fu_290", "Parent" : "522",
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
	{"ID" : "527", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_is_digit_lessthan_ct_fu_297", "Parent" : "522",
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
	{"ID" : "528", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_is_digit_lessthan_ct_fu_303", "Parent" : "522",
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
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_is_digit_lessthan_ct_fu_309", "Parent" : "522",
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
	{"ID" : "530", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_is_digit_lessthan_ct_fu_316", "Parent" : "522",
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
	{"ID" : "531", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_is_digit_lessthan_ct_fu_323", "Parent" : "522",
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
	{"ID" : "532", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_is_digit_lessthan_ct_fu_329", "Parent" : "522",
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
	{"ID" : "533", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_is_digit_lessthan_ct_fu_336", "Parent" : "522",
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
	{"ID" : "534", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_is_digit_lessthan_ct_fu_345", "Parent" : "522",
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
	{"ID" : "535", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_is_digit_lessthan_ct_fu_352", "Parent" : "522",
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
	{"ID" : "536", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "522",
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
	{"ID" : "537", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "522",
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
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_372", "Parent" : "522", "Child" : ["539", "540", "541", "542"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "539", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U342", "Parent" : "538"},
	{"ID" : "540", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U343", "Parent" : "538"},
	{"ID" : "541", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U344", "Parent" : "538"},
	{"ID" : "542", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U345", "Parent" : "538"},
	{"ID" : "543", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_379", "Parent" : "522", "Child" : ["544", "545", "546", "547"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "544", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U342", "Parent" : "543"},
	{"ID" : "545", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U343", "Parent" : "543"},
	{"ID" : "546", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U344", "Parent" : "543"},
	{"ID" : "547", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U345", "Parent" : "543"},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_386", "Parent" : "522", "Child" : ["549", "550", "551", "552"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "549", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U342", "Parent" : "548"},
	{"ID" : "550", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U343", "Parent" : "548"},
	{"ID" : "551", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U344", "Parent" : "548"},
	{"ID" : "552", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U345", "Parent" : "548"},
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_393", "Parent" : "522", "Child" : ["554", "555", "556", "557"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "554", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U342", "Parent" : "553"},
	{"ID" : "555", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U343", "Parent" : "553"},
	{"ID" : "556", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U344", "Parent" : "553"},
	{"ID" : "557", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U345", "Parent" : "553"},
	{"ID" : "558", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_400", "Parent" : "522", "Child" : ["559", "560", "561", "562"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "559", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U342", "Parent" : "558"},
	{"ID" : "560", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U343", "Parent" : "558"},
	{"ID" : "561", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U344", "Parent" : "558"},
	{"ID" : "562", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U345", "Parent" : "558"},
	{"ID" : "563", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_407", "Parent" : "522", "Child" : ["564", "565", "566", "567"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "564", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U342", "Parent" : "563"},
	{"ID" : "565", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U343", "Parent" : "563"},
	{"ID" : "566", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U344", "Parent" : "563"},
	{"ID" : "567", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_631_fu_501.grp_rdc_mont_4_fu_159.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U345", "Parent" : "563"},
	{"ID" : "568", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_515", "Parent" : "0", "Child" : ["569", "571", "574"],
		"CDFG" : "fpadd503_255",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59", "EstimateLatencyMax" : "59",
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
					{"ID" : "569", "SubInstance" : "grp_fpadd503_255_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "571", "SubInstance" : "grp_fpadd503_255_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "574", "SubInstance" : "grp_fpadd503_255_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "569", "SubInstance" : "grp_fpadd503_255_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "571", "SubInstance" : "grp_fpadd503_255_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "574", "SubInstance" : "grp_fpadd503_255_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "569", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_515.grp_fpadd503_255_Pipeline_VITIS_LOOP_33_1_fu_26", "Parent" : "568", "Child" : ["570"],
		"CDFG" : "fpadd503_255_Pipeline_VITIS_LOOP_33_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_515.grp_fpadd503_255_Pipeline_VITIS_LOOP_33_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "569"},
	{"ID" : "571", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_515.grp_fpadd503_255_Pipeline_VITIS_LOOP_39_2_fu_34", "Parent" : "568", "Child" : ["572", "573"],
		"CDFG" : "fpadd503_255_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_1342_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "572", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_515.grp_fpadd503_255_Pipeline_VITIS_LOOP_39_2_fu_34.p503x2_1_U", "Parent" : "571"},
	{"ID" : "573", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_515.grp_fpadd503_255_Pipeline_VITIS_LOOP_39_2_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "571"},
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_515.grp_fpadd503_255_Pipeline_VITIS_LOOP_46_3_fu_43", "Parent" : "568", "Child" : ["575", "576"],
		"CDFG" : "fpadd503_255_Pipeline_VITIS_LOOP_46_3",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "575", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_515.grp_fpadd503_255_Pipeline_VITIS_LOOP_46_3_fu_43.p503x2_1_U", "Parent" : "574"},
	{"ID" : "576", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_515.grp_fpadd503_255_Pipeline_VITIS_LOOP_46_3_fu_43.flow_control_loop_pipe_sequential_init_U", "Parent" : "574"},
	{"ID" : "577", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_523", "Parent" : "0", "Child" : ["578", "580", "583"],
		"CDFG" : "fpadd503_255",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59", "EstimateLatencyMax" : "59",
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
					{"ID" : "578", "SubInstance" : "grp_fpadd503_255_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "580", "SubInstance" : "grp_fpadd503_255_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "583", "SubInstance" : "grp_fpadd503_255_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "578", "SubInstance" : "grp_fpadd503_255_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "580", "SubInstance" : "grp_fpadd503_255_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "583", "SubInstance" : "grp_fpadd503_255_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "578", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_523.grp_fpadd503_255_Pipeline_VITIS_LOOP_33_1_fu_26", "Parent" : "577", "Child" : ["579"],
		"CDFG" : "fpadd503_255_Pipeline_VITIS_LOOP_33_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "579", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_523.grp_fpadd503_255_Pipeline_VITIS_LOOP_33_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "578"},
	{"ID" : "580", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_523.grp_fpadd503_255_Pipeline_VITIS_LOOP_39_2_fu_34", "Parent" : "577", "Child" : ["581", "582"],
		"CDFG" : "fpadd503_255_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_1342_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "581", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_523.grp_fpadd503_255_Pipeline_VITIS_LOOP_39_2_fu_34.p503x2_1_U", "Parent" : "580"},
	{"ID" : "582", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_523.grp_fpadd503_255_Pipeline_VITIS_LOOP_39_2_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "580"},
	{"ID" : "583", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_523.grp_fpadd503_255_Pipeline_VITIS_LOOP_46_3_fu_43", "Parent" : "577", "Child" : ["584", "585"],
		"CDFG" : "fpadd503_255_Pipeline_VITIS_LOOP_46_3",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "584", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_523.grp_fpadd503_255_Pipeline_VITIS_LOOP_46_3_fu_43.p503x2_1_U", "Parent" : "583"},
	{"ID" : "585", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_255_fu_523.grp_fpadd503_255_Pipeline_VITIS_LOOP_46_3_fu_43.flow_control_loop_pipe_sequential_init_U", "Parent" : "583"},
	{"ID" : "586", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531", "Parent" : "0", "Child" : ["587", "588", "589", "590", "591", "592", "593", "594", "616", "638", "640", "642", "644", "647", "649", "695", "717", "719"],
		"CDFG" : "fp2mul503_mont_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "755", "EstimateLatencyMax" : "755",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "594", "SubInstance" : "grp_mp_mul_1_fu_74", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "638", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1_fu_98", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "649", "SubInstance" : "grp_rdc_mont_fu_142", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "616", "SubInstance" : "grp_mp_mul_1_fu_86", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "638", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1_fu_98", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "719", "SubInstance" : "grp_rdc_mont_1_fu_165", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "594", "SubInstance" : "grp_mp_mul_1_fu_74", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "640", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139_fu_107", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "616", "SubInstance" : "grp_mp_mul_1_fu_86", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "640", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139_fu_107", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "644", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1_fu_126", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "587", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.t1_U", "Parent" : "586"},
	{"ID" : "588", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.t2_U", "Parent" : "586"},
	{"ID" : "589", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.tt1_U", "Parent" : "586"},
	{"ID" : "590", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.tt1_1_U", "Parent" : "586"},
	{"ID" : "591", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.tt2_U", "Parent" : "586"},
	{"ID" : "592", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.tt2_1_U", "Parent" : "586"},
	{"ID" : "593", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.tt3_U", "Parent" : "586"},
	{"ID" : "594", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74", "Parent" : "586", "Child" : ["595"],
		"CDFG" : "mp_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "595", "SubInstance" : "grp_mul_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "595", "SubInstance" : "grp_mul_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "595", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "595", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "595", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18", "Parent" : "594", "Child" : ["596", "597", "598", "600", "603", "606", "608", "611"],
		"CDFG" : "mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "600", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "603", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "598", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "611", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "598", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "611", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "596", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.acc_U", "Parent" : "595"},
	{"ID" : "597", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.acc_1_U", "Parent" : "595"},
	{"ID" : "598", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "595", "Child" : ["599"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "599", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "598"},
	{"ID" : "600", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "595", "Child" : ["601", "602"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "601", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U563", "Parent" : "600"},
	{"ID" : "602", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "600"},
	{"ID" : "603", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63", "Parent" : "595", "Child" : ["604", "605"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_38_194",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "604", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U566", "Parent" : "603"},
	{"ID" : "605", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "603"},
	{"ID" : "606", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "595", "Child" : ["607"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "607", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "606"},
	{"ID" : "608", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "595", "Child" : ["609", "610"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload75", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "609", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U571", "Parent" : "608"},
	{"ID" : "610", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "608"},
	{"ID" : "611", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "595", "Child" : ["612", "614"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "614", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "614", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "614", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "612", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "614", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "612", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "611", "Child" : ["613"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "613", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "612"},
	{"ID" : "614", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "611", "Child" : ["615"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "615", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_74.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "614"},
	{"ID" : "616", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86", "Parent" : "586", "Child" : ["617"],
		"CDFG" : "mp_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "617", "SubInstance" : "grp_mul_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "grp_mul_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "617", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "617", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18", "Parent" : "616", "Child" : ["618", "619", "620", "622", "625", "628", "630", "633"],
		"CDFG" : "mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "622", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "625", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "620", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "633", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "620", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "633", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "618", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.acc_U", "Parent" : "617"},
	{"ID" : "619", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.acc_1_U", "Parent" : "617"},
	{"ID" : "620", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "617", "Child" : ["621"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "621", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "620"},
	{"ID" : "622", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "617", "Child" : ["623", "624"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "623", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U563", "Parent" : "622"},
	{"ID" : "624", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "622"},
	{"ID" : "625", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63", "Parent" : "617", "Child" : ["626", "627"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_38_194",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "626", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U566", "Parent" : "625"},
	{"ID" : "627", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "625"},
	{"ID" : "628", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "617", "Child" : ["629"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "629", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "628"},
	{"ID" : "630", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "617", "Child" : ["631", "632"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload75", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "631", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U571", "Parent" : "630"},
	{"ID" : "632", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "630"},
	{"ID" : "633", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "617", "Child" : ["634", "636"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "636", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "636", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "634", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "636", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "634", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "636", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "634", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "633", "Child" : ["635"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "635", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "634"},
	{"ID" : "636", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "633", "Child" : ["637"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "637", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_1_fu_86.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "636"},
	{"ID" : "638", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1_fu_98", "Parent" : "586", "Child" : ["639"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "639", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "638"},
	{"ID" : "640", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139_fu_107", "Parent" : "586", "Child" : ["641"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139",
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
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "641", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "640"},
	{"ID" : "642", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1_fu_116", "Parent" : "586", "Child" : ["643"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1",
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
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "643", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "642"},
	{"ID" : "644", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1_fu_126", "Parent" : "586", "Child" : ["645", "646"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1",
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
	{"ID" : "645", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1_fu_126.p503_1_U", "Parent" : "644"},
	{"ID" : "646", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "644"},
	{"ID" : "647", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1140_fu_134", "Parent" : "586", "Child" : ["648"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1140",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "648", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1140_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "647"},
	{"ID" : "649", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142", "Parent" : "586", "Child" : ["650", "652", "653", "654", "655", "656", "657", "658", "659", "660", "661", "662", "663", "664", "665", "670", "675", "680", "685", "690"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "126", "EstimateLatencyMax" : "126",
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
					{"ID" : "650", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "650", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "649", "Child" : ["651"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "651", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "650"},
	{"ID" : "652", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_292", "Parent" : "649",
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
	{"ID" : "653", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_299", "Parent" : "649",
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
	{"ID" : "654", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_306", "Parent" : "649",
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
	{"ID" : "655", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_312", "Parent" : "649",
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
	{"ID" : "656", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_318", "Parent" : "649",
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
	{"ID" : "657", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_325", "Parent" : "649",
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
	{"ID" : "658", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_332", "Parent" : "649",
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
	{"ID" : "659", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_338", "Parent" : "649",
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
	{"ID" : "660", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_345", "Parent" : "649",
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
	{"ID" : "661", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_354", "Parent" : "649",
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
	{"ID" : "662", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_361", "Parent" : "649",
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
	{"ID" : "663", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.tmp_261_is_digit_lessthan_ct_fu_367", "Parent" : "649",
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
	{"ID" : "664", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.tmp_262_is_digit_lessthan_ct_fu_374", "Parent" : "649",
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
	{"ID" : "665", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381", "Parent" : "649", "Child" : ["666", "667", "668", "669"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "666", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U342", "Parent" : "665"},
	{"ID" : "667", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U343", "Parent" : "665"},
	{"ID" : "668", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U344", "Parent" : "665"},
	{"ID" : "669", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U345", "Parent" : "665"},
	{"ID" : "670", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388", "Parent" : "649", "Child" : ["671", "672", "673", "674"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "671", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U342", "Parent" : "670"},
	{"ID" : "672", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U343", "Parent" : "670"},
	{"ID" : "673", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U344", "Parent" : "670"},
	{"ID" : "674", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U345", "Parent" : "670"},
	{"ID" : "675", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395", "Parent" : "649", "Child" : ["676", "677", "678", "679"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "676", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U342", "Parent" : "675"},
	{"ID" : "677", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U343", "Parent" : "675"},
	{"ID" : "678", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U344", "Parent" : "675"},
	{"ID" : "679", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U345", "Parent" : "675"},
	{"ID" : "680", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402", "Parent" : "649", "Child" : ["681", "682", "683", "684"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "681", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U342", "Parent" : "680"},
	{"ID" : "682", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U343", "Parent" : "680"},
	{"ID" : "683", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U344", "Parent" : "680"},
	{"ID" : "684", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U345", "Parent" : "680"},
	{"ID" : "685", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409", "Parent" : "649", "Child" : ["686", "687", "688", "689"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "686", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U342", "Parent" : "685"},
	{"ID" : "687", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U343", "Parent" : "685"},
	{"ID" : "688", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U344", "Parent" : "685"},
	{"ID" : "689", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U345", "Parent" : "685"},
	{"ID" : "690", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416", "Parent" : "649", "Child" : ["691", "692", "693", "694"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "691", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U342", "Parent" : "690"},
	{"ID" : "692", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U343", "Parent" : "690"},
	{"ID" : "693", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U344", "Parent" : "690"},
	{"ID" : "694", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U345", "Parent" : "690"},
	{"ID" : "695", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149", "Parent" : "586", "Child" : ["696"],
		"CDFG" : "mp_mul_5120",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
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
					{"ID" : "696", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "696", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "696", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "696", "SubInstance" : "grp_mul_4124_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "696", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18", "Parent" : "695", "Child" : ["697", "698", "699", "701", "704", "707", "709", "712"],
		"CDFG" : "mul_4124",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "254", "EstimateLatencyMax" : "254",
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
					{"ID" : "701", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "704", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "699", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "712", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "699", "SubInstance" : "grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "712", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "697", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.acc_U", "Parent" : "696"},
	{"ID" : "698", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.acc_1_U", "Parent" : "696"},
	{"ID" : "699", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48", "Parent" : "696", "Child" : ["700"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_63_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "700", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_63_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "699"},
	{"ID" : "701", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56", "Parent" : "696", "Child" : ["702", "703"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "702", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "701"},
	{"ID" : "703", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "701"},
	{"ID" : "704", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63", "Parent" : "696", "Child" : ["705", "706"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_38_187",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "705", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "704"},
	{"ID" : "706", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_38_187_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "704"},
	{"ID" : "707", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70", "Parent" : "696", "Child" : ["708"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_85_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "708", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_85_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "707"},
	{"ID" : "709", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78", "Parent" : "696", "Child" : ["710", "711"],
		"CDFG" : "mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload76", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "710", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "709"},
	{"ID" : "711", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "709"},
	{"ID" : "712", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "696", "Child" : ["713", "715"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "715", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "715", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "713", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "715", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "713", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "715", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "713", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "712", "Child" : ["714"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "714", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "713"},
	{"ID" : "715", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "712", "Child" : ["716"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2",
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
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_cnt_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_bits_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bitbuf_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "716", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_mp_mul_5120_fu_149.grp_mul_4124_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "715"},
	{"ID" : "717", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1141_fu_157", "Parent" : "586", "Child" : ["718"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1141",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tt2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "718", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1141_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "717"},
	{"ID" : "719", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165", "Parent" : "586", "Child" : ["720", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "740", "745", "750", "755", "760"],
		"CDFG" : "rdc_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148", "EstimateLatencyMax" : "148",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "720", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "720", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "719", "Child" : ["721"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_306_1",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_306_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "721", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "720"},
	{"ID" : "722", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_283", "Parent" : "719",
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
	{"ID" : "723", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_290", "Parent" : "719",
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
	{"ID" : "724", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_297", "Parent" : "719",
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
	{"ID" : "725", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_303", "Parent" : "719",
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
	{"ID" : "726", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_309", "Parent" : "719",
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
	{"ID" : "727", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_316", "Parent" : "719",
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
	{"ID" : "728", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_323", "Parent" : "719",
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
	{"ID" : "729", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_329", "Parent" : "719",
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
	{"ID" : "730", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_336", "Parent" : "719",
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
	{"ID" : "731", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_345", "Parent" : "719",
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
	{"ID" : "732", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_352", "Parent" : "719",
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
	{"ID" : "733", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.tmp_45_is_digit_lessthan_ct_fu_358", "Parent" : "719",
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
	{"ID" : "734", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.tmp_46_is_digit_lessthan_ct_fu_365", "Parent" : "719",
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
	{"ID" : "735", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372", "Parent" : "719", "Child" : ["736", "737", "738", "739"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "736", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U342", "Parent" : "735"},
	{"ID" : "737", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U343", "Parent" : "735"},
	{"ID" : "738", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U344", "Parent" : "735"},
	{"ID" : "739", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U345", "Parent" : "735"},
	{"ID" : "740", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379", "Parent" : "719", "Child" : ["741", "742", "743", "744"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "741", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U342", "Parent" : "740"},
	{"ID" : "742", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U343", "Parent" : "740"},
	{"ID" : "743", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U344", "Parent" : "740"},
	{"ID" : "744", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U345", "Parent" : "740"},
	{"ID" : "745", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386", "Parent" : "719", "Child" : ["746", "747", "748", "749"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "746", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U342", "Parent" : "745"},
	{"ID" : "747", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U343", "Parent" : "745"},
	{"ID" : "748", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U344", "Parent" : "745"},
	{"ID" : "749", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U345", "Parent" : "745"},
	{"ID" : "750", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393", "Parent" : "719", "Child" : ["751", "752", "753", "754"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "751", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U342", "Parent" : "750"},
	{"ID" : "752", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U343", "Parent" : "750"},
	{"ID" : "753", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U344", "Parent" : "750"},
	{"ID" : "754", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U345", "Parent" : "750"},
	{"ID" : "755", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400", "Parent" : "719", "Child" : ["756", "757", "758", "759"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "756", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U342", "Parent" : "755"},
	{"ID" : "757", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U343", "Parent" : "755"},
	{"ID" : "758", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U344", "Parent" : "755"},
	{"ID" : "759", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U345", "Parent" : "755"},
	{"ID" : "760", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407", "Parent" : "719", "Child" : ["761", "762", "763", "764"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
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
	{"ID" : "761", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U342", "Parent" : "760"},
	{"ID" : "762", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U343", "Parent" : "760"},
	{"ID" : "763", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U344", "Parent" : "760"},
	{"ID" : "764", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_531.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U345", "Parent" : "760"},
	{"ID" : "765", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_Pipeline_VITIS_LOOP_313_1_fu_541", "Parent" : "0", "Child" : ["766"],
		"CDFG" : "xDBLe_Pipeline_VITIS_LOOP_313_1",
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
			{"Name" : "Q_X_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Q_X_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Q_Z_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Q_Z_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Qnew_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Qnew_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Qnew_Z_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_313_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "766", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_Pipeline_VITIS_LOOP_313_1_fu_541.flow_control_loop_pipe_sequential_init_U", "Parent" : "765"}]}


set ArgLastReadFirstWriteLatency {
	xDBLe {
		R_X {Type I LastRead 0 FirstWrite -1}
		R_Z {Type I LastRead 0 FirstWrite -1}
		Q_X_0 {Type IO LastRead 0 FirstWrite -1}
		Q_X_1 {Type IO LastRead 2 FirstWrite -1}
		Q_Z_0 {Type IO LastRead 0 FirstWrite -1}
		Q_Z_1 {Type IO LastRead 0 FirstWrite -1}
		A24plus_0 {Type I LastRead 0 FirstWrite -1}
		A24plus_1 {Type I LastRead 0 FirstWrite -1}
		C24_0 {Type I LastRead 0 FirstWrite -1}
		C24_1 {Type I LastRead 0 FirstWrite -1}
		e {Type I LastRead 3 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	xDBLe_Pipeline_VITIS_LOOP_17_1 {
		Q_X_0 {Type O LastRead -1 FirstWrite 1}
		R_X {Type I LastRead 0 FirstWrite -1}}
	xDBLe_Pipeline_VITIS_LOOP_17_181 {
		Q_Z_0 {Type O LastRead -1 FirstWrite 1}
		R_Z {Type I LastRead 0 FirstWrite -1}}
	xDBLe_Pipeline_VITIS_LOOP_17_180 {
		Q_X_1 {Type O LastRead -1 FirstWrite 1}
		R_X {Type I LastRead 0 FirstWrite -1}}
	xDBLe_Pipeline_VITIS_LOOP_17_182 {
		Q_Z_1 {Type O LastRead -1 FirstWrite 1}
		R_Z {Type I LastRead 0 FirstWrite -1}}
	fpsub503_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_2_Pipeline_VITIS_LOOP_61_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_2_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1_Pipeline_VITIS_LOOP_33_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_1_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_1360_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 13 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_396_1102 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_2 {
		ma {Type I LastRead 10 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_2_3_2 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_2_1_1 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	fpmul503_mont_2_3 {
		ma {Type I LastRead 10 FirstWrite -1}
		mc {Type IO LastRead 13 FirstWrite 20}}
	mul_2_3_1 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	mul_2_3 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	fp2mul503_mont_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_5120 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_187 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	mp_mul_5120 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_187 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1157 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_1_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_1_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_1_Pipeline_VITIS_LOOP_396_1158 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
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
	fp2mul503_mont_1_Pipeline_VITIS_LOOP_178_1159 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_1 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_1_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
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
	fp2mul503_mont_8 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_38_193 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload75 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	mp_mul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_38_193 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload75 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1106 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_396_1107 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_133 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_133_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	mp_mul_5120 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_187 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_178_1108 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_2 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_2_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
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
	fpsub503_4_2112 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_2112_Pipeline_VITIS_LOOP_61_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_2112 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_2112_Pipeline_VITIS_LOOP_61_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_4_2112_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_631 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_5120 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_187 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	mp_mul_5120 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_187 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1112 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_631_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_631_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_631_Pipeline_VITIS_LOOP_396_1113 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_134 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_134_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
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
	fp2mul503_mont_631_Pipeline_VITIS_LOOP_178_1114 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_4 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_4_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
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
	fpadd503_255 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_255_Pipeline_VITIS_LOOP_33_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_255_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_1342_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_255_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_255 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_255_Pipeline_VITIS_LOOP_33_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_255_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_1342_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_255_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_5 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_38_194 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload75 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	mp_mul_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_38_194 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload75 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1139 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_396_1140 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
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
	mp_mul_5120 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_38_187 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_4124_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload76 {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2 {
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		acc_0 {Type I LastRead 0 FirstWrite -1}
		acc_1 {Type I LastRead 0 FirstWrite -1}
		out_cnt_out {Type O LastRead -1 FirstWrite 1}
		buf_bits_out {Type O LastRead -1 FirstWrite 1}
		bitbuf_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_178_1141 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_1 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_1_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
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
	xDBLe_Pipeline_VITIS_LOOP_313_1 {
		Q_X_0 {Type IO LastRead 0 FirstWrite 1}
		Q_X_1 {Type IO LastRead 2 FirstWrite 3}
		Q_Z_0 {Type IO LastRead 0 FirstWrite 1}
		Q_Z_1 {Type IO LastRead 0 FirstWrite 1}
		Qnew_X {Type I LastRead 1 FirstWrite -1}
		Qnew_Z {Type I LastRead 0 FirstWrite -1}
		Qnew_Z_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln47 {Type I LastRead 0 FirstWrite -1}
		e_cast {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1670487", "Max" : "1670487"}
	, {"Name" : "Interval", "Min" : "1670487", "Max" : "1670487"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	R_X { ap_memory {  { R_X_address0 mem_address 1 4 }  { R_X_ce0 mem_ce 1 1 }  { R_X_q0 mem_dout 0 64 } } }
	R_Z { ap_memory {  { R_Z_address0 mem_address 1 4 }  { R_Z_ce0 mem_ce 1 1 }  { R_Z_q0 mem_dout 0 64 } } }
	Q_X_0 { ap_memory {  { Q_X_0_address0 mem_address 1 3 }  { Q_X_0_ce0 mem_ce 1 1 }  { Q_X_0_we0 mem_we 1 1 }  { Q_X_0_d0 mem_din 1 64 }  { Q_X_0_q0 mem_dout 0 64 } } }
	Q_X_1 { ap_memory {  { Q_X_1_address0 mem_address 1 3 }  { Q_X_1_ce0 mem_ce 1 1 }  { Q_X_1_we0 mem_we 1 1 }  { Q_X_1_d0 mem_din 1 64 }  { Q_X_1_q0 mem_dout 0 64 } } }
	Q_Z_0 { ap_memory {  { Q_Z_0_address0 mem_address 1 3 }  { Q_Z_0_ce0 mem_ce 1 1 }  { Q_Z_0_we0 mem_we 1 1 }  { Q_Z_0_d0 mem_din 1 64 }  { Q_Z_0_q0 mem_dout 0 64 } } }
	Q_Z_1 { ap_memory {  { Q_Z_1_address0 mem_address 1 3 }  { Q_Z_1_ce0 mem_ce 1 1 }  { Q_Z_1_we0 mem_we 1 1 }  { Q_Z_1_d0 mem_din 1 64 }  { Q_Z_1_q0 mem_dout 0 64 } } }
	A24plus_0 { ap_memory {  { A24plus_0_address0 mem_address 1 3 }  { A24plus_0_ce0 mem_ce 1 1 }  { A24plus_0_q0 mem_dout 0 64 } } }
	A24plus_1 { ap_memory {  { A24plus_1_address0 mem_address 1 3 }  { A24plus_1_ce0 mem_ce 1 1 }  { A24plus_1_q0 mem_dout 0 64 } } }
	C24_0 { ap_memory {  { C24_0_address0 mem_address 1 3 }  { C24_0_ce0 mem_ce 1 1 }  { C24_0_q0 mem_dout 0 64 } } }
	C24_1 { ap_memory {  { C24_1_address0 mem_address 1 3 }  { C24_1_ce0 mem_ce 1 1 }  { C24_1_q0 mem_dout 0 64 } } }
	e { ap_none {  { e in_data 0 7 } } }
}
