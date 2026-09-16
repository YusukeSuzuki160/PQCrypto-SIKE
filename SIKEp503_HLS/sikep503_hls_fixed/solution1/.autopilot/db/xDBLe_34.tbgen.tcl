set moduleName xDBLe_34
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
set cdfgNum 607
set C_modelName {xDBLe.34}
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
dict set ap_memory_interface_dict C24_0_0 { MEM_WIDTH 64 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C24_0_1 { MEM_WIDTH 64 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C24_1_0 { MEM_WIDTH 64 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C24_1_1 { MEM_WIDTH 64 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ R_X int 64 regular {array 16 { 1 } 1 1 }  }
	{ R_Z int 64 regular {array 16 { 1 } 1 1 }  }
	{ Q_X_0 int 64 regular {array 8 { 2 } 1 1 }  }
	{ Q_X_1 int 64 regular {array 8 { 2 } 1 1 }  }
	{ Q_Z_0 int 64 regular {array 8 { 2 } 1 1 }  }
	{ Q_Z_1 int 64 regular {array 8 { 2 } 1 1 }  }
	{ A24plus_0 int 64 regular {array 8 { 1 } 1 1 }  }
	{ A24plus_1 int 64 regular {array 8 { 1 } 1 1 }  }
	{ C24_0_0 int 64 regular {array 4 { 1 } 1 1 }  }
	{ C24_0_1 int 64 regular {array 4 { 1 } 1 1 }  }
	{ C24_1_0 int 64 regular {array 4 { 1 } 1 1 }  }
	{ C24_1_1 int 64 regular {array 4 { 1 } 1 1 }  }
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
 	{ "Name" : "C24_0_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C24_0_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C24_1_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "C24_1_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "e", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 51
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
	{ C24_0_0_address0 sc_out sc_lv 2 signal 8 } 
	{ C24_0_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ C24_0_0_q0 sc_in sc_lv 64 signal 8 } 
	{ C24_0_1_address0 sc_out sc_lv 2 signal 9 } 
	{ C24_0_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ C24_0_1_q0 sc_in sc_lv 64 signal 9 } 
	{ C24_1_0_address0 sc_out sc_lv 2 signal 10 } 
	{ C24_1_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ C24_1_0_q0 sc_in sc_lv 64 signal 10 } 
	{ C24_1_1_address0 sc_out sc_lv 2 signal 11 } 
	{ C24_1_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ C24_1_1_q0 sc_in sc_lv 64 signal 11 } 
	{ e sc_in sc_lv 7 signal 12 } 
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
 	{ "name": "C24_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "C24_0_0", "role": "address0" }} , 
 	{ "name": "C24_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C24_0_0", "role": "ce0" }} , 
 	{ "name": "C24_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C24_0_0", "role": "q0" }} , 
 	{ "name": "C24_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "C24_0_1", "role": "address0" }} , 
 	{ "name": "C24_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C24_0_1", "role": "ce0" }} , 
 	{ "name": "C24_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C24_0_1", "role": "q0" }} , 
 	{ "name": "C24_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "C24_1_0", "role": "address0" }} , 
 	{ "name": "C24_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C24_1_0", "role": "ce0" }} , 
 	{ "name": "C24_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C24_1_0", "role": "q0" }} , 
 	{ "name": "C24_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "C24_1_1", "role": "address0" }} , 
 	{ "name": "C24_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C24_1_1", "role": "ce0" }} , 
 	{ "name": "C24_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "C24_1_1", "role": "q0" }} , 
 	{ "name": "e", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "e", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "12", "14", "16", "22", "31", "186", "365", "501", "507", "513", "670", "679", "688", "867"],
		"CDFG" : "xDBLe_34",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1802776", "EstimateLatencyMax" : "1802776",
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
					{"ID" : "8", "SubInstance" : "grp_xDBLe_34_Pipeline_VITIS_LOOP_13_1_fu_398", "Port" : "R_X", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "12", "SubInstance" : "grp_xDBLe_34_Pipeline_VITIS_LOOP_13_173_fu_414", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_xDBLe_34_Pipeline_VITIS_LOOP_13_174_fu_406", "Port" : "R_Z", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "14", "SubInstance" : "grp_xDBLe_34_Pipeline_VITIS_LOOP_13_175_fu_422", "Port" : "R_Z", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Q_X_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_xDBLe_34_Pipeline_VITIS_LOOP_13_1_fu_398", "Port" : "Q_X_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "16", "SubInstance" : "grp_fpsub503_2_fu_430", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "22", "SubInstance" : "grp_fpadd503_1_fu_443", "Port" : "a", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "867", "SubInstance" : "grp_xDBLe_34_Pipeline_VITIS_LOOP_313_1_fu_549", "Port" : "Q_X_0", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "Q_X_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_xDBLe_34_Pipeline_VITIS_LOOP_13_173_fu_414", "Port" : "Q_X_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "16", "SubInstance" : "grp_fpsub503_2_fu_430", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "22", "SubInstance" : "grp_fpadd503_1_fu_443", "Port" : "a", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "867", "SubInstance" : "grp_xDBLe_34_Pipeline_VITIS_LOOP_313_1_fu_549", "Port" : "Q_X_1", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "Q_Z_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_xDBLe_34_Pipeline_VITIS_LOOP_13_174_fu_406", "Port" : "Q_Z_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "16", "SubInstance" : "grp_fpsub503_2_fu_430", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "22", "SubInstance" : "grp_fpadd503_1_fu_443", "Port" : "b", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "867", "SubInstance" : "grp_xDBLe_34_Pipeline_VITIS_LOOP_313_1_fu_549", "Port" : "Q_Z_0", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "Q_Z_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_xDBLe_34_Pipeline_VITIS_LOOP_13_175_fu_422", "Port" : "Q_Z_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "16", "SubInstance" : "grp_fpsub503_2_fu_430", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "22", "SubInstance" : "grp_fpadd503_1_fu_443", "Port" : "b", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "867", "SubInstance" : "grp_xDBLe_34_Pipeline_VITIS_LOOP_313_1_fu_549", "Port" : "Q_Z_1", "Inst_start_state" : "31", "Inst_end_state" : "32"}]},
			{"Name" : "A24plus_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "513", "SubInstance" : "grp_fp2mul503_mont_625_fu_509", "Port" : "a_0", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "A24plus_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "513", "SubInstance" : "grp_fp2mul503_mont_625_fu_509", "Port" : "a_1", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "C24_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "grp_fp2mul503_mont_13_fu_464", "Port" : "a_0_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "C24_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "grp_fp2mul503_mont_13_fu_464", "Port" : "a_0_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "C24_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "grp_fp2mul503_mont_13_fu_464", "Port" : "a_1_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "C24_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "grp_fp2mul503_mont_13_fu_464", "Port" : "a_1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_fpsub503_2_fu_430", "Port" : "p503x2_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "22", "SubInstance" : "grp_fpadd503_1_fu_443", "Port" : "p503x2_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "31", "SubInstance" : "grp_fp2sqr503_mont_2_1_fu_456", "Port" : "p503x2_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "501", "SubInstance" : "grp_fpsub503_4_272_fu_493", "Port" : "p503x2_1", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "507", "SubInstance" : "grp_fpsub503_4_272_fu_501", "Port" : "p503x2_1", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "670", "SubInstance" : "grp_fpadd503_246_fu_523", "Port" : "p503x2_1", "Inst_start_state" : "27", "Inst_end_state" : "28"},
					{"ID" : "679", "SubInstance" : "grp_fpadd503_246_fu_531", "Port" : "p503x2_1", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "grp_fp2mul503_mont_13_fu_464", "Port" : "p503_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "365", "SubInstance" : "grp_fp2mul503_mont_8_fu_482", "Port" : "p503_1", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "513", "SubInstance" : "grp_fp2mul503_mont_625_fu_509", "Port" : "p503_1", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "688", "SubInstance" : "grp_fp2mul503_mont_5_fu_539", "Port" : "p503_1", "Inst_start_state" : "29", "Inst_end_state" : "30"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state32"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Qnew_X_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Qnew_Z_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Qnew_Z_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_34_Pipeline_VITIS_LOOP_13_1_fu_398", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "xDBLe_34_Pipeline_VITIS_LOOP_13_1",
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
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_34_Pipeline_VITIS_LOOP_13_1_fu_398.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_34_Pipeline_VITIS_LOOP_13_174_fu_406", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "xDBLe_34_Pipeline_VITIS_LOOP_13_174",
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
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_34_Pipeline_VITIS_LOOP_13_174_fu_406.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_34_Pipeline_VITIS_LOOP_13_173_fu_414", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "xDBLe_34_Pipeline_VITIS_LOOP_13_173",
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
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_34_Pipeline_VITIS_LOOP_13_173_fu_414.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_34_Pipeline_VITIS_LOOP_13_175_fu_422", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "xDBLe_34_Pipeline_VITIS_LOOP_13_175",
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
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_34_Pipeline_VITIS_LOOP_13_175_fu_422.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_430", "Parent" : "0", "Child" : ["17", "19"],
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_430.grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Parent" : "16", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_430.grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_430.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Parent" : "16", "Child" : ["20", "21"],
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
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_430.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39.p503x2_1_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_430.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_443", "Parent" : "0", "Child" : ["23", "25", "28"],
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
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_443.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "22", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_443.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_443.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "22", "Child" : ["26", "27"],
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
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_443.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_443.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_443.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "22", "Child" : ["29", "30"],
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
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_443.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_443.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456", "Parent" : "0", "Child" : ["32", "33", "34", "35", "37", "39", "42", "44", "115"],
		"CDFG" : "fp2sqr503_mont_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "447", "EstimateLatencyMax" : "447",
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
					{"ID" : "35", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "37", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "42", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1102_fu_74", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "44", "SubInstance" : "grp_fpmul503_mont_6_fu_81", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "37", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "115", "SubInstance" : "grp_fpmul503_mont_3_3_fu_89", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.t1_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.t2_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.t3_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1_fu_46", "Parent" : "31", "Child" : ["36"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56", "Parent" : "31", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_61_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66", "Parent" : "31", "Child" : ["40", "41"],
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
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66.p503x2_1_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_68_2_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1102_fu_74", "Parent" : "31", "Child" : ["43"],
		"CDFG" : "fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1102",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1102_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81", "Parent" : "31", "Child" : ["45", "46", "47", "69"],
		"CDFG" : "fpmul503_mont_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "402",
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
					{"ID" : "47", "SubInstance" : "grp_mp_mul_586_fu_86", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_mp_mul_586_fu_86", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_rdc_mont_6_fu_96", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.temp_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.temp_1_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86", "Parent" : "44", "Child" : ["48"],
		"CDFG" : "mp_mul_586",
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
					{"ID" : "48", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20", "Parent" : "47", "Child" : ["49", "50", "51", "53", "56", "59", "61", "64"],
		"CDFG" : "mul_491",
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
					{"ID" : "53", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "64", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "64", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.acc_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.acc_1_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "48", "Child" : ["52"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "48", "Child" : ["54", "55"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_1",
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
	{"ID" : "54", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "53"},
	{"ID" : "55", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "48", "Child" : ["57", "58"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_184",
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
	{"ID" : "57", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "56"},
	{"ID" : "58", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "48", "Child" : ["60"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "60", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "48", "Child" : ["62", "63"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "61"},
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "48", "Child" : ["65", "67"],
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
					{"ID" : "67", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "67", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "67", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "64", "Child" : ["66"],
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
	{"ID" : "66", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "64", "Child" : ["68"],
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
	{"ID" : "68", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_mp_mul_586_fu_86.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96", "Parent" : "44", "Child" : ["70", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "90", "95", "100", "105", "110"],
		"CDFG" : "rdc_mont_6",
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
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "69", "Child" : ["71"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_283", "Parent" : "69",
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
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_290", "Parent" : "69",
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
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_297", "Parent" : "69",
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
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_303", "Parent" : "69",
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
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_309", "Parent" : "69",
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
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_316", "Parent" : "69",
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
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_323", "Parent" : "69",
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
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_329", "Parent" : "69",
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
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_336", "Parent" : "69",
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
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_345", "Parent" : "69",
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
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_is_digit_lessthan_ct_fu_352", "Parent" : "69",
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
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "69",
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
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "69",
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
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_372", "Parent" : "69", "Child" : ["86", "87", "88", "89"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "85"},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "85"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "85"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "85"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_379", "Parent" : "69", "Child" : ["91", "92", "93", "94"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "90"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "90"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "90"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "90"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_386", "Parent" : "69", "Child" : ["96", "97", "98", "99"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "95"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "95"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "95"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "95"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_393", "Parent" : "69", "Child" : ["101", "102", "103", "104"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "100"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "100"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "100"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "100"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_400", "Parent" : "69", "Child" : ["106", "107", "108", "109"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "106", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "105"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "105"},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "105"},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "105"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_407", "Parent" : "69", "Child" : ["111", "112", "113", "114"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "110"},
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "110"},
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "110"},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_6_fu_81.grp_rdc_mont_6_fu_96.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "110"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89", "Parent" : "31", "Child" : ["116", "117", "118", "140"],
		"CDFG" : "fpmul503_mont_3_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "402",
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
					{"ID" : "118", "SubInstance" : "grp_mp_mul_586_fu_84", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_mp_mul_586_fu_84", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "140", "SubInstance" : "grp_rdc_mont_6_fu_94", "Port" : "mc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.temp_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.temp_1_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84", "Parent" : "115", "Child" : ["119"],
		"CDFG" : "mp_mul_586",
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
					{"ID" : "119", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20", "Parent" : "118", "Child" : ["120", "121", "122", "124", "127", "130", "132", "135"],
		"CDFG" : "mul_491",
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
					{"ID" : "124", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "135", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "135", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "120", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.acc_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.acc_1_U", "Parent" : "119"},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "119", "Child" : ["123"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "119", "Child" : ["125", "126"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_1",
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
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "124"},
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "119", "Child" : ["128", "129"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_184",
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
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "127"},
	{"ID" : "129", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "127"},
	{"ID" : "130", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "119", "Child" : ["131"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "131", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "119", "Child" : ["133", "134"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "133", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "132"},
	{"ID" : "134", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "132"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "119", "Child" : ["136", "138"],
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
					{"ID" : "138", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "138", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "138", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "136", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "135", "Child" : ["137"],
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
	{"ID" : "137", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "135", "Child" : ["139"],
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
	{"ID" : "139", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_mp_mul_586_fu_84.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94", "Parent" : "115", "Child" : ["141", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "161", "166", "171", "176", "181"],
		"CDFG" : "rdc_mont_6",
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
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "140", "Child" : ["142"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_283", "Parent" : "140",
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
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_290", "Parent" : "140",
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
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_297", "Parent" : "140",
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
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_303", "Parent" : "140",
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
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_309", "Parent" : "140",
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
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_316", "Parent" : "140",
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
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_323", "Parent" : "140",
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
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_329", "Parent" : "140",
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
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_336", "Parent" : "140",
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
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_345", "Parent" : "140",
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
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_is_digit_lessthan_ct_fu_352", "Parent" : "140",
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
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "140",
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
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "140",
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
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372", "Parent" : "140", "Child" : ["157", "158", "159", "160"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "156"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "156"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "156"},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "156"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379", "Parent" : "140", "Child" : ["162", "163", "164", "165"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "162", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "161"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "161"},
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "161"},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "161"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386", "Parent" : "140", "Child" : ["167", "168", "169", "170"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "166"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "166"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "166"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "166"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393", "Parent" : "140", "Child" : ["172", "173", "174", "175"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "171"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "171"},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "171"},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "171"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400", "Parent" : "140", "Child" : ["177", "178", "179", "180"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "176"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "176"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "176"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "176"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407", "Parent" : "140", "Child" : ["182", "183", "184", "185"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "181"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "181"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "181"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_2_1_fu_456.grp_fpmul503_mont_3_3_fu_89.grp_rdc_mont_6_fu_94.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "181"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464", "Parent" : "0", "Child" : ["187", "188", "189", "190", "191", "192", "193", "194", "216", "238", "240", "242", "244", "247", "249", "295", "317", "319"],
		"CDFG" : "fp2mul503_mont_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "689", "EstimateLatencyMax" : "689",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_mp_mul_12_fu_82", "Port" : "a_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "238", "SubInstance" : "grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1_fu_110", "Port" : "a_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_mp_mul_12_fu_82", "Port" : "a_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "238", "SubInstance" : "grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1_fu_110", "Port" : "a_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "216", "SubInstance" : "grp_mp_mul_12_fu_96", "Port" : "a_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "238", "SubInstance" : "grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1_fu_110", "Port" : "a_1_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "216", "SubInstance" : "grp_mp_mul_12_fu_96", "Port" : "a_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "238", "SubInstance" : "grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1_fu_110", "Port" : "a_1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_mp_mul_12_fu_82", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "240", "SubInstance" : "grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1154_fu_123", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "216", "SubInstance" : "grp_mp_mul_12_fu_96", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "240", "SubInstance" : "grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1154_fu_123", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "249", "SubInstance" : "grp_rdc_mont_fu_158", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "319", "SubInstance" : "grp_rdc_mont_1_fu_181", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "244", "SubInstance" : "grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_199_1_fu_142", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.t1_U", "Parent" : "186"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.t2_U", "Parent" : "186"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.tt1_U", "Parent" : "186"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.tt1_1_U", "Parent" : "186"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.tt2_U", "Parent" : "186"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.tt2_1_U", "Parent" : "186"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.tt3_U", "Parent" : "186"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82", "Parent" : "186", "Child" : ["195"],
		"CDFG" : "mp_mul_12",
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
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_mul_11_fu_22", "Port" : "a_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_mul_11_fu_22", "Port" : "a_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_mul_11_fu_22", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_mul_11_fu_22", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_mul_11_fu_22", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22", "Parent" : "194", "Child" : ["196", "197", "198", "200", "203", "206", "208", "211"],
		"CDFG" : "mul_11",
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
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "grp_mul_11_Pipeline_VITIS_LOOP_38_1_fu_60", "Port" : "a_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "200", "SubInstance" : "grp_mul_11_Pipeline_VITIS_LOOP_38_1_fu_60", "Port" : "a_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "grp_mul_11_Pipeline_VITIS_LOOP_38_193_fu_69", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "198", "SubInstance" : "grp_mul_11_Pipeline_VITIS_LOOP_63_1_fu_52", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "211", "SubInstance" : "grp_convert_blocks_to_digits_fu_92", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "198", "SubInstance" : "grp_mul_11_Pipeline_VITIS_LOOP_63_1_fu_52", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "211", "SubInstance" : "grp_convert_blocks_to_digits_fu_92", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "196", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.acc_U", "Parent" : "195"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.acc_1_U", "Parent" : "195"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_63_1_fu_52", "Parent" : "195", "Child" : ["199"],
		"CDFG" : "mul_11_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_63_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_38_1_fu_60", "Parent" : "195", "Child" : ["201", "202"],
		"CDFG" : "mul_11_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_38_1_fu_60.partset_512ns_512ns_64ns_32ns_512_1_1_U1694", "Parent" : "200"},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_38_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "200"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_38_193_fu_69", "Parent" : "195", "Child" : ["204", "205"],
		"CDFG" : "mul_11_Pipeline_VITIS_LOOP_38_193",
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
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_38_193_fu_69.partset_512ns_512ns_64ns_32ns_512_1_1_U1698", "Parent" : "203"},
	{"ID" : "205", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_38_193_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "203"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_85_2_fu_76", "Parent" : "195", "Child" : ["207"],
		"CDFG" : "mul_11_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "207", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_85_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_84", "Parent" : "195", "Child" : ["209", "210"],
		"CDFG" : "mul_11_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
			{"Name" : "p_reload82", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_84.mul_64ns_64ns_128_1_1_U1703", "Parent" : "208"},
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_convert_blocks_to_digits_fu_92", "Parent" : "195", "Child" : ["212", "214"],
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
					{"ID" : "214", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "214", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "212", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "214", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "212", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "214", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "212", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "211", "Child" : ["213"],
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
	{"ID" : "213", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "211", "Child" : ["215"],
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
	{"ID" : "215", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_82.grp_mul_11_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96", "Parent" : "186", "Child" : ["217"],
		"CDFG" : "mp_mul_12",
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
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "217", "SubInstance" : "grp_mul_11_fu_22", "Port" : "a_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "217", "SubInstance" : "grp_mul_11_fu_22", "Port" : "a_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "217", "SubInstance" : "grp_mul_11_fu_22", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "217", "SubInstance" : "grp_mul_11_fu_22", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "217", "SubInstance" : "grp_mul_11_fu_22", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22", "Parent" : "216", "Child" : ["218", "219", "220", "222", "225", "228", "230", "233"],
		"CDFG" : "mul_11",
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
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_mul_11_Pipeline_VITIS_LOOP_38_1_fu_60", "Port" : "a_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "222", "SubInstance" : "grp_mul_11_Pipeline_VITIS_LOOP_38_1_fu_60", "Port" : "a_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_mul_11_Pipeline_VITIS_LOOP_38_193_fu_69", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "220", "SubInstance" : "grp_mul_11_Pipeline_VITIS_LOOP_63_1_fu_52", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "233", "SubInstance" : "grp_convert_blocks_to_digits_fu_92", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "220", "SubInstance" : "grp_mul_11_Pipeline_VITIS_LOOP_63_1_fu_52", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "233", "SubInstance" : "grp_convert_blocks_to_digits_fu_92", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.acc_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.acc_1_U", "Parent" : "217"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_63_1_fu_52", "Parent" : "217", "Child" : ["221"],
		"CDFG" : "mul_11_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_63_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "220"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_38_1_fu_60", "Parent" : "217", "Child" : ["223", "224"],
		"CDFG" : "mul_11_Pipeline_VITIS_LOOP_38_1",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_38_1_fu_60.partset_512ns_512ns_64ns_32ns_512_1_1_U1694", "Parent" : "222"},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_38_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "222"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_38_193_fu_69", "Parent" : "217", "Child" : ["226", "227"],
		"CDFG" : "mul_11_Pipeline_VITIS_LOOP_38_193",
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
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_38_193_fu_69.partset_512ns_512ns_64ns_32ns_512_1_1_U1698", "Parent" : "225"},
	{"ID" : "227", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_38_193_fu_69.flow_control_loop_pipe_sequential_init_U", "Parent" : "225"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_85_2_fu_76", "Parent" : "217", "Child" : ["229"],
		"CDFG" : "mul_11_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "229", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_85_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "228"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_84", "Parent" : "217", "Child" : ["231", "232"],
		"CDFG" : "mul_11_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
			{"Name" : "p_reload82", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_3_VITIS_LOOP_105_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_84.mul_64ns_64ns_128_1_1_U1703", "Parent" : "230"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_mul_11_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "230"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_convert_blocks_to_digits_fu_92", "Parent" : "217", "Child" : ["234", "236"],
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
					{"ID" : "236", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "236", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "236", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "236", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "233", "Child" : ["235"],
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
	{"ID" : "235", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "234"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "233", "Child" : ["237"],
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
	{"ID" : "237", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_12_fu_96.grp_mul_11_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "236"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1_fu_110", "Parent" : "186", "Child" : ["239"],
		"CDFG" : "fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1",
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
			{"Name" : "a_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1154_fu_123", "Parent" : "186", "Child" : ["241"],
		"CDFG" : "fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1154",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1154_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_172_1_fu_132", "Parent" : "186", "Child" : ["243"],
		"CDFG" : "fp2mul503_mont_13_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_172_1_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "242"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_199_1_fu_142", "Parent" : "186", "Child" : ["245", "246"],
		"CDFG" : "fp2mul503_mont_13_Pipeline_VITIS_LOOP_199_1",
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
			{"Name" : "sext_ln191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_199_1_fu_142.p503_1_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_199_1_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1155_fu_150", "Parent" : "186", "Child" : ["248"],
		"CDFG" : "fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1155",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1155_fu_150.flow_control_loop_pipe_sequential_init_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158", "Parent" : "186", "Child" : ["250", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "270", "275", "280", "285", "290"],
		"CDFG" : "rdc_mont",
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
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "250", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "249", "Child" : ["251"],
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
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_is_digit_lessthan_ct_fu_292", "Parent" : "249",
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
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_is_digit_lessthan_ct_fu_299", "Parent" : "249",
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
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_is_digit_lessthan_ct_fu_306", "Parent" : "249",
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
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_is_digit_lessthan_ct_fu_312", "Parent" : "249",
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
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_is_digit_lessthan_ct_fu_318", "Parent" : "249",
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
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_is_digit_lessthan_ct_fu_325", "Parent" : "249",
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
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_is_digit_lessthan_ct_fu_332", "Parent" : "249",
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
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_is_digit_lessthan_ct_fu_338", "Parent" : "249",
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
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_is_digit_lessthan_ct_fu_345", "Parent" : "249",
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
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_is_digit_lessthan_ct_fu_354", "Parent" : "249",
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
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_is_digit_lessthan_ct_fu_361", "Parent" : "249",
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
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.tmp_909_is_digit_lessthan_ct_fu_367", "Parent" : "249",
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
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.tmp_910_is_digit_lessthan_ct_fu_374", "Parent" : "249",
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
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_381", "Parent" : "249", "Child" : ["266", "267", "268", "269"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "266", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U266", "Parent" : "265"},
	{"ID" : "267", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U267", "Parent" : "265"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U268", "Parent" : "265"},
	{"ID" : "269", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U269", "Parent" : "265"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_388", "Parent" : "249", "Child" : ["271", "272", "273", "274"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U266", "Parent" : "270"},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U267", "Parent" : "270"},
	{"ID" : "273", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U268", "Parent" : "270"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U269", "Parent" : "270"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_395", "Parent" : "249", "Child" : ["276", "277", "278", "279"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "276", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U266", "Parent" : "275"},
	{"ID" : "277", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U267", "Parent" : "275"},
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U268", "Parent" : "275"},
	{"ID" : "279", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U269", "Parent" : "275"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_402", "Parent" : "249", "Child" : ["281", "282", "283", "284"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U266", "Parent" : "280"},
	{"ID" : "282", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U267", "Parent" : "280"},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U268", "Parent" : "280"},
	{"ID" : "284", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U269", "Parent" : "280"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_409", "Parent" : "249", "Child" : ["286", "287", "288", "289"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U266", "Parent" : "285"},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U267", "Parent" : "285"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U268", "Parent" : "285"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U269", "Parent" : "285"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_416", "Parent" : "249", "Child" : ["291", "292", "293", "294"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U266", "Parent" : "290"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U267", "Parent" : "290"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U268", "Parent" : "290"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_fu_158.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U269", "Parent" : "290"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165", "Parent" : "186", "Child" : ["296"],
		"CDFG" : "mp_mul_586",
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
					{"ID" : "296", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20", "Parent" : "295", "Child" : ["297", "298", "299", "301", "304", "307", "309", "312"],
		"CDFG" : "mul_491",
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
					{"ID" : "301", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "299", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "312", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "299", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "312", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.acc_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.acc_1_U", "Parent" : "296"},
	{"ID" : "299", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "296", "Child" : ["300"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "300", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "299"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "296", "Child" : ["302", "303"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_1",
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
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "301"},
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "301"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "296", "Child" : ["305", "306"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_184",
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
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "304"},
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "304"},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "296", "Child" : ["308"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "296", "Child" : ["310", "311"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "309"},
	{"ID" : "311", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "309"},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "296", "Child" : ["313", "315"],
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
					{"ID" : "315", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "315", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "315", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "313", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "315", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "312", "Child" : ["314"],
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
	{"ID" : "314", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "313"},
	{"ID" : "315", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "312", "Child" : ["316"],
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
	{"ID" : "316", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_mp_mul_586_fu_165.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "315"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_172_1156_fu_173", "Parent" : "186", "Child" : ["318"],
		"CDFG" : "fp2mul503_mont_13_Pipeline_VITIS_LOOP_172_1156",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_fp2mul503_mont_13_Pipeline_VITIS_LOOP_172_1156_fu_173.flow_control_loop_pipe_sequential_init_U", "Parent" : "317"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181", "Parent" : "186", "Child" : ["320", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "340", "345", "350", "355", "360"],
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
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "320", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "319", "Child" : ["321"],
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
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_is_digit_lessthan_ct_fu_283", "Parent" : "319",
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
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_is_digit_lessthan_ct_fu_290", "Parent" : "319",
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
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_is_digit_lessthan_ct_fu_297", "Parent" : "319",
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
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_is_digit_lessthan_ct_fu_303", "Parent" : "319",
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
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_is_digit_lessthan_ct_fu_309", "Parent" : "319",
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
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_is_digit_lessthan_ct_fu_316", "Parent" : "319",
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
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_is_digit_lessthan_ct_fu_323", "Parent" : "319",
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
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_is_digit_lessthan_ct_fu_329", "Parent" : "319",
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
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_is_digit_lessthan_ct_fu_336", "Parent" : "319",
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
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_is_digit_lessthan_ct_fu_345", "Parent" : "319",
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
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_is_digit_lessthan_ct_fu_352", "Parent" : "319",
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
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.tmp_693_is_digit_lessthan_ct_fu_358", "Parent" : "319",
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
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.tmp_694_is_digit_lessthan_ct_fu_365", "Parent" : "319",
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
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_372", "Parent" : "319", "Child" : ["336", "337", "338", "339"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "335"},
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "335"},
	{"ID" : "338", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "335"},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "335"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_379", "Parent" : "319", "Child" : ["341", "342", "343", "344"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "340"},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "340"},
	{"ID" : "343", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "340"},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "340"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_386", "Parent" : "319", "Child" : ["346", "347", "348", "349"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "345"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "345"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "345"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "345"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_393", "Parent" : "319", "Child" : ["351", "352", "353", "354"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "350"},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "350"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "350"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "350"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_400", "Parent" : "319", "Child" : ["356", "357", "358", "359"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "355"},
	{"ID" : "357", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "355"},
	{"ID" : "358", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "355"},
	{"ID" : "359", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "355"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_407", "Parent" : "319", "Child" : ["361", "362", "363", "364"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "361", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "360"},
	{"ID" : "362", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "360"},
	{"ID" : "363", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "360"},
	{"ID" : "364", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_13_fu_464.grp_rdc_mont_1_fu_181.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "360"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482", "Parent" : "0", "Child" : ["366", "367", "368", "369", "370", "371", "372", "373", "395", "417", "419", "421", "423", "426", "428", "431", "453", "455", "458", "463", "468", "473", "478", "483", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500"],
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
					{"ID" : "373", "SubInstance" : "grp_mp_mul_1_fu_76", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "417", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1_fu_100", "Port" : "a_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "395", "SubInstance" : "grp_mp_mul_1_fu_88", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "417", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1_fu_100", "Port" : "a_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_mp_mul_1_fu_76", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "419", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1106_fu_109", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "395", "SubInstance" : "grp_mp_mul_1_fu_88", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "419", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1106_fu_109", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "428", "SubInstance" : "grp_rdc_mont_126_fu_144", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "455", "SubInstance" : "grp_rdc_mont_5_fu_167", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "423", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_199_1_fu_128", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.t1_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.t2_U", "Parent" : "365"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.tt1_U", "Parent" : "365"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.tt1_1_U", "Parent" : "365"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.tt2_U", "Parent" : "365"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.tt2_1_U", "Parent" : "365"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.tt3_U", "Parent" : "365"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76", "Parent" : "365", "Child" : ["374"],
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
					{"ID" : "374", "SubInstance" : "grp_mul_1_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "374", "SubInstance" : "grp_mul_1_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "374", "SubInstance" : "grp_mul_1_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "374", "SubInstance" : "grp_mul_1_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20", "Parent" : "373", "Child" : ["375", "376", "377", "379", "382", "385", "387", "390"],
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
					{"ID" : "379", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "382", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "377", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "390", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "377", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "390", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "375", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.acc_U", "Parent" : "374"},
	{"ID" : "376", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.acc_1_U", "Parent" : "374"},
	{"ID" : "377", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "374", "Child" : ["378"],
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
	{"ID" : "378", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "377"},
	{"ID" : "379", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "374", "Child" : ["380", "381"],
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
	{"ID" : "380", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U333", "Parent" : "379"},
	{"ID" : "381", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "379"},
	{"ID" : "382", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_65", "Parent" : "374", "Child" : ["383", "384"],
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
	{"ID" : "383", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U336", "Parent" : "382"},
	{"ID" : "384", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "382"},
	{"ID" : "385", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "374", "Child" : ["386"],
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
	{"ID" : "386", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "374", "Child" : ["388", "389"],
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
	{"ID" : "388", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U341", "Parent" : "387"},
	{"ID" : "389", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "387"},
	{"ID" : "390", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "374", "Child" : ["391", "393"],
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
					{"ID" : "393", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "393", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "391", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "393", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "391", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "393", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "391", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "390", "Child" : ["392"],
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
	{"ID" : "392", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "391"},
	{"ID" : "393", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "390", "Child" : ["394"],
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
	{"ID" : "394", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_76.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "393"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88", "Parent" : "365", "Child" : ["396"],
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
					{"ID" : "396", "SubInstance" : "grp_mul_1_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "396", "SubInstance" : "grp_mul_1_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "396", "SubInstance" : "grp_mul_1_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "396", "SubInstance" : "grp_mul_1_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20", "Parent" : "395", "Child" : ["397", "398", "399", "401", "404", "407", "409", "412"],
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
					{"ID" : "401", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "404", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "399", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "412", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "399", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "412", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.acc_U", "Parent" : "396"},
	{"ID" : "398", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.acc_1_U", "Parent" : "396"},
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "396", "Child" : ["400"],
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
	{"ID" : "400", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "396", "Child" : ["402", "403"],
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
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U333", "Parent" : "401"},
	{"ID" : "403", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "401"},
	{"ID" : "404", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_65", "Parent" : "396", "Child" : ["405", "406"],
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
	{"ID" : "405", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U336", "Parent" : "404"},
	{"ID" : "406", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_38_194_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "404"},
	{"ID" : "407", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "396", "Child" : ["408"],
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
	{"ID" : "408", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "407"},
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "396", "Child" : ["410", "411"],
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
	{"ID" : "410", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U341", "Parent" : "409"},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_mul_1_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "409"},
	{"ID" : "412", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "396", "Child" : ["413", "415"],
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
					{"ID" : "415", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "415", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "413", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "415", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "413", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "415", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "413", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "412", "Child" : ["414"],
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
	{"ID" : "414", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "413"},
	{"ID" : "415", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "412", "Child" : ["416"],
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
	{"ID" : "416", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_1_fu_88.grp_mul_1_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "415"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1_fu_100", "Parent" : "365", "Child" : ["418"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1106_fu_109", "Parent" : "365", "Child" : ["420"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1106",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1106_fu_109.flow_control_loop_pipe_sequential_init_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_172_1_fu_118", "Parent" : "365", "Child" : ["422"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_172_1_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "421"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_199_1_fu_128", "Parent" : "365", "Child" : ["424", "425"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_199_1",
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
			{"Name" : "sext_ln191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_199_1_fu_128.p503_1_U", "Parent" : "423"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_199_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "423"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1107_fu_136", "Parent" : "365", "Child" : ["427"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1107",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1107_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_rdc_mont_126_fu_144", "Parent" : "365", "Child" : ["429"],
		"CDFG" : "rdc_mont_126",
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
					{"ID" : "429", "SubInstance" : "grp_rdc_mont_126_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_rdc_mont_126_fu_144.grp_rdc_mont_126_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "428", "Child" : ["430"],
		"CDFG" : "rdc_mont_126_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "430", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_rdc_mont_126_fu_144.grp_rdc_mont_126_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151", "Parent" : "365", "Child" : ["432"],
		"CDFG" : "mp_mul_586",
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
					{"ID" : "432", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20", "Parent" : "431", "Child" : ["433", "434", "435", "437", "440", "443", "445", "448"],
		"CDFG" : "mul_491",
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
					{"ID" : "437", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "440", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "448", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "435", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "448", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "433", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.acc_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.acc_1_U", "Parent" : "432"},
	{"ID" : "435", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "432", "Child" : ["436"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "436", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "435"},
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "432", "Child" : ["438", "439"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_1",
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
	{"ID" : "438", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "437"},
	{"ID" : "439", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "437"},
	{"ID" : "440", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "432", "Child" : ["441", "442"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_184",
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
	{"ID" : "441", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "440"},
	{"ID" : "442", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "440"},
	{"ID" : "443", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "432", "Child" : ["444"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "444", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "443"},
	{"ID" : "445", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "432", "Child" : ["446", "447"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "446", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "445"},
	{"ID" : "447", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "445"},
	{"ID" : "448", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "432", "Child" : ["449", "451"],
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
					{"ID" : "451", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "451", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "451", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "451", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "449", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "448", "Child" : ["450"],
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
	{"ID" : "450", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "449"},
	{"ID" : "451", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "448", "Child" : ["452"],
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
	{"ID" : "452", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_mp_mul_586_fu_151.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "451"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_172_1108_fu_159", "Parent" : "365", "Child" : ["454"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_172_1108",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_172_1108_fu_159.flow_control_loop_pipe_sequential_init_U", "Parent" : "453"},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_rdc_mont_5_fu_167", "Parent" : "365", "Child" : ["456"],
		"CDFG" : "rdc_mont_5",
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
					{"ID" : "456", "SubInstance" : "grp_rdc_mont_5_Pipeline_VITIS_LOOP_306_1_fu_293", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_rdc_mont_5_fu_167.grp_rdc_mont_5_Pipeline_VITIS_LOOP_306_1_fu_293", "Parent" : "455", "Child" : ["457"],
		"CDFG" : "rdc_mont_5_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "457", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_rdc_mont_5_fu_167.grp_rdc_mont_5_Pipeline_VITIS_LOOP_306_1_fu_293.flow_control_loop_pipe_sequential_init_U", "Parent" : "456"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_188", "Parent" : "365", "Child" : ["459", "460", "461", "462"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_188.mul_32ns_32ns_64_1_1_U266", "Parent" : "458"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_188.mul_32ns_32ns_64_1_1_U267", "Parent" : "458"},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_188.mul_32ns_32ns_64_1_1_U268", "Parent" : "458"},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_188.mul_32ns_32ns_64_1_1_U269", "Parent" : "458"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_193", "Parent" : "365", "Child" : ["464", "465", "466", "467"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_193.mul_32ns_32ns_64_1_1_U266", "Parent" : "463"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_193.mul_32ns_32ns_64_1_1_U267", "Parent" : "463"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_193.mul_32ns_32ns_64_1_1_U268", "Parent" : "463"},
	{"ID" : "467", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_193.mul_32ns_32ns_64_1_1_U269", "Parent" : "463"},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_198", "Parent" : "365", "Child" : ["469", "470", "471", "472"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_198.mul_32ns_32ns_64_1_1_U266", "Parent" : "468"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_198.mul_32ns_32ns_64_1_1_U267", "Parent" : "468"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_198.mul_32ns_32ns_64_1_1_U268", "Parent" : "468"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_198.mul_32ns_32ns_64_1_1_U269", "Parent" : "468"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_203", "Parent" : "365", "Child" : ["474", "475", "476", "477"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_203.mul_32ns_32ns_64_1_1_U266", "Parent" : "473"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_203.mul_32ns_32ns_64_1_1_U267", "Parent" : "473"},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_203.mul_32ns_32ns_64_1_1_U268", "Parent" : "473"},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_203.mul_32ns_32ns_64_1_1_U269", "Parent" : "473"},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_208", "Parent" : "365", "Child" : ["479", "480", "481", "482"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_208.mul_32ns_32ns_64_1_1_U266", "Parent" : "478"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_208.mul_32ns_32ns_64_1_1_U267", "Parent" : "478"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_208.mul_32ns_32ns_64_1_1_U268", "Parent" : "478"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_208.mul_32ns_32ns_64_1_1_U269", "Parent" : "478"},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_213", "Parent" : "365", "Child" : ["484", "485", "486", "487"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_213.mul_32ns_32ns_64_1_1_U266", "Parent" : "483"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_213.mul_32ns_32ns_64_1_1_U267", "Parent" : "483"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_213.mul_32ns_32ns_64_1_1_U268", "Parent" : "483"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_digit_x_digit_fu_213.mul_32ns_32ns_64_1_1_U269", "Parent" : "483"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_is_digit_lessthan_ct_fu_218", "Parent" : "365",
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
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_is_digit_lessthan_ct_fu_223", "Parent" : "365",
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
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_is_digit_lessthan_ct_fu_228", "Parent" : "365",
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
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_is_digit_lessthan_ct_fu_233", "Parent" : "365",
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
	{"ID" : "492", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_is_digit_lessthan_ct_fu_238", "Parent" : "365",
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
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_is_digit_lessthan_ct_fu_243", "Parent" : "365",
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
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_is_digit_lessthan_ct_fu_248", "Parent" : "365",
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
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_is_digit_lessthan_ct_fu_253", "Parent" : "365",
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
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_is_digit_lessthan_ct_fu_258", "Parent" : "365",
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
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_is_digit_lessthan_ct_fu_263", "Parent" : "365",
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
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.grp_is_digit_lessthan_ct_fu_268", "Parent" : "365",
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
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.tmp_909_is_digit_lessthan_ct_fu_273", "Parent" : "365",
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
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_482.tmp_910_is_digit_lessthan_ct_fu_278", "Parent" : "365",
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
	{"ID" : "501", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_272_fu_493", "Parent" : "0", "Child" : ["502", "504"],
		"CDFG" : "fpsub503_4_272",
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
					{"ID" : "502", "SubInstance" : "grp_fpsub503_4_272_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "504", "SubInstance" : "grp_fpsub503_4_272_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "502", "SubInstance" : "grp_fpsub503_4_272_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "grp_fpsub503_4_272_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_272_fu_493.grp_fpsub503_4_272_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "501", "Child" : ["503"],
		"CDFG" : "fpsub503_4_272_Pipeline_VITIS_LOOP_61_1",
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
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_272_fu_493.grp_fpsub503_4_272_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "502"},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_272_fu_493.grp_fpsub503_4_272_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "501", "Child" : ["505", "506"],
		"CDFG" : "fpsub503_4_272_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_272_fu_493.grp_fpsub503_4_272_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "504"},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_272_fu_493.grp_fpsub503_4_272_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "504"},
	{"ID" : "507", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_272_fu_501", "Parent" : "0", "Child" : ["508", "510"],
		"CDFG" : "fpsub503_4_272",
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
					{"ID" : "508", "SubInstance" : "grp_fpsub503_4_272_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "510", "SubInstance" : "grp_fpsub503_4_272_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "508", "SubInstance" : "grp_fpsub503_4_272_Pipeline_VITIS_LOOP_61_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "510", "SubInstance" : "grp_fpsub503_4_272_Pipeline_VITIS_LOOP_68_2_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "508", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_272_fu_501.grp_fpsub503_4_272_Pipeline_VITIS_LOOP_61_1_fu_26", "Parent" : "507", "Child" : ["509"],
		"CDFG" : "fpsub503_4_272_Pipeline_VITIS_LOOP_61_1",
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
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_272_fu_501.grp_fpsub503_4_272_Pipeline_VITIS_LOOP_61_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "508"},
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_272_fu_501.grp_fpsub503_4_272_Pipeline_VITIS_LOOP_68_2_fu_35", "Parent" : "507", "Child" : ["511", "512"],
		"CDFG" : "fpsub503_4_272_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_272_fu_501.grp_fpsub503_4_272_Pipeline_VITIS_LOOP_68_2_fu_35.p503x2_1_U", "Parent" : "510"},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_4_272_fu_501.grp_fpsub503_4_272_Pipeline_VITIS_LOOP_68_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "510"},
	{"ID" : "513", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509", "Parent" : "0", "Child" : ["514", "515", "516", "517", "518", "519", "520", "521", "543", "565", "567", "569", "571", "574", "576", "622", "624"],
		"CDFG" : "fp2mul503_mont_625",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "733", "EstimateLatencyMax" : "733",
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
					{"ID" : "521", "SubInstance" : "grp_mp_mul_586_fu_76", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "565", "SubInstance" : "grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1_fu_100", "Port" : "a_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "543", "SubInstance" : "grp_mp_mul_586_fu_88", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "565", "SubInstance" : "grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1_fu_100", "Port" : "a_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "521", "SubInstance" : "grp_mp_mul_586_fu_76", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "567", "SubInstance" : "grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1112_fu_109", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "543", "SubInstance" : "grp_mp_mul_586_fu_88", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "567", "SubInstance" : "grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1112_fu_109", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "576", "SubInstance" : "grp_rdc_mont_127_fu_144", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "624", "SubInstance" : "grp_rdc_mont_6_fu_159", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "571", "SubInstance" : "grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_199_1_fu_128", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "514", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.t1_U", "Parent" : "513"},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.t2_U", "Parent" : "513"},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.tt1_U", "Parent" : "513"},
	{"ID" : "517", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.tt1_1_U", "Parent" : "513"},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.tt2_U", "Parent" : "513"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.tt2_1_U", "Parent" : "513"},
	{"ID" : "520", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.tt3_U", "Parent" : "513"},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76", "Parent" : "513", "Child" : ["522"],
		"CDFG" : "mp_mul_586",
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
					{"ID" : "522", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "522", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "522", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "522", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20", "Parent" : "521", "Child" : ["523", "524", "525", "527", "530", "533", "535", "538"],
		"CDFG" : "mul_491",
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
					{"ID" : "527", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "530", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "525", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "538", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "525", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "538", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "523", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.acc_U", "Parent" : "522"},
	{"ID" : "524", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.acc_1_U", "Parent" : "522"},
	{"ID" : "525", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "522", "Child" : ["526"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "526", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "525"},
	{"ID" : "527", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "522", "Child" : ["528", "529"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_1",
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
	{"ID" : "528", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "527"},
	{"ID" : "529", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "527"},
	{"ID" : "530", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "522", "Child" : ["531", "532"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_184",
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
	{"ID" : "531", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "530"},
	{"ID" : "532", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "530"},
	{"ID" : "533", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "522", "Child" : ["534"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "534", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "533"},
	{"ID" : "535", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "522", "Child" : ["536", "537"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "536", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "535"},
	{"ID" : "537", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "535"},
	{"ID" : "538", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "522", "Child" : ["539", "541"],
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
					{"ID" : "541", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "541", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "539", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "541", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "539", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "541", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "539", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "538", "Child" : ["540"],
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
	{"ID" : "540", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "539"},
	{"ID" : "541", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "538", "Child" : ["542"],
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
	{"ID" : "542", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_76.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "541"},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88", "Parent" : "513", "Child" : ["544"],
		"CDFG" : "mp_mul_586",
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
					{"ID" : "544", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "544", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "544", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "544", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20", "Parent" : "543", "Child" : ["545", "546", "547", "549", "552", "555", "557", "560"],
		"CDFG" : "mul_491",
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
					{"ID" : "549", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "552", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "547", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "560", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "547", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "560", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "545", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.acc_U", "Parent" : "544"},
	{"ID" : "546", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.acc_1_U", "Parent" : "544"},
	{"ID" : "547", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "544", "Child" : ["548"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "548", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "547"},
	{"ID" : "549", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "544", "Child" : ["550", "551"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_1",
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
	{"ID" : "550", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "549"},
	{"ID" : "551", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "549"},
	{"ID" : "552", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "544", "Child" : ["553", "554"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_184",
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
	{"ID" : "553", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "552"},
	{"ID" : "554", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "552"},
	{"ID" : "555", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "544", "Child" : ["556"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "556", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "555"},
	{"ID" : "557", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "544", "Child" : ["558", "559"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "558", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "557"},
	{"ID" : "559", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "557"},
	{"ID" : "560", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "544", "Child" : ["561", "563"],
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
					{"ID" : "563", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "563", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "561", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "563", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "561", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "563", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "561", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "560", "Child" : ["562"],
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
	{"ID" : "562", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "561"},
	{"ID" : "563", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "560", "Child" : ["564"],
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
	{"ID" : "564", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_mp_mul_586_fu_88.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "563"},
	{"ID" : "565", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1_fu_100", "Parent" : "513", "Child" : ["566"],
		"CDFG" : "fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "566", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "565"},
	{"ID" : "567", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1112_fu_109", "Parent" : "513", "Child" : ["568"],
		"CDFG" : "fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1112",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "568", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1112_fu_109.flow_control_loop_pipe_sequential_init_U", "Parent" : "567"},
	{"ID" : "569", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_172_1_fu_118", "Parent" : "513", "Child" : ["570"],
		"CDFG" : "fp2mul503_mont_625_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "570", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_172_1_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "569"},
	{"ID" : "571", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_199_1_fu_128", "Parent" : "513", "Child" : ["572", "573"],
		"CDFG" : "fp2mul503_mont_625_Pipeline_VITIS_LOOP_199_1",
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
			{"Name" : "sext_ln191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "572", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_199_1_fu_128.p503_1_U", "Parent" : "571"},
	{"ID" : "573", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_199_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "571"},
	{"ID" : "574", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1113_fu_136", "Parent" : "513", "Child" : ["575"],
		"CDFG" : "fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1113",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "575", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1113_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "574"},
	{"ID" : "576", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144", "Parent" : "513", "Child" : ["577", "579", "580", "581", "582", "583", "584", "585", "586", "587", "588", "589", "590", "591", "592", "597", "602", "607", "612", "617"],
		"CDFG" : "rdc_mont_127",
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
					{"ID" : "577", "SubInstance" : "grp_rdc_mont_127_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "577", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_rdc_mont_127_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "576", "Child" : ["578"],
		"CDFG" : "rdc_mont_127_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "578", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_rdc_mont_127_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "577"},
	{"ID" : "579", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_is_digit_lessthan_ct_fu_292", "Parent" : "576",
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
	{"ID" : "580", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_is_digit_lessthan_ct_fu_299", "Parent" : "576",
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
	{"ID" : "581", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_is_digit_lessthan_ct_fu_306", "Parent" : "576",
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
	{"ID" : "582", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_is_digit_lessthan_ct_fu_312", "Parent" : "576",
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
	{"ID" : "583", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_is_digit_lessthan_ct_fu_318", "Parent" : "576",
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
	{"ID" : "584", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_is_digit_lessthan_ct_fu_325", "Parent" : "576",
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
	{"ID" : "585", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_is_digit_lessthan_ct_fu_332", "Parent" : "576",
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
	{"ID" : "586", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_is_digit_lessthan_ct_fu_338", "Parent" : "576",
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
	{"ID" : "587", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_is_digit_lessthan_ct_fu_345", "Parent" : "576",
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
	{"ID" : "588", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_is_digit_lessthan_ct_fu_354", "Parent" : "576",
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
	{"ID" : "589", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_is_digit_lessthan_ct_fu_361", "Parent" : "576",
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
	{"ID" : "590", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.tmp_907_is_digit_lessthan_ct_fu_367", "Parent" : "576",
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
	{"ID" : "591", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.tmp_908_is_digit_lessthan_ct_fu_374", "Parent" : "576",
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
	{"ID" : "592", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_381", "Parent" : "576", "Child" : ["593", "594", "595", "596"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "593", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U266", "Parent" : "592"},
	{"ID" : "594", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U267", "Parent" : "592"},
	{"ID" : "595", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U268", "Parent" : "592"},
	{"ID" : "596", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U269", "Parent" : "592"},
	{"ID" : "597", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_388", "Parent" : "576", "Child" : ["598", "599", "600", "601"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "598", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U266", "Parent" : "597"},
	{"ID" : "599", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U267", "Parent" : "597"},
	{"ID" : "600", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U268", "Parent" : "597"},
	{"ID" : "601", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U269", "Parent" : "597"},
	{"ID" : "602", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_395", "Parent" : "576", "Child" : ["603", "604", "605", "606"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "603", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U266", "Parent" : "602"},
	{"ID" : "604", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U267", "Parent" : "602"},
	{"ID" : "605", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U268", "Parent" : "602"},
	{"ID" : "606", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U269", "Parent" : "602"},
	{"ID" : "607", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_402", "Parent" : "576", "Child" : ["608", "609", "610", "611"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "608", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U266", "Parent" : "607"},
	{"ID" : "609", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U267", "Parent" : "607"},
	{"ID" : "610", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U268", "Parent" : "607"},
	{"ID" : "611", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U269", "Parent" : "607"},
	{"ID" : "612", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_409", "Parent" : "576", "Child" : ["613", "614", "615", "616"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "613", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U266", "Parent" : "612"},
	{"ID" : "614", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U267", "Parent" : "612"},
	{"ID" : "615", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U268", "Parent" : "612"},
	{"ID" : "616", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U269", "Parent" : "612"},
	{"ID" : "617", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_416", "Parent" : "576", "Child" : ["618", "619", "620", "621"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "618", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U266", "Parent" : "617"},
	{"ID" : "619", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U267", "Parent" : "617"},
	{"ID" : "620", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U268", "Parent" : "617"},
	{"ID" : "621", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_127_fu_144.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U269", "Parent" : "617"},
	{"ID" : "622", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_172_1114_fu_151", "Parent" : "513", "Child" : ["623"],
		"CDFG" : "fp2mul503_mont_625_Pipeline_VITIS_LOOP_172_1114",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "623", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_fp2mul503_mont_625_Pipeline_VITIS_LOOP_172_1114_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "622"},
	{"ID" : "624", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159", "Parent" : "513", "Child" : ["625", "627", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "645", "650", "655", "660", "665"],
		"CDFG" : "rdc_mont_6",
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
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "625", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "625", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "624", "Child" : ["626"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "626", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "625"},
	{"ID" : "627", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_is_digit_lessthan_ct_fu_283", "Parent" : "624",
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
	{"ID" : "628", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_is_digit_lessthan_ct_fu_290", "Parent" : "624",
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
	{"ID" : "629", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_is_digit_lessthan_ct_fu_297", "Parent" : "624",
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
	{"ID" : "630", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_is_digit_lessthan_ct_fu_303", "Parent" : "624",
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
	{"ID" : "631", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_is_digit_lessthan_ct_fu_309", "Parent" : "624",
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
	{"ID" : "632", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_is_digit_lessthan_ct_fu_316", "Parent" : "624",
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
	{"ID" : "633", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_is_digit_lessthan_ct_fu_323", "Parent" : "624",
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
	{"ID" : "634", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_is_digit_lessthan_ct_fu_329", "Parent" : "624",
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
	{"ID" : "635", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_is_digit_lessthan_ct_fu_336", "Parent" : "624",
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
	{"ID" : "636", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_is_digit_lessthan_ct_fu_345", "Parent" : "624",
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
	{"ID" : "637", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_is_digit_lessthan_ct_fu_352", "Parent" : "624",
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
	{"ID" : "638", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.tmp_44_is_digit_lessthan_ct_fu_358", "Parent" : "624",
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
	{"ID" : "639", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.tmp_45_is_digit_lessthan_ct_fu_365", "Parent" : "624",
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
	{"ID" : "640", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_372", "Parent" : "624", "Child" : ["641", "642", "643", "644"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "641", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "640"},
	{"ID" : "642", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "640"},
	{"ID" : "643", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "640"},
	{"ID" : "644", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "640"},
	{"ID" : "645", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_379", "Parent" : "624", "Child" : ["646", "647", "648", "649"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "646", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "645"},
	{"ID" : "647", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "645"},
	{"ID" : "648", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "645"},
	{"ID" : "649", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "645"},
	{"ID" : "650", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_386", "Parent" : "624", "Child" : ["651", "652", "653", "654"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "651", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "650"},
	{"ID" : "652", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "650"},
	{"ID" : "653", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "650"},
	{"ID" : "654", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "650"},
	{"ID" : "655", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_393", "Parent" : "624", "Child" : ["656", "657", "658", "659"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "656", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "655"},
	{"ID" : "657", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "655"},
	{"ID" : "658", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "655"},
	{"ID" : "659", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "655"},
	{"ID" : "660", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_400", "Parent" : "624", "Child" : ["661", "662", "663", "664"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "661", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "660"},
	{"ID" : "662", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "660"},
	{"ID" : "663", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "660"},
	{"ID" : "664", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "660"},
	{"ID" : "665", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_407", "Parent" : "624", "Child" : ["666", "667", "668", "669"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "666", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "665"},
	{"ID" : "667", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "665"},
	{"ID" : "668", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "665"},
	{"ID" : "669", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_625_fu_509.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "665"},
	{"ID" : "670", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_523", "Parent" : "0", "Child" : ["671", "673", "676"],
		"CDFG" : "fpadd503_246",
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
					{"ID" : "671", "SubInstance" : "grp_fpadd503_246_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "673", "SubInstance" : "grp_fpadd503_246_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "676", "SubInstance" : "grp_fpadd503_246_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "671", "SubInstance" : "grp_fpadd503_246_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "673", "SubInstance" : "grp_fpadd503_246_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "676", "SubInstance" : "grp_fpadd503_246_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "671", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_523.grp_fpadd503_246_Pipeline_VITIS_LOOP_33_1_fu_26", "Parent" : "670", "Child" : ["672"],
		"CDFG" : "fpadd503_246_Pipeline_VITIS_LOOP_33_1",
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
	{"ID" : "672", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_523.grp_fpadd503_246_Pipeline_VITIS_LOOP_33_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "671"},
	{"ID" : "673", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_523.grp_fpadd503_246_Pipeline_VITIS_LOOP_39_2_fu_34", "Parent" : "670", "Child" : ["674", "675"],
		"CDFG" : "fpadd503_246_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "674", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_523.grp_fpadd503_246_Pipeline_VITIS_LOOP_39_2_fu_34.p503x2_1_U", "Parent" : "673"},
	{"ID" : "675", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_523.grp_fpadd503_246_Pipeline_VITIS_LOOP_39_2_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "673"},
	{"ID" : "676", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_523.grp_fpadd503_246_Pipeline_VITIS_LOOP_46_3_fu_43", "Parent" : "670", "Child" : ["677", "678"],
		"CDFG" : "fpadd503_246_Pipeline_VITIS_LOOP_46_3",
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
	{"ID" : "677", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_523.grp_fpadd503_246_Pipeline_VITIS_LOOP_46_3_fu_43.p503x2_1_U", "Parent" : "676"},
	{"ID" : "678", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_523.grp_fpadd503_246_Pipeline_VITIS_LOOP_46_3_fu_43.flow_control_loop_pipe_sequential_init_U", "Parent" : "676"},
	{"ID" : "679", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_531", "Parent" : "0", "Child" : ["680", "682", "685"],
		"CDFG" : "fpadd503_246",
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
					{"ID" : "680", "SubInstance" : "grp_fpadd503_246_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "682", "SubInstance" : "grp_fpadd503_246_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "685", "SubInstance" : "grp_fpadd503_246_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "680", "SubInstance" : "grp_fpadd503_246_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "682", "SubInstance" : "grp_fpadd503_246_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "685", "SubInstance" : "grp_fpadd503_246_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "680", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_531.grp_fpadd503_246_Pipeline_VITIS_LOOP_33_1_fu_26", "Parent" : "679", "Child" : ["681"],
		"CDFG" : "fpadd503_246_Pipeline_VITIS_LOOP_33_1",
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
	{"ID" : "681", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_531.grp_fpadd503_246_Pipeline_VITIS_LOOP_33_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "680"},
	{"ID" : "682", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_531.grp_fpadd503_246_Pipeline_VITIS_LOOP_39_2_fu_34", "Parent" : "679", "Child" : ["683", "684"],
		"CDFG" : "fpadd503_246_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "683", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_531.grp_fpadd503_246_Pipeline_VITIS_LOOP_39_2_fu_34.p503x2_1_U", "Parent" : "682"},
	{"ID" : "684", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_531.grp_fpadd503_246_Pipeline_VITIS_LOOP_39_2_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "682"},
	{"ID" : "685", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_531.grp_fpadd503_246_Pipeline_VITIS_LOOP_46_3_fu_43", "Parent" : "679", "Child" : ["686", "687"],
		"CDFG" : "fpadd503_246_Pipeline_VITIS_LOOP_46_3",
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
	{"ID" : "686", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_531.grp_fpadd503_246_Pipeline_VITIS_LOOP_46_3_fu_43.p503x2_1_U", "Parent" : "685"},
	{"ID" : "687", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_246_fu_531.grp_fpadd503_246_Pipeline_VITIS_LOOP_46_3_fu_43.flow_control_loop_pipe_sequential_init_U", "Parent" : "685"},
	{"ID" : "688", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539", "Parent" : "0", "Child" : ["689", "690", "691", "692", "693", "694", "695", "696", "718", "740", "742", "744", "746", "749", "751", "797", "819", "821"],
		"CDFG" : "fp2mul503_mont_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "689", "EstimateLatencyMax" : "689",
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
					{"ID" : "696", "SubInstance" : "grp_mp_mul_fu_74", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "740", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1_fu_98", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "751", "SubInstance" : "grp_rdc_mont_fu_142", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "718", "SubInstance" : "grp_mp_mul_fu_86", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "740", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1_fu_98", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "821", "SubInstance" : "grp_rdc_mont_1_fu_165", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "696", "SubInstance" : "grp_mp_mul_fu_74", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "742", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1133_fu_107", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "718", "SubInstance" : "grp_mp_mul_fu_86", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "742", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1133_fu_107", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "746", "SubInstance" : "grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_199_1_fu_126", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "689", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.t1_U", "Parent" : "688"},
	{"ID" : "690", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.t2_U", "Parent" : "688"},
	{"ID" : "691", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.tt1_U", "Parent" : "688"},
	{"ID" : "692", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.tt1_1_U", "Parent" : "688"},
	{"ID" : "693", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.tt2_U", "Parent" : "688"},
	{"ID" : "694", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.tt2_1_U", "Parent" : "688"},
	{"ID" : "695", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.tt3_U", "Parent" : "688"},
	{"ID" : "696", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74", "Parent" : "688", "Child" : ["697"],
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
					{"ID" : "697", "SubInstance" : "grp_mul_2_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "697", "SubInstance" : "grp_mul_2_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "697", "SubInstance" : "grp_mul_2_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "697", "SubInstance" : "grp_mul_2_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "697", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20", "Parent" : "696", "Child" : ["698", "699", "700", "702", "705", "708", "710", "713"],
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
					{"ID" : "702", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "705", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "700", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "713", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "700", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "713", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "698", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.acc_U", "Parent" : "697"},
	{"ID" : "699", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.acc_1_U", "Parent" : "697"},
	{"ID" : "700", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "697", "Child" : ["701"],
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
	{"ID" : "701", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "700"},
	{"ID" : "702", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "697", "Child" : ["703", "704"],
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
	{"ID" : "703", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U522", "Parent" : "702"},
	{"ID" : "704", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "702"},
	{"ID" : "705", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65", "Parent" : "697", "Child" : ["706", "707"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_38_191",
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
	{"ID" : "706", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U525", "Parent" : "705"},
	{"ID" : "707", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "705"},
	{"ID" : "708", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "697", "Child" : ["709"],
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
	{"ID" : "709", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "708"},
	{"ID" : "710", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "697", "Child" : ["711", "712"],
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
	{"ID" : "711", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U530", "Parent" : "710"},
	{"ID" : "712", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "710"},
	{"ID" : "713", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "697", "Child" : ["714", "716"],
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
					{"ID" : "716", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "716", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "714", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "716", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "714", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "716", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "714", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "713", "Child" : ["715"],
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
	{"ID" : "715", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "714"},
	{"ID" : "716", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "713", "Child" : ["717"],
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
	{"ID" : "717", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_74.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "716"},
	{"ID" : "718", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86", "Parent" : "688", "Child" : ["719"],
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
					{"ID" : "719", "SubInstance" : "grp_mul_2_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "719", "SubInstance" : "grp_mul_2_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "719", "SubInstance" : "grp_mul_2_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "719", "SubInstance" : "grp_mul_2_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "719", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20", "Parent" : "718", "Child" : ["720", "721", "722", "724", "727", "730", "732", "735"],
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
					{"ID" : "724", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "727", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "722", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "735", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "722", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "735", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "720", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.acc_U", "Parent" : "719"},
	{"ID" : "721", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.acc_1_U", "Parent" : "719"},
	{"ID" : "722", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "719", "Child" : ["723"],
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
	{"ID" : "723", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "722"},
	{"ID" : "724", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "719", "Child" : ["725", "726"],
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
	{"ID" : "725", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U522", "Parent" : "724"},
	{"ID" : "726", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "724"},
	{"ID" : "727", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65", "Parent" : "719", "Child" : ["728", "729"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_38_191",
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
	{"ID" : "728", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U525", "Parent" : "727"},
	{"ID" : "729", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_38_191_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "727"},
	{"ID" : "730", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "719", "Child" : ["731"],
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
	{"ID" : "731", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "730"},
	{"ID" : "732", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "719", "Child" : ["733", "734"],
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
	{"ID" : "733", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U530", "Parent" : "732"},
	{"ID" : "734", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_mul_2_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "732"},
	{"ID" : "735", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "719", "Child" : ["736", "738"],
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
					{"ID" : "738", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "738", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "736", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "738", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "736", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "738", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "736", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "735", "Child" : ["737"],
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
	{"ID" : "737", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "736"},
	{"ID" : "738", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "735", "Child" : ["739"],
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
	{"ID" : "739", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_fu_86.grp_mul_2_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "738"},
	{"ID" : "740", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1_fu_98", "Parent" : "688", "Child" : ["741"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "741", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "740"},
	{"ID" : "742", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1133_fu_107", "Parent" : "688", "Child" : ["743"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1133",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "743", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1133_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "742"},
	{"ID" : "744", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_172_1_fu_116", "Parent" : "688", "Child" : ["745"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "745", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_172_1_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "744"},
	{"ID" : "746", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_199_1_fu_126", "Parent" : "688", "Child" : ["747", "748"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_199_1",
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
			{"Name" : "sext_ln191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "747", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_199_1_fu_126.p503_1_U", "Parent" : "746"},
	{"ID" : "748", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_199_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "746"},
	{"ID" : "749", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1134_fu_134", "Parent" : "688", "Child" : ["750"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1134",
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
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "750", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1134_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "749"},
	{"ID" : "751", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142", "Parent" : "688", "Child" : ["752", "754", "755", "756", "757", "758", "759", "760", "761", "762", "763", "764", "765", "766", "767", "772", "777", "782", "787", "792"],
		"CDFG" : "rdc_mont",
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
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "752", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "752", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286", "Parent" : "751", "Child" : ["753"],
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
	{"ID" : "753", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "752"},
	{"ID" : "754", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_292", "Parent" : "751",
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
	{"ID" : "755", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_299", "Parent" : "751",
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
	{"ID" : "756", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_306", "Parent" : "751",
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
	{"ID" : "757", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_312", "Parent" : "751",
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
	{"ID" : "758", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_318", "Parent" : "751",
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
	{"ID" : "759", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_325", "Parent" : "751",
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
	{"ID" : "760", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_332", "Parent" : "751",
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
	{"ID" : "761", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_338", "Parent" : "751",
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
	{"ID" : "762", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_345", "Parent" : "751",
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
	{"ID" : "763", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_354", "Parent" : "751",
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
	{"ID" : "764", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_is_digit_lessthan_ct_fu_361", "Parent" : "751",
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
	{"ID" : "765", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.tmp_909_is_digit_lessthan_ct_fu_367", "Parent" : "751",
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
	{"ID" : "766", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.tmp_910_is_digit_lessthan_ct_fu_374", "Parent" : "751",
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
	{"ID" : "767", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381", "Parent" : "751", "Child" : ["768", "769", "770", "771"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "768", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U266", "Parent" : "767"},
	{"ID" : "769", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U267", "Parent" : "767"},
	{"ID" : "770", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U268", "Parent" : "767"},
	{"ID" : "771", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_381.mul_32ns_32ns_64_1_1_U269", "Parent" : "767"},
	{"ID" : "772", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388", "Parent" : "751", "Child" : ["773", "774", "775", "776"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "773", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U266", "Parent" : "772"},
	{"ID" : "774", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U267", "Parent" : "772"},
	{"ID" : "775", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U268", "Parent" : "772"},
	{"ID" : "776", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_388.mul_32ns_32ns_64_1_1_U269", "Parent" : "772"},
	{"ID" : "777", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395", "Parent" : "751", "Child" : ["778", "779", "780", "781"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "778", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U266", "Parent" : "777"},
	{"ID" : "779", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U267", "Parent" : "777"},
	{"ID" : "780", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U268", "Parent" : "777"},
	{"ID" : "781", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_395.mul_32ns_32ns_64_1_1_U269", "Parent" : "777"},
	{"ID" : "782", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402", "Parent" : "751", "Child" : ["783", "784", "785", "786"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "783", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U266", "Parent" : "782"},
	{"ID" : "784", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U267", "Parent" : "782"},
	{"ID" : "785", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U268", "Parent" : "782"},
	{"ID" : "786", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_402.mul_32ns_32ns_64_1_1_U269", "Parent" : "782"},
	{"ID" : "787", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409", "Parent" : "751", "Child" : ["788", "789", "790", "791"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "788", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U266", "Parent" : "787"},
	{"ID" : "789", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U267", "Parent" : "787"},
	{"ID" : "790", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U268", "Parent" : "787"},
	{"ID" : "791", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_409.mul_32ns_32ns_64_1_1_U269", "Parent" : "787"},
	{"ID" : "792", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416", "Parent" : "751", "Child" : ["793", "794", "795", "796"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "793", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U266", "Parent" : "792"},
	{"ID" : "794", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U267", "Parent" : "792"},
	{"ID" : "795", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U268", "Parent" : "792"},
	{"ID" : "796", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_fu_142.grp_digit_x_digit_fu_416.mul_32ns_32ns_64_1_1_U269", "Parent" : "792"},
	{"ID" : "797", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149", "Parent" : "688", "Child" : ["798"],
		"CDFG" : "mp_mul_586",
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
					{"ID" : "798", "SubInstance" : "grp_mul_491_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "798", "SubInstance" : "grp_mul_491_fu_20", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "798", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "798", "SubInstance" : "grp_mul_491_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "798", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20", "Parent" : "797", "Child" : ["799", "800", "801", "803", "806", "809", "811", "814"],
		"CDFG" : "mul_491",
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
					{"ID" : "803", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "806", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "801", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "814", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "801", "SubInstance" : "grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "814", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "799", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.acc_U", "Parent" : "798"},
	{"ID" : "800", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.acc_1_U", "Parent" : "798"},
	{"ID" : "801", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50", "Parent" : "798", "Child" : ["802"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_63_1",
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
	{"ID" : "802", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_63_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "801"},
	{"ID" : "803", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58", "Parent" : "798", "Child" : ["804", "805"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_1",
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
	{"ID" : "804", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U226", "Parent" : "803"},
	{"ID" : "805", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "803"},
	{"ID" : "806", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65", "Parent" : "798", "Child" : ["807", "808"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_38_184",
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
	{"ID" : "807", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U230", "Parent" : "806"},
	{"ID" : "808", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_38_184_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "806"},
	{"ID" : "809", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72", "Parent" : "798", "Child" : ["810"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_85_2",
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
	{"ID" : "810", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_85_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "809"},
	{"ID" : "811", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80", "Parent" : "798", "Child" : ["812", "813"],
		"CDFG" : "mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4",
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
	{"ID" : "812", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.mul_64ns_64ns_128_1_1_U235", "Parent" : "811"},
	{"ID" : "813", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "811"},
	{"ID" : "814", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "798", "Child" : ["815", "817"],
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
					{"ID" : "817", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "817", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "acc_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "815", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "817", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "815", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "817", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "815", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84", "Parent" : "814", "Child" : ["816"],
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
	{"ID" : "816", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_184_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "815"},
	{"ID" : "817", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92", "Parent" : "814", "Child" : ["818"],
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
	{"ID" : "818", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_mp_mul_586_fu_149.grp_mul_491_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_197_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "817"},
	{"ID" : "819", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_172_1135_fu_157", "Parent" : "688", "Child" : ["820"],
		"CDFG" : "fp2mul503_mont_5_Pipeline_VITIS_LOOP_172_1135",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "820", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_fp2mul503_mont_5_Pipeline_VITIS_LOOP_172_1135_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "819"},
	{"ID" : "821", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165", "Parent" : "688", "Child" : ["822", "824", "825", "826", "827", "828", "829", "830", "831", "832", "833", "834", "835", "836", "837", "842", "847", "852", "857", "862"],
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
			{"Name" : "ma_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ma_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "822", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "822", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277", "Parent" : "821", "Child" : ["823"],
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
	{"ID" : "823", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "822"},
	{"ID" : "824", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_283", "Parent" : "821",
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
	{"ID" : "825", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_290", "Parent" : "821",
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
	{"ID" : "826", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_297", "Parent" : "821",
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
	{"ID" : "827", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_303", "Parent" : "821",
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
	{"ID" : "828", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_309", "Parent" : "821",
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
	{"ID" : "829", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_316", "Parent" : "821",
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
	{"ID" : "830", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_323", "Parent" : "821",
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
	{"ID" : "831", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_329", "Parent" : "821",
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
	{"ID" : "832", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_336", "Parent" : "821",
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
	{"ID" : "833", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_345", "Parent" : "821",
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
	{"ID" : "834", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_is_digit_lessthan_ct_fu_352", "Parent" : "821",
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
	{"ID" : "835", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.tmp_693_is_digit_lessthan_ct_fu_358", "Parent" : "821",
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
	{"ID" : "836", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.tmp_694_is_digit_lessthan_ct_fu_365", "Parent" : "821",
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
	{"ID" : "837", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372", "Parent" : "821", "Child" : ["838", "839", "840", "841"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "838", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U266", "Parent" : "837"},
	{"ID" : "839", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U267", "Parent" : "837"},
	{"ID" : "840", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U268", "Parent" : "837"},
	{"ID" : "841", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_372.mul_32ns_32ns_64_1_1_U269", "Parent" : "837"},
	{"ID" : "842", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379", "Parent" : "821", "Child" : ["843", "844", "845", "846"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "843", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U266", "Parent" : "842"},
	{"ID" : "844", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U267", "Parent" : "842"},
	{"ID" : "845", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U268", "Parent" : "842"},
	{"ID" : "846", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_379.mul_32ns_32ns_64_1_1_U269", "Parent" : "842"},
	{"ID" : "847", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386", "Parent" : "821", "Child" : ["848", "849", "850", "851"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "848", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U266", "Parent" : "847"},
	{"ID" : "849", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U267", "Parent" : "847"},
	{"ID" : "850", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U268", "Parent" : "847"},
	{"ID" : "851", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_386.mul_32ns_32ns_64_1_1_U269", "Parent" : "847"},
	{"ID" : "852", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393", "Parent" : "821", "Child" : ["853", "854", "855", "856"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "853", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U266", "Parent" : "852"},
	{"ID" : "854", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U267", "Parent" : "852"},
	{"ID" : "855", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U268", "Parent" : "852"},
	{"ID" : "856", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_393.mul_32ns_32ns_64_1_1_U269", "Parent" : "852"},
	{"ID" : "857", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400", "Parent" : "821", "Child" : ["858", "859", "860", "861"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "858", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U266", "Parent" : "857"},
	{"ID" : "859", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U267", "Parent" : "857"},
	{"ID" : "860", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U268", "Parent" : "857"},
	{"ID" : "861", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_400.mul_32ns_32ns_64_1_1_U269", "Parent" : "857"},
	{"ID" : "862", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407", "Parent" : "821", "Child" : ["863", "864", "865", "866"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
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
	{"ID" : "863", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U266", "Parent" : "862"},
	{"ID" : "864", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U267", "Parent" : "862"},
	{"ID" : "865", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U268", "Parent" : "862"},
	{"ID" : "866", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_5_fu_539.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_407.mul_32ns_32ns_64_1_1_U269", "Parent" : "862"},
	{"ID" : "867", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_34_Pipeline_VITIS_LOOP_313_1_fu_549", "Parent" : "0", "Child" : ["868"],
		"CDFG" : "xDBLe_34_Pipeline_VITIS_LOOP_313_1",
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
			{"Name" : "Qnew_Z_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln47", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_313_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "868", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xDBLe_34_Pipeline_VITIS_LOOP_313_1_fu_549.flow_control_loop_pipe_sequential_init_U", "Parent" : "867"}]}


set ArgLastReadFirstWriteLatency {
	xDBLe_34 {
		R_X {Type I LastRead 0 FirstWrite -1}
		R_Z {Type I LastRead 0 FirstWrite -1}
		Q_X_0 {Type IO LastRead 0 FirstWrite -1}
		Q_X_1 {Type IO LastRead 2 FirstWrite -1}
		Q_Z_0 {Type IO LastRead 0 FirstWrite -1}
		Q_Z_1 {Type IO LastRead 0 FirstWrite -1}
		A24plus_0 {Type I LastRead 0 FirstWrite -1}
		A24plus_1 {Type I LastRead 0 FirstWrite -1}
		C24_0_0 {Type I LastRead 0 FirstWrite -1}
		C24_0_1 {Type I LastRead 0 FirstWrite -1}
		C24_1_0 {Type I LastRead 0 FirstWrite -1}
		C24_1_1 {Type I LastRead 0 FirstWrite -1}
		e {Type I LastRead 3 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	xDBLe_34_Pipeline_VITIS_LOOP_13_1 {
		Q_X_0 {Type O LastRead -1 FirstWrite 1}
		R_X {Type I LastRead 0 FirstWrite -1}}
	xDBLe_34_Pipeline_VITIS_LOOP_13_174 {
		Q_Z_0 {Type O LastRead -1 FirstWrite 1}
		R_Z {Type I LastRead 0 FirstWrite -1}}
	xDBLe_34_Pipeline_VITIS_LOOP_13_173 {
		Q_X_1 {Type O LastRead -1 FirstWrite 1}
		R_X {Type I LastRead 0 FirstWrite -1}}
	xDBLe_34_Pipeline_VITIS_LOOP_13_175 {
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
		carry_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1 {
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
	fp2sqr503_mont_2_1_Pipeline_VITIS_LOOP_390_1102 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_6 {
		ma {Type I LastRead 0 FirstWrite -1}
		mb {Type I LastRead 0 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	mp_mul_586 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_184 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	rdc_mont_6 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_6_Pipeline_VITIS_LOOP_306_1 {
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
	fpmul503_mont_3_3 {
		ma {Type I LastRead 0 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}}
	mp_mul_586 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_184 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	rdc_mont_6 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_6_Pipeline_VITIS_LOOP_306_1 {
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
	fp2mul503_mont_13 {
		a_0_0 {Type I LastRead 0 FirstWrite -1}
		a_0_1 {Type I LastRead 0 FirstWrite -1}
		a_1_0 {Type I LastRead 0 FirstWrite -1}
		a_1_1 {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_12 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_11 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_11_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_11_Pipeline_VITIS_LOOP_38_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_11_Pipeline_VITIS_LOOP_38_193 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_11_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_11_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload82 {Type I LastRead 0 FirstWrite -1}
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
	mp_mul_12 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_11 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_11_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_11_Pipeline_VITIS_LOOP_38_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_11_Pipeline_VITIS_LOOP_38_193 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_11_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_11_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload82 {Type I LastRead 0 FirstWrite -1}
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
	fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1 {
		a_0_0 {Type I LastRead 0 FirstWrite -1}
		a_0_1 {Type I LastRead 0 FirstWrite -1}
		a_1_0 {Type I LastRead 0 FirstWrite -1}
		a_1_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1154 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_13_Pipeline_VITIS_LOOP_172_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_13_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_13_Pipeline_VITIS_LOOP_390_1155 {
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
	mp_mul_586 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_184 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	fp2mul503_mont_13_Pipeline_VITIS_LOOP_172_1156 {
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
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1106 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_172_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_390_1107 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_126 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_126_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	mp_mul_586 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_184 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_172_1108 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_5 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_5_Pipeline_VITIS_LOOP_306_1 {
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
	fpsub503_4_272 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_272_Pipeline_VITIS_LOOP_61_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_4_272_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_272 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_4_272_Pipeline_VITIS_LOOP_61_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_4_272_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_625 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_586 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_184 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	mp_mul_586 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_184 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1112 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_625_Pipeline_VITIS_LOOP_172_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_625_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_625_Pipeline_VITIS_LOOP_390_1113 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_127 {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_127_Pipeline_VITIS_LOOP_306_1 {
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
	fp2mul503_mont_625_Pipeline_VITIS_LOOP_172_1114 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_6 {
		ma_0 {Type I LastRead 26 FirstWrite -1}
		ma_1 {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_6_Pipeline_VITIS_LOOP_306_1 {
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
	fpadd503_246 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_246_Pipeline_VITIS_LOOP_33_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_246_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_246_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_246 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_246_Pipeline_VITIS_LOOP_33_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_246_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_246_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_5 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
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
	mul_2_Pipeline_VITIS_LOOP_38_191 {
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
	mul_2_Pipeline_VITIS_LOOP_38_191 {
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
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1133 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_172_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_390_1134 {
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
	mp_mul_586 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_63_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_1 {
		a {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_38_184 {
		b {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_85_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_491_Pipeline_VITIS_LOOP_92_3_VITIS_LOOP_105_4 {
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
	fp2mul503_mont_5_Pipeline_VITIS_LOOP_172_1135 {
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
	xDBLe_34_Pipeline_VITIS_LOOP_313_1 {
		Q_X_0 {Type IO LastRead 0 FirstWrite 1}
		Q_X_1 {Type IO LastRead 2 FirstWrite 3}
		Q_Z_0 {Type IO LastRead 0 FirstWrite 1}
		Q_Z_1 {Type IO LastRead 0 FirstWrite 1}
		Qnew_X {Type I LastRead 1 FirstWrite -1}
		Qnew_Z {Type I LastRead 0 FirstWrite -1}
		Qnew_Z_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln47 {Type I LastRead 0 FirstWrite -1}
		e_cast {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1802776", "Max" : "1802776"}
	, {"Name" : "Interval", "Min" : "1802776", "Max" : "1802776"}
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
	C24_0_0 { ap_memory {  { C24_0_0_address0 mem_address 1 2 }  { C24_0_0_ce0 mem_ce 1 1 }  { C24_0_0_q0 mem_dout 0 64 } } }
	C24_0_1 { ap_memory {  { C24_0_1_address0 mem_address 1 2 }  { C24_0_1_ce0 mem_ce 1 1 }  { C24_0_1_q0 mem_dout 0 64 } } }
	C24_1_0 { ap_memory {  { C24_1_0_address0 mem_address 1 2 }  { C24_1_0_ce0 mem_ce 1 1 }  { C24_1_0_q0 mem_dout 0 64 } } }
	C24_1_1 { ap_memory {  { C24_1_1_address0 mem_address 1 2 }  { C24_1_1_ce0 mem_ce 1 1 }  { C24_1_1_q0 mem_dout 0 64 } } }
	e { ap_none {  { e in_data 0 7 } } }
}
