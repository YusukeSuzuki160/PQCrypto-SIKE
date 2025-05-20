set moduleName LADDER3PT_1
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
set cdfgNum 712
set C_modelName {LADDER3PT.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict PKB { MEM_WIDTH 64 MEM_SIZE 384 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict ephemeralsk { MEM_WIDTH 8 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_X { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_Z { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ PKB int 64 regular {array 48 { 1 3 } 1 1 }  }
	{ ephemeralsk int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ R_X int 64 regular {array 16 { 2 2 } 1 1 }  }
	{ R_Z int 64 regular {array 16 { 2 2 } 1 1 }  }
	{ A int 64 regular {array 16 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "PKB", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ephemeralsk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "R_X", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "R_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ PKB_address0 sc_out sc_lv 6 signal 0 } 
	{ PKB_ce0 sc_out sc_logic 1 signal 0 } 
	{ PKB_q0 sc_in sc_lv 64 signal 0 } 
	{ ephemeralsk_address0 sc_out sc_lv 5 signal 1 } 
	{ ephemeralsk_ce0 sc_out sc_logic 1 signal 1 } 
	{ ephemeralsk_q0 sc_in sc_lv 8 signal 1 } 
	{ ephemeralsk_address1 sc_out sc_lv 5 signal 1 } 
	{ ephemeralsk_ce1 sc_out sc_logic 1 signal 1 } 
	{ ephemeralsk_q1 sc_in sc_lv 8 signal 1 } 
	{ R_X_address0 sc_out sc_lv 4 signal 2 } 
	{ R_X_ce0 sc_out sc_logic 1 signal 2 } 
	{ R_X_we0 sc_out sc_logic 1 signal 2 } 
	{ R_X_d0 sc_out sc_lv 64 signal 2 } 
	{ R_X_q0 sc_in sc_lv 64 signal 2 } 
	{ R_X_address1 sc_out sc_lv 4 signal 2 } 
	{ R_X_ce1 sc_out sc_logic 1 signal 2 } 
	{ R_X_we1 sc_out sc_logic 1 signal 2 } 
	{ R_X_d1 sc_out sc_lv 64 signal 2 } 
	{ R_X_q1 sc_in sc_lv 64 signal 2 } 
	{ R_Z_address0 sc_out sc_lv 4 signal 3 } 
	{ R_Z_ce0 sc_out sc_logic 1 signal 3 } 
	{ R_Z_we0 sc_out sc_logic 1 signal 3 } 
	{ R_Z_d0 sc_out sc_lv 64 signal 3 } 
	{ R_Z_q0 sc_in sc_lv 64 signal 3 } 
	{ R_Z_address1 sc_out sc_lv 4 signal 3 } 
	{ R_Z_ce1 sc_out sc_logic 1 signal 3 } 
	{ R_Z_we1 sc_out sc_logic 1 signal 3 } 
	{ R_Z_d1 sc_out sc_lv 64 signal 3 } 
	{ R_Z_q1 sc_in sc_lv 64 signal 3 } 
	{ A_address0 sc_out sc_lv 4 signal 4 } 
	{ A_ce0 sc_out sc_logic 1 signal 4 } 
	{ A_q0 sc_in sc_lv 64 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "PKB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "PKB", "role": "address0" }} , 
 	{ "name": "PKB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PKB", "role": "ce0" }} , 
 	{ "name": "PKB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "PKB", "role": "q0" }} , 
 	{ "name": "ephemeralsk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ephemeralsk", "role": "address0" }} , 
 	{ "name": "ephemeralsk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ephemeralsk", "role": "ce0" }} , 
 	{ "name": "ephemeralsk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ephemeralsk", "role": "q0" }} , 
 	{ "name": "ephemeralsk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ephemeralsk", "role": "address1" }} , 
 	{ "name": "ephemeralsk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ephemeralsk", "role": "ce1" }} , 
 	{ "name": "ephemeralsk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ephemeralsk", "role": "q1" }} , 
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
 	{ "name": "R_Z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "R_Z", "role": "address0" }} , 
 	{ "name": "R_Z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_Z", "role": "ce0" }} , 
 	{ "name": "R_Z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_Z", "role": "we0" }} , 
 	{ "name": "R_Z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "d0" }} , 
 	{ "name": "R_Z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "q0" }} , 
 	{ "name": "R_Z_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "R_Z", "role": "address1" }} , 
 	{ "name": "R_Z_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_Z", "role": "ce1" }} , 
 	{ "name": "R_Z_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_Z", "role": "we1" }} , 
 	{ "name": "R_Z_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "d1" }} , 
 	{ "name": "R_Z_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "q1" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "14", "17", "26", "28", "31", "33", "36", "45", "47", "50", "52", "54", "65", "67", "69", "71", "80", "86", "92", "101", "108", "158", "208", "258", "264", "314", "364", "373", "436", "445", "500"],
		"CDFG" : "LADDER3PT_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1865694", "EstimateLatencyMax" : "2848194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1223_fu_909", "Port" : "PKB", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "31", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1224_fu_923", "Port" : "PKB", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "45", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1226_fu_956", "Port" : "PKB", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "50", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1227_fu_971", "Port" : "PKB", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "65", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1229_fu_992", "Port" : "PKB", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "67", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1230_fu_1000", "Port" : "PKB", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "ephemeralsk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1229_fu_992", "Port" : "R_X", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "67", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1230_fu_1000", "Port" : "R_X", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "69", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_267_1_fu_1008", "Port" : "R_X", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "445", "SubInstance" : "grp_fp2mul503_mont_72_73_1_fu_1192", "Port" : "R_X", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1231_fu_963", "Port" : "R_Z", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "52", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_23_1_fu_978", "Port" : "R_Z", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "69", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_267_1_fu_1008", "Port" : "R_Z", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "445", "SubInstance" : "grp_fp2mul503_mont_72_73_1_fu_1192", "Port" : "R_X", "Inst_start_state" : "52", "Inst_end_state" : "53"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_fpadd503_60_6167_fu_937", "Port" : "a", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "Montgomery_one_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1_fu_887", "Port" : "Montgomery_one_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "28", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1225_fu_916", "Port" : "Montgomery_one_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "33", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1228_fu_930", "Port" : "Montgomery_one_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "47", "SubInstance" : "grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1231_fu_963", "Port" : "Montgomery_one_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_fpadd503_58_60_fu_895", "Port" : "p503x2_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "36", "SubInstance" : "grp_fpadd503_60_6167_fu_937", "Port" : "p503x2_1", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "71", "SubInstance" : "grp_fpadd503_15181_fu_1021", "Port" : "p503x2_1", "Inst_start_state" : "28", "Inst_end_state" : "29"},
					{"ID" : "80", "SubInstance" : "grp_fpsub503_143_fu_1039", "Port" : "p503x2_1", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "86", "SubInstance" : "grp_fpsub503_14679_fu_1051", "Port" : "p503x2_1", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "92", "SubInstance" : "grp_fpadd503_148_fu_1069", "Port" : "p503x2_1", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "108", "SubInstance" : "grp_fp2sqr503_mont_fu_1087", "Port" : "p503x2_1", "Inst_start_state" : "36", "Inst_end_state" : "37"},
					{"ID" : "258", "SubInstance" : "grp_fpsub503_fu_1118", "Port" : "p503x2_1", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "364", "SubInstance" : "grp_fpadd503_147_fu_1156", "Port" : "p503x2_1", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "373", "SubInstance" : "grp_fp2sqr503_mont_70_71_fu_1167", "Port" : "p503x2_1", "Inst_start_state" : "50", "Inst_end_state" : "51"},
					{"ID" : "436", "SubInstance" : "grp_fpadd503_fu_1177", "Port" : "p503x2_1", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_fp2div2_503_fu_984", "Port" : "p503_1", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "101", "SubInstance" : "grp_fpcorrection503_fu_1077", "Port" : "p503_1", "Inst_start_state" : "34", "Inst_end_state" : "35"},
					{"ID" : "158", "SubInstance" : "grp_fp2mul503_mont_133_2_fu_1097", "Port" : "p503_1", "Inst_start_state" : "36", "Inst_end_state" : "37"},
					{"ID" : "208", "SubInstance" : "grp_fp2mul503_mont_64_65_fu_1107", "Port" : "p503_1", "Inst_start_state" : "38", "Inst_end_state" : "39"},
					{"ID" : "264", "SubInstance" : "grp_fp2mul503_mont_fu_1133", "Port" : "p503_1", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "314", "SubInstance" : "grp_fp2mul503_mont_66_69_fu_1143", "Port" : "p503_1", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "445", "SubInstance" : "grp_fp2mul503_mont_72_73_1_fu_1192", "Port" : "p503_1", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "500", "SubInstance" : "grp_fp2mul503_mont_1339777_fu_1205", "Port" : "p503_1", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_fp2sqr503_mont_fu_1087", "Port" : "p503p1_1", "Inst_start_state" : "36", "Inst_end_state" : "37"},
					{"ID" : "158", "SubInstance" : "grp_fp2mul503_mont_133_2_fu_1097", "Port" : "p503p1_1", "Inst_start_state" : "36", "Inst_end_state" : "37"},
					{"ID" : "208", "SubInstance" : "grp_fp2mul503_mont_64_65_fu_1107", "Port" : "p503p1_1", "Inst_start_state" : "38", "Inst_end_state" : "39"},
					{"ID" : "264", "SubInstance" : "grp_fp2mul503_mont_fu_1133", "Port" : "p503p1_1", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "314", "SubInstance" : "grp_fp2mul503_mont_66_69_fu_1143", "Port" : "p503p1_1", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "373", "SubInstance" : "grp_fp2sqr503_mont_70_71_fu_1167", "Port" : "p503p1_1", "Inst_start_state" : "50", "Inst_end_state" : "51"},
					{"ID" : "445", "SubInstance" : "grp_fp2mul503_mont_72_73_1_fu_1192", "Port" : "p503p1_1", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "500", "SubInstance" : "grp_fp2mul503_mont_1339777_fu_1205", "Port" : "p503p1_1", "Inst_start_state" : "48", "Inst_end_state" : "49"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_317_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "53", "FirstState" : "ap_ST_fsm_state21", "LastState" : ["ap_ST_fsm_state53"], "QuitState" : ["ap_ST_fsm_state21"], "PreState" : ["ap_ST_fsm_state20"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R0_X_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R0_Z_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_X_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_X_4_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_Z_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_Z_4_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A24_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A24_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_1_fu_879", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "LADDER3PT_1_Pipeline_1",
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
			{"Name" : "A24_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A24", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_1_fu_879.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1_fu_887", "Parent" : "0", "Child" : ["15", "16"],
		"CDFG" : "LADDER3PT_1_Pipeline_VITIS_LOOP_14_1",
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
			{"Name" : "A24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A24_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Montgomery_one_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1_fu_887.Montgomery_one_1_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1_fu_887.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_895", "Parent" : "0", "Child" : ["18", "20", "23"],
		"CDFG" : "fpadd503_58_60",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "57",
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
					{"ID" : "18", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_23_1_fu_36", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "20", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_28_2_fu_48", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "23", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3_fu_61", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_23_1_fu_36", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "20", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_28_2_fu_48", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "23", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3_fu_61", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_28_2_fu_48", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "23", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3_fu_61", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_895.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_23_1_fu_36", "Parent" : "17", "Child" : ["19"],
		"CDFG" : "fpadd503_58_60_Pipeline_VITIS_LOOP_23_1",
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
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_23_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_895.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_23_1_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_895.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_28_2_fu_48", "Parent" : "17", "Child" : ["21", "22"],
		"CDFG" : "fpadd503_58_60_Pipeline_VITIS_LOOP_28_2",
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
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_895.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_28_2_fu_48.p503x2_1_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_895.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_28_2_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_895.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3_fu_61", "Parent" : "17", "Child" : ["24", "25"],
		"CDFG" : "fpadd503_58_60_Pipeline_VITIS_LOOP_34_3",
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
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_895.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3_fu_61.p503x2_1_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_895.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1223_fu_909", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "LADDER3PT_1_Pipeline_VITIS_LOOP_14_1223",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "R0_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1223_fu_909.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1225_fu_916", "Parent" : "0", "Child" : ["29", "30"],
		"CDFG" : "LADDER3PT_1_Pipeline_VITIS_LOOP_14_1225",
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
			{"Name" : "R0_Z", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Montgomery_one_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1225_fu_916.Montgomery_one_1_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1225_fu_916.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1224_fu_923", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "LADDER3PT_1_Pipeline_VITIS_LOOP_14_1224",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "R0_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1224_fu_923.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1228_fu_930", "Parent" : "0", "Child" : ["34", "35"],
		"CDFG" : "LADDER3PT_1_Pipeline_VITIS_LOOP_14_1228",
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
			{"Name" : "R2_Z", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Montgomery_one_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1228_fu_930.Montgomery_one_1_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1228_fu_930.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_937", "Parent" : "0", "Child" : ["37", "39", "42"],
		"CDFG" : "fpadd503_60_6167",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "56", "EstimateLatencyMax" : "56",
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
					{"ID" : "37", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_23_1_fu_46", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_23_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "39", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2_fu_62", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "42", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3_fu_75", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_23_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "39", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2_fu_62", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "42", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3_fu_75", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2_fu_62", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "42", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3_fu_75", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_937.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_23_1_fu_46", "Parent" : "36", "Child" : ["38"],
		"CDFG" : "fpadd503_60_6167_Pipeline_VITIS_LOOP_23_1",
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
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_23_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_937.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_23_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_937.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2_fu_62", "Parent" : "36", "Child" : ["40", "41"],
		"CDFG" : "fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2",
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
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_937.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2_fu_62.p503x2_1_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_937.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_937.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3_fu_75", "Parent" : "36", "Child" : ["43", "44"],
		"CDFG" : "fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3",
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
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_937.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3_fu_75.p503x2_1_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_937.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1226_fu_956", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "LADDER3PT_1_Pipeline_VITIS_LOOP_14_1226",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "R2_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1226_fu_956.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1231_fu_963", "Parent" : "0", "Child" : ["48", "49"],
		"CDFG" : "LADDER3PT_1_Pipeline_VITIS_LOOP_14_1231",
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
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Montgomery_one_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1231_fu_963.Montgomery_one_1_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1231_fu_963.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1227_fu_971", "Parent" : "0", "Child" : ["51"],
		"CDFG" : "LADDER3PT_1_Pipeline_VITIS_LOOP_14_1227",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "R2_X_4", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1227_fu_971.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_23_1_fu_978", "Parent" : "0", "Child" : ["53"],
		"CDFG" : "LADDER3PT_1_Pipeline_VITIS_LOOP_23_1",
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
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_23_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_23_1_fu_978.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_984", "Parent" : "0", "Child" : ["55", "58", "60", "63"],
		"CDFG" : "fp2div2_503",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "85", "EstimateLatencyMax" : "85",
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
					{"ID" : "55", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1_fu_74", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "58", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1_fu_85", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "60", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1212_fu_93", "Port" : "c_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "63", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1213_fu_104", "Port" : "c_0", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1_fu_74", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "58", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1_fu_85", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "60", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1212_fu_93", "Port" : "c_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "63", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1213_fu_104", "Port" : "c_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1_fu_74", "Port" : "p503_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "60", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1212_fu_93", "Port" : "p503_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_984.grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1_fu_74", "Parent" : "54", "Child" : ["56", "57"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_78_1",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_78_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_984.grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1_fu_74.p503_1_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_984.grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_984.grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1_fu_85", "Parent" : "54", "Child" : ["59"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_382_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_382_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_984.grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1_fu_85.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_984.grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1212_fu_93", "Parent" : "54", "Child" : ["61", "62"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_78_1212",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln75_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_78_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_984.grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1212_fu_93.p503_1_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_984.grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1212_fu_93.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_984.grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1213_fu_104", "Parent" : "54", "Child" : ["64"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_382_1213",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_382_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_984.grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1213_fu_104.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1229_fu_992", "Parent" : "0", "Child" : ["66"],
		"CDFG" : "LADDER3PT_1_Pipeline_VITIS_LOOP_14_1229",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1229_fu_992.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1230_fu_1000", "Parent" : "0", "Child" : ["68"],
		"CDFG" : "LADDER3PT_1_Pipeline_VITIS_LOOP_14_1230",
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
			{"Name" : "PKB", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_14_1230_fu_1000.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_267_1_fu_1008", "Parent" : "0", "Child" : ["70"],
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
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_1_Pipeline_VITIS_LOOP_267_1_fu_1008.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1021", "Parent" : "0", "Child" : ["72", "74", "77"],
		"CDFG" : "fpadd503_15181",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "54",
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
					{"ID" : "72", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_23_1_fu_46", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_23_1_fu_46", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_23_1_fu_46", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "74", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_28_2_fu_62", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "77", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_34_3_fu_72", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_28_2_fu_62", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "77", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_34_3_fu_72", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1021.grp_fpadd503_15181_Pipeline_VITIS_LOOP_23_1_fu_46", "Parent" : "71", "Child" : ["73"],
		"CDFG" : "fpadd503_15181_Pipeline_VITIS_LOOP_23_1",
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
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_23_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1021.grp_fpadd503_15181_Pipeline_VITIS_LOOP_23_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1021.grp_fpadd503_15181_Pipeline_VITIS_LOOP_28_2_fu_62", "Parent" : "71", "Child" : ["75", "76"],
		"CDFG" : "fpadd503_15181_Pipeline_VITIS_LOOP_28_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_190_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1021.grp_fpadd503_15181_Pipeline_VITIS_LOOP_28_2_fu_62.p503x2_1_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1021.grp_fpadd503_15181_Pipeline_VITIS_LOOP_28_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1021.grp_fpadd503_15181_Pipeline_VITIS_LOOP_34_3_fu_72", "Parent" : "71", "Child" : ["78", "79"],
		"CDFG" : "fpadd503_15181_Pipeline_VITIS_LOOP_34_3",
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
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1021.grp_fpadd503_15181_Pipeline_VITIS_LOOP_34_3_fu_72.p503x2_1_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1021.grp_fpadd503_15181_Pipeline_VITIS_LOOP_34_3_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_143_fu_1039", "Parent" : "0", "Child" : ["81", "83"],
		"CDFG" : "fpsub503_143",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
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
					{"ID" : "81", "SubInstance" : "grp_fpsub503_143_Pipeline_VITIS_LOOP_47_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_fpsub503_143_Pipeline_VITIS_LOOP_47_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_fpsub503_143_Pipeline_VITIS_LOOP_47_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "83", "SubInstance" : "grp_fpsub503_143_Pipeline_VITIS_LOOP_53_2_fu_41", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fpsub503_143_Pipeline_VITIS_LOOP_53_2_fu_41", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_143_fu_1039.grp_fpsub503_143_Pipeline_VITIS_LOOP_47_1_fu_28", "Parent" : "80", "Child" : ["82"],
		"CDFG" : "fpsub503_143_Pipeline_VITIS_LOOP_47_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
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
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_143_fu_1039.grp_fpsub503_143_Pipeline_VITIS_LOOP_47_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_143_fu_1039.grp_fpsub503_143_Pipeline_VITIS_LOOP_53_2_fu_41", "Parent" : "80", "Child" : ["84", "85"],
		"CDFG" : "fpsub503_143_Pipeline_VITIS_LOOP_53_2",
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
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_143_fu_1039.grp_fpsub503_143_Pipeline_VITIS_LOOP_53_2_fu_41.p503x2_1_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_143_fu_1039.grp_fpsub503_143_Pipeline_VITIS_LOOP_53_2_fu_41.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_14679_fu_1051", "Parent" : "0", "Child" : ["87", "89"],
		"CDFG" : "fpsub503_14679",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
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
					{"ID" : "87", "SubInstance" : "grp_fpsub503_14679_Pipeline_VITIS_LOOP_47_1_fu_44", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_fpsub503_14679_Pipeline_VITIS_LOOP_47_1_fu_44", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_fpsub503_14679_Pipeline_VITIS_LOOP_47_1_fu_44", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_fpsub503_14679_Pipeline_VITIS_LOOP_53_2_fu_61", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_fpsub503_14679_Pipeline_VITIS_LOOP_53_2_fu_61", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_14679_fu_1051.grp_fpsub503_14679_Pipeline_VITIS_LOOP_47_1_fu_44", "Parent" : "86", "Child" : ["88"],
		"CDFG" : "fpsub503_14679_Pipeline_VITIS_LOOP_47_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_14679_fu_1051.grp_fpsub503_14679_Pipeline_VITIS_LOOP_47_1_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_14679_fu_1051.grp_fpsub503_14679_Pipeline_VITIS_LOOP_53_2_fu_61", "Parent" : "86", "Child" : ["90", "91"],
		"CDFG" : "fpsub503_14679_Pipeline_VITIS_LOOP_53_2",
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
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_14679_fu_1051.grp_fpsub503_14679_Pipeline_VITIS_LOOP_53_2_fu_61.p503x2_1_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_14679_fu_1051.grp_fpsub503_14679_Pipeline_VITIS_LOOP_53_2_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1069", "Parent" : "0", "Child" : ["93", "95", "98"],
		"CDFG" : "fpadd503_148",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "54",
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
					{"ID" : "93", "SubInstance" : "grp_fpadd503_148_Pipeline_VITIS_LOOP_23_1_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "95", "SubInstance" : "grp_fpadd503_148_Pipeline_VITIS_LOOP_28_2_fu_26", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "98", "SubInstance" : "grp_fpadd503_148_Pipeline_VITIS_LOOP_34_3_fu_35", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_fpadd503_148_Pipeline_VITIS_LOOP_23_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_fpadd503_148_Pipeline_VITIS_LOOP_28_2_fu_26", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "98", "SubInstance" : "grp_fpadd503_148_Pipeline_VITIS_LOOP_34_3_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1069.grp_fpadd503_148_Pipeline_VITIS_LOOP_23_1_fu_18", "Parent" : "92", "Child" : ["94"],
		"CDFG" : "fpadd503_148_Pipeline_VITIS_LOOP_23_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_23_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1069.grp_fpadd503_148_Pipeline_VITIS_LOOP_23_1_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1069.grp_fpadd503_148_Pipeline_VITIS_LOOP_28_2_fu_26", "Parent" : "92", "Child" : ["96", "97"],
		"CDFG" : "fpadd503_148_Pipeline_VITIS_LOOP_28_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_208_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1069.grp_fpadd503_148_Pipeline_VITIS_LOOP_28_2_fu_26.p503x2_1_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1069.grp_fpadd503_148_Pipeline_VITIS_LOOP_28_2_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1069.grp_fpadd503_148_Pipeline_VITIS_LOOP_34_3_fu_35", "Parent" : "92", "Child" : ["99", "100"],
		"CDFG" : "fpadd503_148_Pipeline_VITIS_LOOP_34_3",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1069.grp_fpadd503_148_Pipeline_VITIS_LOOP_34_3_fu_35.p503x2_1_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1069.grp_fpadd503_148_Pipeline_VITIS_LOOP_34_3_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "98"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1077", "Parent" : "0", "Child" : ["102", "105"],
		"CDFG" : "fpcorrection503",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_91_1_fu_24", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "105", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_97_2_fu_35", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_91_1_fu_24", "Port" : "p503_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "105", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_97_2_fu_35", "Port" : "p503_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1077.grp_fpcorrection503_Pipeline_VITIS_LOOP_91_1_fu_24", "Parent" : "101", "Child" : ["103", "104"],
		"CDFG" : "fpcorrection503_Pipeline_VITIS_LOOP_91_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1077.grp_fpcorrection503_Pipeline_VITIS_LOOP_91_1_fu_24.p503_1_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1077.grp_fpcorrection503_Pipeline_VITIS_LOOP_91_1_fu_24.flow_control_loop_pipe_sequential_init_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1077.grp_fpcorrection503_Pipeline_VITIS_LOOP_97_2_fu_35", "Parent" : "101", "Child" : ["106", "107"],
		"CDFG" : "fpcorrection503_Pipeline_VITIS_LOOP_97_2",
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
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln89", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_97_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1077.grp_fpcorrection503_Pipeline_VITIS_LOOP_97_2_fu_35.p503_1_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1077.grp_fpcorrection503_Pipeline_VITIS_LOOP_97_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087", "Parent" : "0", "Child" : ["109", "110", "111", "112", "113", "114", "116", "118", "120", "122", "125", "127", "136", "145"],
		"CDFG" : "fp2sqr503_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "667", "EstimateLatencyMax" : "1089",
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
					{"ID" : "114", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "120", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_47_1_fu_76", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "125", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1136_fu_92", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "136", "SubInstance" : "grp_mp_mul_150_fu_106", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_rdc_mont_14183_fu_114", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_53_2_fu_84", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_rdc_mont_14183_fu_114", "Port" : "p503p1_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.temp_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.temp_64_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.t1_U", "Parent" : "108"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.t2_U", "Parent" : "108"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.t3_U", "Parent" : "108"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1_fu_56", "Parent" : "108", "Child" : ["115"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_5_fu_64", "Parent" : "108", "Child" : ["117"],
		"CDFG" : "fp2sqr503_mont_Pipeline_5",
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
			{"Name" : "temp_64", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_5_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_6_fu_70", "Parent" : "108", "Child" : ["119"],
		"CDFG" : "fp2sqr503_mont_Pipeline_6",
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
			{"Name" : "temp", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_6_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_47_1_fu_76", "Parent" : "108", "Child" : ["121"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_47_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_47_1_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_53_2_fu_84", "Parent" : "108", "Child" : ["123", "124"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_53_2",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_53_2_fu_84.p503x2_1_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_53_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1136_fu_92", "Parent" : "108", "Child" : ["126"],
		"CDFG" : "fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1136",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1136_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_152_fu_99", "Parent" : "108", "Child" : ["128", "130", "132", "133", "134", "135"],
		"CDFG" : "mp_mul_152",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "128", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "130", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "130", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "127", "Child" : ["129"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "127", "Child" : ["131"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U277", "Parent" : "127"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U278", "Parent" : "127"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U279", "Parent" : "127"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U280", "Parent" : "127"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_150_fu_106", "Parent" : "108", "Child" : ["137", "139", "141", "142", "143", "144"],
		"CDFG" : "mp_mul_150",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "227", "EstimateLatencyMax" : "325",
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
					{"ID" : "137", "SubInstance" : "grp_mp_mul_150_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "139", "SubInstance" : "grp_mp_mul_150_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_mp_mul_150_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "139", "SubInstance" : "grp_mp_mul_150_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_150_fu_106.grp_mp_mul_150_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "136", "Child" : ["138"],
		"CDFG" : "mp_mul_150_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_150_fu_106.grp_mp_mul_150_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_150_fu_106.grp_mp_mul_150_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "136", "Child" : ["140"],
		"CDFG" : "mp_mul_150_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_150_fu_106.grp_mp_mul_150_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_150_fu_106.mul_32ns_32ns_64_2_1_U354", "Parent" : "136"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_150_fu_106.mul_32ns_32ns_64_2_1_U355", "Parent" : "136"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_150_fu_106.mul_32ns_32ns_64_2_1_U356", "Parent" : "136"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_mp_mul_150_fu_106.mul_32ns_32ns_64_2_1_U357", "Parent" : "136"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114", "Parent" : "108", "Child" : ["146", "148", "151", "154", "155", "156", "157"],
		"CDFG" : "rdc_mont_14183",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "148", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "151", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "151", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190", "Parent" : "145", "Child" : ["147"],
		"CDFG" : "rdc_mont_14183_Pipeline_VITIS_LOOP_180_1",
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
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Parent" : "145", "Child" : ["149", "150"],
		"CDFG" : "rdc_mont_14183_Pipeline_VITIS_LOOP_185_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199.p503p1_1_U", "Parent" : "148"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "148"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Parent" : "145", "Child" : ["152", "153"],
		"CDFG" : "rdc_mont_14183_Pipeline_VITIS_LOOP_206_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub66", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216.p503p1_1_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114.mul_32ns_32ns_64_2_1_U320", "Parent" : "145"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114.mul_32ns_32ns_64_2_1_U321", "Parent" : "145"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114.mul_32ns_32ns_64_2_1_U322", "Parent" : "145"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1087.grp_rdc_mont_14183_fu_114.mul_32ns_32ns_64_2_1_U323", "Parent" : "145"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097", "Parent" : "0", "Child" : ["159", "160", "161", "162", "163", "164", "173", "175", "177", "179", "182", "184", "197", "206"],
		"CDFG" : "fp2mul503_mont_133_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "942", "EstimateLatencyMax" : "1440",
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
					{"ID" : "164", "SubInstance" : "grp_mp_mul_148_fu_56", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "173", "SubInstance" : "grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1_fu_72", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "184", "SubInstance" : "grp_rdc_mont_140_fu_108", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_mp_mul_148_fu_56", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "175", "SubInstance" : "grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1179_fu_79", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_199_1_fu_94", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_rdc_mont_140_fu_108", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.t1_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.t2_U", "Parent" : "158"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.tt1_U", "Parent" : "158"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.tt2_U", "Parent" : "158"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.tt3_U", "Parent" : "158"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_148_fu_56", "Parent" : "158", "Child" : ["165", "167", "169", "170", "171", "172"],
		"CDFG" : "mp_mul_148",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "227", "EstimateLatencyMax" : "325",
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
					{"ID" : "165", "SubInstance" : "grp_mp_mul_148_Pipeline_VITIS_LOOP_144_2_fu_134", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "167", "SubInstance" : "grp_mp_mul_148_Pipeline_VITIS_LOOP_157_4_fu_151", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_mp_mul_148_Pipeline_VITIS_LOOP_144_2_fu_134", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "167", "SubInstance" : "grp_mp_mul_148_Pipeline_VITIS_LOOP_157_4_fu_151", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_148_fu_56.grp_mp_mul_148_Pipeline_VITIS_LOOP_144_2_fu_134", "Parent" : "164", "Child" : ["166"],
		"CDFG" : "mp_mul_148_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_148_fu_56.grp_mp_mul_148_Pipeline_VITIS_LOOP_144_2_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_148_fu_56.grp_mp_mul_148_Pipeline_VITIS_LOOP_157_4_fu_151", "Parent" : "164", "Child" : ["168"],
		"CDFG" : "mp_mul_148_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_148_fu_56.grp_mp_mul_148_Pipeline_VITIS_LOOP_157_4_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "167"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_148_fu_56.mul_32ns_32ns_64_2_1_U424", "Parent" : "164"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_148_fu_56.mul_32ns_32ns_64_2_1_U425", "Parent" : "164"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_148_fu_56.mul_32ns_32ns_64_2_1_U426", "Parent" : "164"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_148_fu_56.mul_32ns_32ns_64_2_1_U427", "Parent" : "164"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1_fu_72", "Parent" : "158", "Child" : ["174"],
		"CDFG" : "fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1179_fu_79", "Parent" : "158", "Child" : ["176"],
		"CDFG" : "fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1179",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1179_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_169_1_fu_86", "Parent" : "158", "Child" : ["178"],
		"CDFG" : "fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_169_1",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_169_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_199_1_fu_94", "Parent" : "158", "Child" : ["180", "181"],
		"CDFG" : "fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_199_1",
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
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_199_1_fu_94.p503_1_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_199_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "179"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1180_fu_102", "Parent" : "158", "Child" : ["183"],
		"CDFG" : "fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1180",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1180_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108", "Parent" : "158", "Child" : ["185", "187", "190", "193", "194", "195", "196"],
		"CDFG" : "rdc_mont_140",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "187", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "190", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "190", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190", "Parent" : "184", "Child" : ["186"],
		"CDFG" : "rdc_mont_140_Pipeline_VITIS_LOOP_180_1",
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
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Parent" : "184", "Child" : ["188", "189"],
		"CDFG" : "rdc_mont_140_Pipeline_VITIS_LOOP_185_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199.p503p1_1_U", "Parent" : "187"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "187"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Parent" : "184", "Child" : ["191", "192"],
		"CDFG" : "rdc_mont_140_Pipeline_VITIS_LOOP_206_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub66", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216.p503p1_1_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108.mul_32ns_32ns_64_2_1_U474", "Parent" : "184"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108.mul_32ns_32ns_64_2_1_U475", "Parent" : "184"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108.mul_32ns_32ns_64_2_1_U476", "Parent" : "184"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_rdc_mont_140_fu_108.mul_32ns_32ns_64_2_1_U477", "Parent" : "184"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_152_fu_120", "Parent" : "158", "Child" : ["198", "200", "202", "203", "204", "205"],
		"CDFG" : "mp_mul_152",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "198", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "200", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "198", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "200", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "197", "Child" : ["199"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "197", "Child" : ["201"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U277", "Parent" : "197"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U278", "Parent" : "197"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U279", "Parent" : "197"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U280", "Parent" : "197"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_169_1181_fu_127", "Parent" : "158", "Child" : ["207"],
		"CDFG" : "fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_169_1181",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1097.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_169_1181_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107", "Parent" : "0", "Child" : ["209", "210", "211", "212", "213", "214", "223", "225", "227", "229", "232", "234", "247", "256"],
		"CDFG" : "fp2mul503_mont_64_65",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "912", "EstimateLatencyMax" : "1410",
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
					{"ID" : "214", "SubInstance" : "grp_mp_mul_fu_58", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "223", "SubInstance" : "grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1_fu_72", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "234", "SubInstance" : "grp_rdc_mont_140_fu_110", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "214", "SubInstance" : "grp_mp_mul_fu_58", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "225", "SubInstance" : "grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1158_fu_79", "Port" : "b_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "214", "SubInstance" : "grp_mp_mul_fu_58", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "225", "SubInstance" : "grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1158_fu_79", "Port" : "b_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_199_1_fu_96", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_rdc_mont_140_fu_110", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.t1_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.t2_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.tt1_U", "Parent" : "208"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.tt2_U", "Parent" : "208"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.tt3_U", "Parent" : "208"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_fu_58", "Parent" : "208", "Child" : ["215", "217", "219", "220", "221", "222"],
		"CDFG" : "mp_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "215", "SubInstance" : "grp_mp_mul_Pipeline_VITIS_LOOP_144_2_fu_126", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "217", "SubInstance" : "grp_mp_mul_Pipeline_VITIS_LOOP_157_4_fu_142", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_mp_mul_Pipeline_VITIS_LOOP_144_2_fu_126", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "217", "SubInstance" : "grp_mp_mul_Pipeline_VITIS_LOOP_157_4_fu_142", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_fu_58.grp_mp_mul_Pipeline_VITIS_LOOP_144_2_fu_126", "Parent" : "214", "Child" : ["216"],
		"CDFG" : "mp_mul_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_fu_58.grp_mp_mul_Pipeline_VITIS_LOOP_144_2_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_fu_58.grp_mp_mul_Pipeline_VITIS_LOOP_157_4_fu_142", "Parent" : "214", "Child" : ["218"],
		"CDFG" : "mp_mul_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_fu_58.grp_mp_mul_Pipeline_VITIS_LOOP_157_4_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_fu_58.mul_32ns_32ns_64_2_1_U518", "Parent" : "214"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_fu_58.mul_32ns_32ns_64_2_1_U519", "Parent" : "214"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_fu_58.mul_32ns_32ns_64_2_1_U520", "Parent" : "214"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_fu_58.mul_32ns_32ns_64_2_1_U521", "Parent" : "214"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1_fu_72", "Parent" : "208", "Child" : ["224"],
		"CDFG" : "fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1158_fu_79", "Parent" : "208", "Child" : ["226"],
		"CDFG" : "fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1158",
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
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1158_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_169_1_fu_88", "Parent" : "208", "Child" : ["228"],
		"CDFG" : "fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_169_1",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_169_1_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "227"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_199_1_fu_96", "Parent" : "208", "Child" : ["230", "231"],
		"CDFG" : "fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_199_1",
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
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_199_1_fu_96.p503_1_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_199_1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1159_fu_104", "Parent" : "208", "Child" : ["233"],
		"CDFG" : "fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1159",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1159_fu_104.flow_control_loop_pipe_sequential_init_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110", "Parent" : "208", "Child" : ["235", "237", "240", "243", "244", "245", "246"],
		"CDFG" : "rdc_mont_140",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "237", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "240", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "237", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "240", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190", "Parent" : "234", "Child" : ["236"],
		"CDFG" : "rdc_mont_140_Pipeline_VITIS_LOOP_180_1",
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
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Parent" : "234", "Child" : ["238", "239"],
		"CDFG" : "rdc_mont_140_Pipeline_VITIS_LOOP_185_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199.p503p1_1_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "237"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Parent" : "234", "Child" : ["241", "242"],
		"CDFG" : "rdc_mont_140_Pipeline_VITIS_LOOP_206_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub66", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216.p503p1_1_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "240"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110.mul_32ns_32ns_64_2_1_U474", "Parent" : "234"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110.mul_32ns_32ns_64_2_1_U475", "Parent" : "234"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110.mul_32ns_32ns_64_2_1_U476", "Parent" : "234"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_rdc_mont_140_fu_110.mul_32ns_32ns_64_2_1_U477", "Parent" : "234"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_152_fu_122", "Parent" : "208", "Child" : ["248", "250", "252", "253", "254", "255"],
		"CDFG" : "mp_mul_152",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "248", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "250", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "248", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "250", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_152_fu_122.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "247", "Child" : ["249"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_152_fu_122.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_152_fu_122.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "247", "Child" : ["251"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_152_fu_122.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_152_fu_122.mul_32ns_32ns_64_2_1_U277", "Parent" : "247"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_152_fu_122.mul_32ns_32ns_64_2_1_U278", "Parent" : "247"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_152_fu_122.mul_32ns_32ns_64_2_1_U279", "Parent" : "247"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_mp_mul_152_fu_122.mul_32ns_32ns_64_2_1_U280", "Parent" : "247"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_169_1160_fu_129", "Parent" : "208", "Child" : ["257"],
		"CDFG" : "fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_169_1160",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1107.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_169_1160_fu_129.flow_control_loop_pipe_sequential_init_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1118", "Parent" : "0", "Child" : ["259", "261"],
		"CDFG" : "fpsub503",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
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
					{"ID" : "259", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_47_1_fu_36", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_47_1_fu_36", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_47_1_fu_36", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "261", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_53_2_fu_51", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "261", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_53_2_fu_51", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1118.grp_fpsub503_Pipeline_VITIS_LOOP_47_1_fu_36", "Parent" : "258", "Child" : ["260"],
		"CDFG" : "fpsub503_Pipeline_VITIS_LOOP_47_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1118.grp_fpsub503_Pipeline_VITIS_LOOP_47_1_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1118.grp_fpsub503_Pipeline_VITIS_LOOP_53_2_fu_51", "Parent" : "258", "Child" : ["262", "263"],
		"CDFG" : "fpsub503_Pipeline_VITIS_LOOP_53_2",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1118.grp_fpsub503_Pipeline_VITIS_LOOP_53_2_fu_51.p503x2_1_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1118.grp_fpsub503_Pipeline_VITIS_LOOP_53_2_fu_51.flow_control_loop_pipe_sequential_init_U", "Parent" : "261"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133", "Parent" : "0", "Child" : ["265", "266", "267", "268", "269", "270", "279", "281", "283", "285", "288", "290", "303", "312"],
		"CDFG" : "fp2mul503_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "942", "EstimateLatencyMax" : "1440",
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
					{"ID" : "270", "SubInstance" : "grp_mp_mul_146_fu_56", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "279", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1_fu_72", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "290", "SubInstance" : "grp_rdc_mont_14183_fu_108", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "270", "SubInstance" : "grp_mp_mul_146_fu_56", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "281", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1209_fu_79", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_199_1_fu_94", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "290", "SubInstance" : "grp_rdc_mont_14183_fu_108", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.t1_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.t2_U", "Parent" : "264"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.tt1_U", "Parent" : "264"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.tt2_U", "Parent" : "264"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.tt3_U", "Parent" : "264"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_146_fu_56", "Parent" : "264", "Child" : ["271", "273", "275", "276", "277", "278"],
		"CDFG" : "mp_mul_146",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "227", "EstimateLatencyMax" : "325",
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
					{"ID" : "271", "SubInstance" : "grp_mp_mul_146_Pipeline_VITIS_LOOP_144_2_fu_134", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "273", "SubInstance" : "grp_mp_mul_146_Pipeline_VITIS_LOOP_157_4_fu_151", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "271", "SubInstance" : "grp_mp_mul_146_Pipeline_VITIS_LOOP_144_2_fu_134", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "273", "SubInstance" : "grp_mp_mul_146_Pipeline_VITIS_LOOP_157_4_fu_151", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_146_fu_56.grp_mp_mul_146_Pipeline_VITIS_LOOP_144_2_fu_134", "Parent" : "270", "Child" : ["272"],
		"CDFG" : "mp_mul_146_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "272", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_146_fu_56.grp_mp_mul_146_Pipeline_VITIS_LOOP_144_2_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_146_fu_56.grp_mp_mul_146_Pipeline_VITIS_LOOP_157_4_fu_151", "Parent" : "270", "Child" : ["274"],
		"CDFG" : "mp_mul_146_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_146_fu_56.grp_mp_mul_146_Pipeline_VITIS_LOOP_157_4_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_146_fu_56.mul_32ns_32ns_64_2_1_U577", "Parent" : "270"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_146_fu_56.mul_32ns_32ns_64_2_1_U578", "Parent" : "270"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_146_fu_56.mul_32ns_32ns_64_2_1_U579", "Parent" : "270"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_146_fu_56.mul_32ns_32ns_64_2_1_U580", "Parent" : "270"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1_fu_72", "Parent" : "264", "Child" : ["280"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_349_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1209_fu_79", "Parent" : "264", "Child" : ["282"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_349_1209",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1209_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_169_1_fu_86", "Parent" : "264", "Child" : ["284"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_169_1",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_169_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_199_1_fu_94", "Parent" : "264", "Child" : ["286", "287"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_199_1",
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
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_199_1_fu_94.p503_1_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_199_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "285"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1210_fu_102", "Parent" : "264", "Child" : ["289"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_349_1210",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1210_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "288"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108", "Parent" : "264", "Child" : ["291", "293", "296", "299", "300", "301", "302"],
		"CDFG" : "rdc_mont_14183",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "293", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "296", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "293", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "296", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190", "Parent" : "290", "Child" : ["292"],
		"CDFG" : "rdc_mont_14183_Pipeline_VITIS_LOOP_180_1",
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
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Parent" : "290", "Child" : ["294", "295"],
		"CDFG" : "rdc_mont_14183_Pipeline_VITIS_LOOP_185_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199.p503p1_1_U", "Parent" : "293"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "293"},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Parent" : "290", "Child" : ["297", "298"],
		"CDFG" : "rdc_mont_14183_Pipeline_VITIS_LOOP_206_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub66", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216.p503p1_1_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "296"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U320", "Parent" : "290"},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U321", "Parent" : "290"},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U322", "Parent" : "290"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U323", "Parent" : "290"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_152_fu_120", "Parent" : "264", "Child" : ["304", "306", "308", "309", "310", "311"],
		"CDFG" : "mp_mul_152",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "304", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "306", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "304", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "306", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "303", "Child" : ["305"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "304"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "303", "Child" : ["307"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "306"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U277", "Parent" : "303"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U278", "Parent" : "303"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U279", "Parent" : "303"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U280", "Parent" : "303"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_169_1211_fu_127", "Parent" : "264", "Child" : ["313"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_169_1211",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_169_1211_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "312"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143", "Parent" : "0", "Child" : ["315", "316", "317", "318", "319", "320", "329", "331", "333", "335", "338", "340", "353", "362"],
		"CDFG" : "fp2mul503_mont_66_69",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "913", "EstimateLatencyMax" : "1411",
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
					{"ID" : "320", "SubInstance" : "grp_mp_mul_67_68_fu_62", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "329", "SubInstance" : "grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1_fu_83", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "320", "SubInstance" : "grp_mp_mul_67_68_fu_62", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "331", "SubInstance" : "grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1155_fu_90", "Port" : "b_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "320", "SubInstance" : "grp_mp_mul_67_68_fu_62", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "331", "SubInstance" : "grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1155_fu_90", "Port" : "b_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_rdc_mont_fu_121", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_rdc_mont_fu_121", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_199_1_fu_107", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_rdc_mont_fu_121", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.t1_U", "Parent" : "314"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.t2_U", "Parent" : "314"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.tt1_U", "Parent" : "314"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.tt2_U", "Parent" : "314"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.tt3_U", "Parent" : "314"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_67_68_fu_62", "Parent" : "314", "Child" : ["321", "323", "325", "326", "327", "328"],
		"CDFG" : "mp_mul_67_68",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "321", "SubInstance" : "grp_mp_mul_67_68_Pipeline_VITIS_LOOP_144_2_fu_148", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "323", "SubInstance" : "grp_mp_mul_67_68_Pipeline_VITIS_LOOP_157_4_fu_168", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "321", "SubInstance" : "grp_mp_mul_67_68_Pipeline_VITIS_LOOP_144_2_fu_148", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "323", "SubInstance" : "grp_mp_mul_67_68_Pipeline_VITIS_LOOP_157_4_fu_168", "Port" : "b_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "321", "SubInstance" : "grp_mp_mul_67_68_Pipeline_VITIS_LOOP_144_2_fu_148", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "323", "SubInstance" : "grp_mp_mul_67_68_Pipeline_VITIS_LOOP_157_4_fu_168", "Port" : "b_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_67_68_fu_62.grp_mp_mul_67_68_Pipeline_VITIS_LOOP_144_2_fu_148", "Parent" : "320", "Child" : ["322"],
		"CDFG" : "mp_mul_67_68_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln145", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_71_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_67_68_fu_62.grp_mp_mul_67_68_Pipeline_VITIS_LOOP_144_2_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "321"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_67_68_fu_62.grp_mp_mul_67_68_Pipeline_VITIS_LOOP_157_4_fu_168", "Parent" : "320", "Child" : ["324"],
		"CDFG" : "mp_mul_67_68_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln145", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_67_68_fu_62.grp_mp_mul_67_68_Pipeline_VITIS_LOOP_157_4_fu_168.flow_control_loop_pipe_sequential_init_U", "Parent" : "323"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_67_68_fu_62.mul_32ns_32ns_64_2_1_U639", "Parent" : "320"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_67_68_fu_62.mul_32ns_32ns_64_2_1_U640", "Parent" : "320"},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_67_68_fu_62.mul_32ns_32ns_64_2_1_U641", "Parent" : "320"},
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_67_68_fu_62.mul_32ns_32ns_64_2_1_U642", "Parent" : "320"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1_fu_83", "Parent" : "314", "Child" : ["330"],
		"CDFG" : "fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1_fu_83.flow_control_loop_pipe_sequential_init_U", "Parent" : "329"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1155_fu_90", "Parent" : "314", "Child" : ["332"],
		"CDFG" : "fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1155",
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
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1155_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_169_1_fu_99", "Parent" : "314", "Child" : ["334"],
		"CDFG" : "fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_169_1",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_169_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "333"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_199_1_fu_107", "Parent" : "314", "Child" : ["336", "337"],
		"CDFG" : "fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_199_1",
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
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_199_1_fu_107.p503_1_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_199_1_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "335"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1156_fu_115", "Parent" : "314", "Child" : ["339"],
		"CDFG" : "fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1156",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1156_fu_115.flow_control_loop_pipe_sequential_init_U", "Parent" : "338"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121", "Parent" : "314", "Child" : ["341", "343", "346", "349", "350", "351", "352"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "343", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "346", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "343", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "346", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Parent" : "340", "Child" : ["342"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_180_1",
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
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Parent" : "340", "Child" : ["344", "345"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_185_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "344", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.p503p1_1_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.flow_control_loop_pipe_sequential_init_U", "Parent" : "343"},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Parent" : "340", "Child" : ["347", "348"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_206_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub66", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.p503p1_1_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "346"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121.mul_32ns_32ns_64_2_1_U688", "Parent" : "340"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121.mul_32ns_32ns_64_2_1_U689", "Parent" : "340"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121.mul_32ns_32ns_64_2_1_U690", "Parent" : "340"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_rdc_mont_fu_121.mul_32ns_32ns_64_2_1_U691", "Parent" : "340"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_152_fu_131", "Parent" : "314", "Child" : ["354", "356", "358", "359", "360", "361"],
		"CDFG" : "mp_mul_152",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "354", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "356", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "354", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "356", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_152_fu_131.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "353", "Child" : ["355"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "355", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_152_fu_131.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "354"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_152_fu_131.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "353", "Child" : ["357"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "357", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_152_fu_131.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "356"},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_152_fu_131.mul_32ns_32ns_64_2_1_U277", "Parent" : "353"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_152_fu_131.mul_32ns_32ns_64_2_1_U278", "Parent" : "353"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_152_fu_131.mul_32ns_32ns_64_2_1_U279", "Parent" : "353"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_mp_mul_152_fu_131.mul_32ns_32ns_64_2_1_U280", "Parent" : "353"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_169_1157_fu_138", "Parent" : "314", "Child" : ["363"],
		"CDFG" : "fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_169_1157",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1143.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_169_1157_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "362"},
	{"ID" : "364", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1156", "Parent" : "0", "Child" : ["365", "367", "370"],
		"CDFG" : "fpadd503_147",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "54",
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
					{"ID" : "365", "SubInstance" : "grp_fpadd503_147_Pipeline_VITIS_LOOP_23_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "365", "SubInstance" : "grp_fpadd503_147_Pipeline_VITIS_LOOP_23_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "367", "SubInstance" : "grp_fpadd503_147_Pipeline_VITIS_LOOP_28_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "370", "SubInstance" : "grp_fpadd503_147_Pipeline_VITIS_LOOP_34_3_fu_48", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "grp_fpadd503_147_Pipeline_VITIS_LOOP_28_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "370", "SubInstance" : "grp_fpadd503_147_Pipeline_VITIS_LOOP_34_3_fu_48", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1156.grp_fpadd503_147_Pipeline_VITIS_LOOP_23_1_fu_28", "Parent" : "364", "Child" : ["366"],
		"CDFG" : "fpadd503_147_Pipeline_VITIS_LOOP_23_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_23_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1156.grp_fpadd503_147_Pipeline_VITIS_LOOP_23_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1156.grp_fpadd503_147_Pipeline_VITIS_LOOP_28_2_fu_38", "Parent" : "364", "Child" : ["368", "369"],
		"CDFG" : "fpadd503_147_Pipeline_VITIS_LOOP_28_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_211_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1156.grp_fpadd503_147_Pipeline_VITIS_LOOP_28_2_fu_38.p503x2_1_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1156.grp_fpadd503_147_Pipeline_VITIS_LOOP_28_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "367"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1156.grp_fpadd503_147_Pipeline_VITIS_LOOP_34_3_fu_48", "Parent" : "364", "Child" : ["371", "372"],
		"CDFG" : "fpadd503_147_Pipeline_VITIS_LOOP_34_3",
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
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1156.grp_fpadd503_147_Pipeline_VITIS_LOOP_34_3_fu_48.p503x2_1_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1156.grp_fpadd503_147_Pipeline_VITIS_LOOP_34_3_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "370"},
	{"ID" : "373", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167", "Parent" : "0", "Child" : ["374", "375", "376", "377", "378", "379", "381", "383", "385", "387", "390", "392", "401", "410", "423"],
		"CDFG" : "fp2sqr503_mont_70_71",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "460", "EstimateLatencyMax" : "720",
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
					{"ID" : "379", "SubInstance" : "grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1_fu_52", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "385", "SubInstance" : "grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_47_1_fu_74", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "390", "SubInstance" : "grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1127_fu_92", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "410", "SubInstance" : "grp_rdc_mont_fu_114", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "379", "SubInstance" : "grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1_fu_52", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "385", "SubInstance" : "grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_47_1_fu_74", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "401", "SubInstance" : "grp_mp_mul_1107_fu_106", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "423", "SubInstance" : "grp_rdc_mont_fu_123", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "387", "SubInstance" : "grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_53_2_fu_84", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "410", "SubInstance" : "grp_rdc_mont_fu_114", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "423", "SubInstance" : "grp_rdc_mont_fu_123", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}]},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.temp_U", "Parent" : "373"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.temp_60_U", "Parent" : "373"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.t1_U", "Parent" : "373"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.t2_U", "Parent" : "373"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.t3_U", "Parent" : "373"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1_fu_52", "Parent" : "373", "Child" : ["380"],
		"CDFG" : "fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "379"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_5_fu_62", "Parent" : "373", "Child" : ["382"],
		"CDFG" : "fp2sqr503_mont_70_71_Pipeline_5",
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
			{"Name" : "temp_60", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_5_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "381"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_6_fu_68", "Parent" : "373", "Child" : ["384"],
		"CDFG" : "fp2sqr503_mont_70_71_Pipeline_6",
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
			{"Name" : "temp", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_6_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "383"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_47_1_fu_74", "Parent" : "373", "Child" : ["386"],
		"CDFG" : "fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_47_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
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
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_47_1_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_53_2_fu_84", "Parent" : "373", "Child" : ["388", "389"],
		"CDFG" : "fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_53_2",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_53_2_fu_84.p503x2_1_U", "Parent" : "387"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_53_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "387"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1127_fu_92", "Parent" : "373", "Child" : ["391"],
		"CDFG" : "fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1127",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1127_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "390"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_152_fu_99", "Parent" : "373", "Child" : ["393", "395", "397", "398", "399", "400"],
		"CDFG" : "mp_mul_152",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "393", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "395", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "393", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "395", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "392", "Child" : ["394"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "393"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "392", "Child" : ["396"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "396", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "395"},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U277", "Parent" : "392"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U278", "Parent" : "392"},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U279", "Parent" : "392"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U280", "Parent" : "392"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_1107_fu_106", "Parent" : "373", "Child" : ["402", "404", "406", "407", "408", "409"],
		"CDFG" : "mp_mul_1107",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "402", "SubInstance" : "grp_mp_mul_1107_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "404", "SubInstance" : "grp_mp_mul_1107_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "402", "SubInstance" : "grp_mp_mul_1107_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "404", "SubInstance" : "grp_mp_mul_1107_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_1107_fu_106.grp_mp_mul_1107_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "401", "Child" : ["403"],
		"CDFG" : "mp_mul_1107_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "403", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_1107_fu_106.grp_mp_mul_1107_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "402"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_1107_fu_106.grp_mp_mul_1107_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "401", "Child" : ["405"],
		"CDFG" : "mp_mul_1107_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "405", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_1107_fu_106.grp_mp_mul_1107_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "404"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_1107_fu_106.mul_32ns_32ns_64_2_1_U842", "Parent" : "401"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_1107_fu_106.mul_32ns_32ns_64_2_1_U843", "Parent" : "401"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_1107_fu_106.mul_32ns_32ns_64_2_1_U844", "Parent" : "401"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_mp_mul_1107_fu_106.mul_32ns_32ns_64_2_1_U845", "Parent" : "401"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114", "Parent" : "373", "Child" : ["411", "413", "416", "419", "420", "421", "422"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "411", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "413", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "416", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "413", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "416", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Parent" : "410", "Child" : ["412"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_180_1",
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
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "412", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Parent" : "410", "Child" : ["414", "415"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_185_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "414", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.p503p1_1_U", "Parent" : "413"},
	{"ID" : "415", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.flow_control_loop_pipe_sequential_init_U", "Parent" : "413"},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Parent" : "410", "Child" : ["417", "418"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_206_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub66", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "417", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.p503p1_1_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "416"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114.mul_32ns_32ns_64_2_1_U688", "Parent" : "410"},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114.mul_32ns_32ns_64_2_1_U689", "Parent" : "410"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114.mul_32ns_32ns_64_2_1_U690", "Parent" : "410"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_114.mul_32ns_32ns_64_2_1_U691", "Parent" : "410"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123", "Parent" : "373", "Child" : ["424", "426", "429", "432", "433", "434", "435"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "424", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "426", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "429", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "426", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "429", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Parent" : "423", "Child" : ["425"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_180_1",
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
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "425", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "424"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Parent" : "423", "Child" : ["427", "428"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_185_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "427", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.p503p1_1_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.flow_control_loop_pipe_sequential_init_U", "Parent" : "426"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Parent" : "423", "Child" : ["430", "431"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_206_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub66", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "430", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.p503p1_1_U", "Parent" : "429"},
	{"ID" : "431", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "429"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123.mul_32ns_32ns_64_2_1_U688", "Parent" : "423"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123.mul_32ns_32ns_64_2_1_U689", "Parent" : "423"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123.mul_32ns_32ns_64_2_1_U690", "Parent" : "423"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1167.grp_rdc_mont_fu_123.mul_32ns_32ns_64_2_1_U691", "Parent" : "423"},
	{"ID" : "436", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1177", "Parent" : "0", "Child" : ["437", "439", "442"],
		"CDFG" : "fpadd503",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "54",
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
					{"ID" : "437", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_23_1_fu_38", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "437", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_23_1_fu_38", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "437", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_23_1_fu_38", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "439", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_28_2_fu_52", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "442", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_34_3_fu_61", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "439", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_28_2_fu_52", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "442", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_34_3_fu_61", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1177.grp_fpadd503_Pipeline_VITIS_LOOP_23_1_fu_38", "Parent" : "436", "Child" : ["438"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_23_1",
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
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_23_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1177.grp_fpadd503_Pipeline_VITIS_LOOP_23_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "437"},
	{"ID" : "439", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1177.grp_fpadd503_Pipeline_VITIS_LOOP_28_2_fu_52", "Parent" : "436", "Child" : ["440", "441"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_28_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_223_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1177.grp_fpadd503_Pipeline_VITIS_LOOP_28_2_fu_52.p503x2_1_U", "Parent" : "439"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1177.grp_fpadd503_Pipeline_VITIS_LOOP_28_2_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "439"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1177.grp_fpadd503_Pipeline_VITIS_LOOP_34_3_fu_61", "Parent" : "436", "Child" : ["443", "444"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_34_3",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1177.grp_fpadd503_Pipeline_VITIS_LOOP_34_3_fu_61.p503x2_1_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1177.grp_fpadd503_Pipeline_VITIS_LOOP_34_3_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "442"},
	{"ID" : "445", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192", "Parent" : "0", "Child" : ["446", "447", "448", "449", "450", "451", "456", "461", "463", "465", "467", "470", "472", "485", "494", "496", "497", "498", "499"],
		"CDFG" : "fp2mul503_mont_72_73_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "927", "EstimateLatencyMax" : "1425",
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
					{"ID" : "451", "SubInstance" : "grp_mp_mul_3_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "461", "SubInstance" : "grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1_fu_75", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "472", "SubInstance" : "grp_rdc_mont_fu_113", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "456", "SubInstance" : "grp_mp_mul_1_fu_66", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "461", "SubInstance" : "grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1_fu_75", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "472", "SubInstance" : "grp_rdc_mont_fu_113", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "451", "SubInstance" : "grp_mp_mul_3_fu_56", "Port" : "R_X", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "456", "SubInstance" : "grp_mp_mul_1_fu_66", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "463", "SubInstance" : "grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1149_fu_84", "Port" : "R_X", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "467", "SubInstance" : "grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_199_1_fu_99", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "472", "SubInstance" : "grp_rdc_mont_fu_113", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.t1_U", "Parent" : "445"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.t2_U", "Parent" : "445"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.tt1_U", "Parent" : "445"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.tt2_U", "Parent" : "445"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.tt3_U", "Parent" : "445"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_3_fu_56", "Parent" : "445", "Child" : ["452", "454"],
		"CDFG" : "mp_mul_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "452", "SubInstance" : "grp_mp_mul_3_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "454", "SubInstance" : "grp_mp_mul_3_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "452", "SubInstance" : "grp_mp_mul_3_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "454", "SubInstance" : "grp_mp_mul_3_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "R_X", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_3_fu_56.grp_mp_mul_3_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "451", "Child" : ["453"],
		"CDFG" : "mp_mul_3_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_83_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "453", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_3_fu_56.grp_mp_mul_3_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "452"},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_3_fu_56.grp_mp_mul_3_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "451", "Child" : ["455"],
		"CDFG" : "mp_mul_3_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "455", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_3_fu_56.grp_mp_mul_3_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "454"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_1_fu_66", "Parent" : "445", "Child" : ["457", "459"],
		"CDFG" : "mp_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "227", "EstimateLatencyMax" : "325",
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
					{"ID" : "457", "SubInstance" : "grp_mp_mul_1_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "459", "SubInstance" : "grp_mp_mul_1_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "457", "SubInstance" : "grp_mp_mul_1_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "459", "SubInstance" : "grp_mp_mul_1_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "R_X", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_1_fu_66.grp_mp_mul_1_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "456", "Child" : ["458"],
		"CDFG" : "mp_mul_1_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_92_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "458", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_1_fu_66.grp_mp_mul_1_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "457"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_1_fu_66.grp_mp_mul_1_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "456", "Child" : ["460"],
		"CDFG" : "mp_mul_1_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "460", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_1_fu_66.grp_mp_mul_1_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "459"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1_fu_75", "Parent" : "445", "Child" : ["462"],
		"CDFG" : "fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "461"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1149_fu_84", "Parent" : "445", "Child" : ["464"],
		"CDFG" : "fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1149",
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
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1149_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "463"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_169_1_fu_91", "Parent" : "445", "Child" : ["466"],
		"CDFG" : "fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_169_1",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_169_1_fu_91.flow_control_loop_pipe_sequential_init_U", "Parent" : "465"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_199_1_fu_99", "Parent" : "445", "Child" : ["468", "469"],
		"CDFG" : "fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_199_1",
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
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_199_1_fu_99.p503_1_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_199_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "467"},
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1150_fu_107", "Parent" : "445", "Child" : ["471"],
		"CDFG" : "fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1150",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1150_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "470"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113", "Parent" : "445", "Child" : ["473", "475", "478", "481", "482", "483", "484"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "473", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "475", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "478", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "475", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "478", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Parent" : "472", "Child" : ["474"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_180_1",
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
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "474", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "473"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Parent" : "472", "Child" : ["476", "477"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_185_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "476", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.p503p1_1_U", "Parent" : "475"},
	{"ID" : "477", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.flow_control_loop_pipe_sequential_init_U", "Parent" : "475"},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Parent" : "472", "Child" : ["479", "480"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_206_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub66", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "479", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.p503p1_1_U", "Parent" : "478"},
	{"ID" : "480", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "478"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113.mul_32ns_32ns_64_2_1_U688", "Parent" : "472"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113.mul_32ns_32ns_64_2_1_U689", "Parent" : "472"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113.mul_32ns_32ns_64_2_1_U690", "Parent" : "472"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_rdc_mont_fu_113.mul_32ns_32ns_64_2_1_U691", "Parent" : "472"},
	{"ID" : "485", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_152_fu_123", "Parent" : "445", "Child" : ["486", "488", "490", "491", "492", "493"],
		"CDFG" : "mp_mul_152",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "486", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "488", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "486", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "488", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_152_fu_123.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "485", "Child" : ["487"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "487", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_152_fu_123.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "486"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_152_fu_123.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "485", "Child" : ["489"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "489", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_152_fu_123.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "488"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_152_fu_123.mul_32ns_32ns_64_2_1_U277", "Parent" : "485"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_152_fu_123.mul_32ns_32ns_64_2_1_U278", "Parent" : "485"},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_152_fu_123.mul_32ns_32ns_64_2_1_U279", "Parent" : "485"},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_mp_mul_152_fu_123.mul_32ns_32ns_64_2_1_U280", "Parent" : "485"},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_169_1151_fu_130", "Parent" : "445", "Child" : ["495"],
		"CDFG" : "fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_169_1151",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_169_1151_fu_130.flow_control_loop_pipe_sequential_init_U", "Parent" : "494"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.mul_32ns_32ns_64_2_1_U935", "Parent" : "445"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.mul_32ns_32ns_64_2_1_U936", "Parent" : "445"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.mul_32ns_32ns_64_2_1_U937", "Parent" : "445"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1192.mul_32ns_32ns_64_2_1_U938", "Parent" : "445"},
	{"ID" : "500", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205", "Parent" : "0", "Child" : ["501", "502", "503", "504", "505", "506", "515", "517", "519", "521", "524", "526", "539", "548"],
		"CDFG" : "fp2mul503_mont_1339777",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "942", "EstimateLatencyMax" : "1440",
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
					{"ID" : "506", "SubInstance" : "grp_mp_mul_14785_fu_56", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "515", "SubInstance" : "grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1_fu_72", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "526", "SubInstance" : "grp_rdc_mont_14183_fu_108", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "grp_mp_mul_14785_fu_56", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "517", "SubInstance" : "grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1176_fu_79", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "521", "SubInstance" : "grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_199_1_fu_94", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "526", "SubInstance" : "grp_rdc_mont_14183_fu_108", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.t1_U", "Parent" : "500"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.t2_U", "Parent" : "500"},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.tt1_U", "Parent" : "500"},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.tt2_U", "Parent" : "500"},
	{"ID" : "505", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.tt3_U", "Parent" : "500"},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_14785_fu_56", "Parent" : "500", "Child" : ["507", "509", "511", "512", "513", "514"],
		"CDFG" : "mp_mul_14785",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "227", "EstimateLatencyMax" : "325",
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
					{"ID" : "507", "SubInstance" : "grp_mp_mul_14785_Pipeline_VITIS_LOOP_144_2_fu_134", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "509", "SubInstance" : "grp_mp_mul_14785_Pipeline_VITIS_LOOP_157_4_fu_151", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "507", "SubInstance" : "grp_mp_mul_14785_Pipeline_VITIS_LOOP_144_2_fu_134", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "509", "SubInstance" : "grp_mp_mul_14785_Pipeline_VITIS_LOOP_157_4_fu_151", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_14785_fu_56.grp_mp_mul_14785_Pipeline_VITIS_LOOP_144_2_fu_134", "Parent" : "506", "Child" : ["508"],
		"CDFG" : "mp_mul_14785_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "508", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_14785_fu_56.grp_mp_mul_14785_Pipeline_VITIS_LOOP_144_2_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "507"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_14785_fu_56.grp_mp_mul_14785_Pipeline_VITIS_LOOP_157_4_fu_151", "Parent" : "506", "Child" : ["510"],
		"CDFG" : "mp_mul_14785_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln145", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "510", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_14785_fu_56.grp_mp_mul_14785_Pipeline_VITIS_LOOP_157_4_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "509"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_14785_fu_56.mul_32ns_32ns_64_2_1_U775", "Parent" : "506"},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_14785_fu_56.mul_32ns_32ns_64_2_1_U776", "Parent" : "506"},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_14785_fu_56.mul_32ns_32ns_64_2_1_U777", "Parent" : "506"},
	{"ID" : "514", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_14785_fu_56.mul_32ns_32ns_64_2_1_U778", "Parent" : "506"},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1_fu_72", "Parent" : "500", "Child" : ["516"],
		"CDFG" : "fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "516", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "515"},
	{"ID" : "517", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1176_fu_79", "Parent" : "500", "Child" : ["518"],
		"CDFG" : "fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1176",
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
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1176_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "517"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_169_1_fu_86", "Parent" : "500", "Child" : ["520"],
		"CDFG" : "fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_169_1",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_169_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "519"},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_199_1_fu_94", "Parent" : "500", "Child" : ["522", "523"],
		"CDFG" : "fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_199_1",
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
			{"Name" : "tt3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_199_1_fu_94.p503_1_U", "Parent" : "521"},
	{"ID" : "523", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_199_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "521"},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1177_fu_102", "Parent" : "500", "Child" : ["525"],
		"CDFG" : "fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1177",
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
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_349_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "525", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1177_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "524"},
	{"ID" : "526", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108", "Parent" : "500", "Child" : ["527", "529", "532", "535", "536", "537", "538"],
		"CDFG" : "rdc_mont_14183",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "352",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ma", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "527", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "529", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "532", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "529", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "532", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "527", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190", "Parent" : "526", "Child" : ["528"],
		"CDFG" : "rdc_mont_14183_Pipeline_VITIS_LOOP_180_1",
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
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_180_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "528", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "527"},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Parent" : "526", "Child" : ["530", "531"],
		"CDFG" : "rdc_mont_14183_Pipeline_VITIS_LOOP_185_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "530", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199.p503p1_1_U", "Parent" : "529"},
	{"ID" : "531", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "529"},
	{"ID" : "532", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Parent" : "526", "Child" : ["533", "534"],
		"CDFG" : "rdc_mont_14183_Pipeline_VITIS_LOOP_206_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub66", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "533", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216.p503p1_1_U", "Parent" : "532"},
	{"ID" : "534", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "532"},
	{"ID" : "535", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U320", "Parent" : "526"},
	{"ID" : "536", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U321", "Parent" : "526"},
	{"ID" : "537", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U322", "Parent" : "526"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U323", "Parent" : "526"},
	{"ID" : "539", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_152_fu_120", "Parent" : "500", "Child" : ["540", "542", "544", "545", "546", "547"],
		"CDFG" : "mp_mul_152",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "310",
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
					{"ID" : "540", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "542", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "540", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "542", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "540", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "539", "Child" : ["541"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_017", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "indvars_iv31", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_95_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "541", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "540"},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "539", "Child" : ["543"],
		"CDFG" : "mp_mul_152_Pipeline_VITIS_LOOP_157_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "v_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_34_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_33_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "543", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "542"},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U277", "Parent" : "539"},
	{"ID" : "545", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U278", "Parent" : "539"},
	{"ID" : "546", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U279", "Parent" : "539"},
	{"ID" : "547", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U280", "Parent" : "539"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_169_1178_fu_127", "Parent" : "500", "Child" : ["549"],
		"CDFG" : "fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_169_1178",
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
			{"Name" : "tt2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tt1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "549", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1205.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_169_1178_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "548"}]}


set ArgLastReadFirstWriteLatency {
	LADDER3PT_1 {
		PKB {Type I LastRead 0 FirstWrite -1}
		ephemeralsk {Type I LastRead 24 FirstWrite -1}
		R_X {Type IO LastRead 1 FirstWrite -1}
		R_Z {Type IO LastRead 1 FirstWrite -1}
		A {Type I LastRead 0 FirstWrite -1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_1_Pipeline_1 {
		A24_2 {Type O LastRead -1 FirstWrite 0}
		A24 {Type O LastRead -1 FirstWrite 0}}
	LADDER3PT_1_Pipeline_VITIS_LOOP_14_1 {
		A24 {Type O LastRead -1 FirstWrite 1}
		A24_2 {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_58_60 {
		c_0 {Type IO LastRead 0 FirstWrite 3}
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 3}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_58_60_Pipeline_VITIS_LOOP_23_1 {
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 3}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 3}}
	fpadd503_58_60_Pipeline_VITIS_LOOP_28_2 {
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 3}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 3}
		carry_out {Type O LastRead -1 FirstWrite 2}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_58_60_Pipeline_VITIS_LOOP_34_3 {
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 3}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 3}
		sext_ln21 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_1_Pipeline_VITIS_LOOP_14_1223 {
		PKB {Type I LastRead 0 FirstWrite -1}
		R0_X {Type O LastRead -1 FirstWrite 1}}
	LADDER3PT_1_Pipeline_VITIS_LOOP_14_1225 {
		R0_Z {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_1_Pipeline_VITIS_LOOP_14_1224 {
		PKB {Type I LastRead 0 FirstWrite -1}
		R0_X {Type O LastRead -1 FirstWrite 1}}
	LADDER3PT_1_Pipeline_VITIS_LOOP_14_1228 {
		R2_Z {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_60_6167 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 2}
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 2}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_60_6167_Pipeline_VITIS_LOOP_23_1 {
		a_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 2}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 2}}
	fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2 {
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 3}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 3}
		carry_out {Type O LastRead -1 FirstWrite 2}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3 {
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 3}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 3}
		sext_ln21 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_1_Pipeline_VITIS_LOOP_14_1226 {
		PKB {Type I LastRead 0 FirstWrite -1}
		R2_X {Type O LastRead -1 FirstWrite 1}}
	LADDER3PT_1_Pipeline_VITIS_LOOP_14_1231 {
		R_Z {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_1_Pipeline_VITIS_LOOP_14_1227 {
		PKB {Type I LastRead 0 FirstWrite -1}
		R2_X_4 {Type O LastRead -1 FirstWrite 1}}
	LADDER3PT_1_Pipeline_VITIS_LOOP_23_1 {
		R_Z {Type O LastRead -1 FirstWrite 0}}
	fp2div2_503 {
		c_0 {Type IO LastRead 6 FirstWrite 1}
		c_1 {Type IO LastRead 12 FirstWrite 1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2div2_503_Pipeline_VITIS_LOOP_78_1 {
		c_0 {Type IO LastRead 0 FirstWrite 3}
		c_1 {Type IO LastRead 0 FirstWrite 3}
		sext_ln75 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2div2_503_Pipeline_VITIS_LOOP_382_1 {
		c_1 {Type IO LastRead 1 FirstWrite 1}
		c_0 {Type IO LastRead 1 FirstWrite 1}}
	fp2div2_503_Pipeline_VITIS_LOOP_78_1212 {
		c_0 {Type IO LastRead 0 FirstWrite 3}
		c_1 {Type IO LastRead 0 FirstWrite 3}
		sext_ln75_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2div2_503_Pipeline_VITIS_LOOP_382_1213 {
		c_1 {Type IO LastRead 1 FirstWrite 1}
		c_0 {Type IO LastRead 1 FirstWrite 1}}
	LADDER3PT_1_Pipeline_VITIS_LOOP_14_1229 {
		PKB {Type I LastRead 0 FirstWrite -1}
		R_X {Type O LastRead -1 FirstWrite 1}}
	LADDER3PT_1_Pipeline_VITIS_LOOP_14_1230 {
		PKB {Type I LastRead 0 FirstWrite -1}
		R_X {Type O LastRead -1 FirstWrite 1}}
	LADDER3PT_1_Pipeline_VITIS_LOOP_267_1 {
		R2_X {Type IO LastRead 0 FirstWrite 2}
		R2_X_4 {Type IO LastRead 0 FirstWrite 2}
		R2_Z {Type IO LastRead 0 FirstWrite 2}
		R2_Z_4 {Type IO LastRead 0 FirstWrite 2}
		R_X {Type IO LastRead 1 FirstWrite 2}
		sext_ln288 {Type I LastRead 0 FirstWrite -1}
		R_Z {Type IO LastRead 1 FirstWrite 2}}
	fpadd503_15181 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset2 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_15181_Pipeline_VITIS_LOOP_23_1 {
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b_offset2 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	fpadd503_15181_Pipeline_VITIS_LOOP_28_2 {
		c_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}
		carry_190_out {Type O LastRead -1 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_15181_Pipeline_VITIS_LOOP_34_3 {
		c_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}
		sext_ln21 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_143 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_143_Pipeline_VITIS_LOOP_47_1 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fpsub503_143_Pipeline_VITIS_LOOP_53_2 {
		c_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}
		sext_ln45 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_14679 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset2 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_14679_Pipeline_VITIS_LOOP_47_1 {
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b_offset2 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fpsub503_14679_Pipeline_VITIS_LOOP_53_2 {
		c_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}
		sext_ln45 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_148 {
		c {Type IO LastRead 0 FirstWrite 2}
		b {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_148_Pipeline_VITIS_LOOP_23_1 {
		c {Type IO LastRead 0 FirstWrite 2}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_148_Pipeline_VITIS_LOOP_28_2 {
		c {Type IO LastRead 0 FirstWrite 2}
		carry_208_out {Type O LastRead -1 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_148_Pipeline_VITIS_LOOP_34_3 {
		c {Type IO LastRead 0 FirstWrite 2}
		sext_ln21 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpcorrection503 {
		a {Type IO LastRead 0 FirstWrite 2}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fpcorrection503_Pipeline_VITIS_LOOP_91_1 {
		a_offset {Type I LastRead 0 FirstWrite -1}
		a {Type IO LastRead 0 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fpcorrection503_Pipeline_VITIS_LOOP_97_2 {
		a_offset {Type I LastRead 0 FirstWrite -1}
		a {Type IO LastRead 0 FirstWrite 2}
		sext_ln89 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont {
		a {Type I LastRead 1 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1 {
		a {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 2}}
	fp2sqr503_mont_Pipeline_5 {
		temp_64 {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_Pipeline_6 {
		temp {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_47_1 {
		a {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_53_2 {
		t2 {Type IO LastRead 0 FirstWrite 2}
		sext_ln45 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1136 {
		a {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 2}}
	mp_mul_152 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_152_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 7}
		u_95_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_152_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	mp_mul_150 {
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_150_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 1 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 8}
		u_95_out {Type IO LastRead 8 FirstWrite 0}
		t_out {Type IO LastRead 9 FirstWrite 0}}
	mp_mul_150_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 1 FirstWrite -1}
		i_25 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 8}
		u_34_out {Type IO LastRead 8 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 8}}
	rdc_mont_14183 {
		ma {Type I LastRead 5 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset1 {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_14183_Pipeline_VITIS_LOOP_180_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		mc_offset1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_14183_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_11 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		mc_offset1 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_59_out {Type O LastRead -1 FirstWrite 8}
		u_53_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_14183_Pipeline_VITIS_LOOP_206_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_56 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub66 {Type I LastRead 0 FirstWrite -1}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_63_out {Type O LastRead -1 FirstWrite 8}
		u_46_out {Type O LastRead -1 FirstWrite 8}
		t_30_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_133_2 {
		c {Type IO LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_148 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_148_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 1 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		zext_ln145 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 8}
		u_95_out {Type IO LastRead 8 FirstWrite 0}
		t_out {Type IO LastRead 9 FirstWrite 0}}
	mp_mul_148_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		zext_ln145_23 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 1 FirstWrite -1}
		i_25 {Type I LastRead 0 FirstWrite -1}
		zext_ln145 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 8}
		u_34_out {Type IO LastRead 8 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 8}}
	fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1179 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_169_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 1 FirstWrite 4}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1180 {
		tt1 {Type IO LastRead 0 FirstWrite 2}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_140 {
		ma {Type I LastRead 5 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_140_Pipeline_VITIS_LOOP_180_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_140_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_11 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_68_out {Type O LastRead -1 FirstWrite 8}
		u_54_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_140_Pipeline_VITIS_LOOP_206_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_56 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub66 {Type I LastRead 0 FirstWrite -1}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_72_out {Type O LastRead -1 FirstWrite 8}
		u_46_out {Type O LastRead -1 FirstWrite 8}
		t_30_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_152 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_152_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 7}
		u_95_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_152_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_169_1181 {
		tt2 {Type IO LastRead 0 FirstWrite 2}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_64_65 {
		c {Type IO LastRead 1 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 7}
		u_95_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		zext_ln145 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1158 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_169_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 1 FirstWrite 4}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1159 {
		tt1 {Type IO LastRead 0 FirstWrite 2}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_140 {
		ma {Type I LastRead 5 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_140_Pipeline_VITIS_LOOP_180_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_140_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_11 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		mc_offset {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_68_out {Type O LastRead -1 FirstWrite 8}
		u_54_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_140_Pipeline_VITIS_LOOP_206_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_56 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub66 {Type I LastRead 0 FirstWrite -1}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_72_out {Type O LastRead -1 FirstWrite 8}
		u_46_out {Type O LastRead -1 FirstWrite 8}
		t_30_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_152 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_152_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 7}
		u_95_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_152_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_169_1160 {
		tt2 {Type IO LastRead 0 FirstWrite 2}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fpsub503 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_Pipeline_VITIS_LOOP_47_1 {
		a_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fpsub503_Pipeline_VITIS_LOOP_53_2 {
		c {Type IO LastRead 0 FirstWrite 2}
		sext_ln45 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont {
		c {Type IO LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_146 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		b_offset2 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_146_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 1 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		zext_ln145 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 8}
		u_95_out {Type IO LastRead 8 FirstWrite 0}
		t_out {Type IO LastRead 9 FirstWrite 0}}
	mp_mul_146_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		zext_ln145_27 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 1 FirstWrite -1}
		i_25 {Type I LastRead 0 FirstWrite -1}
		zext_ln145 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 8}
		u_34_out {Type IO LastRead 8 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 8}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_349_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_349_1209 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_169_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 1 FirstWrite 4}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_349_1210 {
		tt1 {Type IO LastRead 0 FirstWrite 2}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_14183 {
		ma {Type I LastRead 5 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset1 {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_14183_Pipeline_VITIS_LOOP_180_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		mc_offset1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_14183_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_11 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		mc_offset1 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_59_out {Type O LastRead -1 FirstWrite 8}
		u_53_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_14183_Pipeline_VITIS_LOOP_206_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_56 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub66 {Type I LastRead 0 FirstWrite -1}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_63_out {Type O LastRead -1 FirstWrite 8}
		u_46_out {Type O LastRead -1 FirstWrite 8}
		t_30_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_152 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_152_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 7}
		u_95_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_152_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_169_1211 {
		tt2 {Type IO LastRead 0 FirstWrite 2}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_66_69 {
		a {Type I LastRead 1 FirstWrite -1}
		b_0 {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 1 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_67_68 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_0_offset {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		b_1_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_67_68_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		zext_ln145_11 {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		zext_ln145 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		v_94_out {Type O LastRead -1 FirstWrite 7}
		u_71_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_67_68_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		zext_ln145_12 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		i_17 {Type I LastRead 0 FirstWrite -1}
		zext_ln145_11 {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		zext_ln145 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1 {
		a {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1155 {
		b_0 {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 3}}
	fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_169_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 1 FirstWrite 4}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1156 {
		tt1 {Type IO LastRead 0 FirstWrite 2}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 5 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_180_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_11 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_104_out {Type O LastRead -1 FirstWrite 8}
		u_54_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_206_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_56 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub66 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_108_out {Type O LastRead -1 FirstWrite 8}
		u_46_out {Type O LastRead -1 FirstWrite 8}
		t_30_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_152 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_152_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 7}
		u_95_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_152_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_169_1157 {
		tt2 {Type IO LastRead 0 FirstWrite 2}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fpadd503_147 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}
		c_offset1 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_147_Pipeline_VITIS_LOOP_23_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c_offset1 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}}
	fpadd503_147_Pipeline_VITIS_LOOP_28_2 {
		c_offset1 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}
		carry_211_out {Type O LastRead -1 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_147_Pipeline_VITIS_LOOP_34_3 {
		c_offset1 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}
		sext_ln21 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_70_71 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 2}}
	fp2sqr503_mont_70_71_Pipeline_5 {
		temp_60 {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_70_71_Pipeline_6 {
		temp {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_47_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_53_2 {
		t2 {Type IO LastRead 0 FirstWrite 2}
		sext_ln45 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1127 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 2}}
	mp_mul_152 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_152_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 7}
		u_95_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_152_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	mp_mul_1107 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_1107_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 7}
		u_95_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_1107_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	rdc_mont {
		ma {Type I LastRead 5 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_180_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_11 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_104_out {Type O LastRead -1 FirstWrite 8}
		u_54_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_206_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_56 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub66 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_108_out {Type O LastRead -1 FirstWrite 8}
		u_46_out {Type O LastRead -1 FirstWrite 8}
		t_30_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 5 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_180_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_11 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_104_out {Type O LastRead -1 FirstWrite 8}
		u_54_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_206_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_56 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub66 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_108_out {Type O LastRead -1 FirstWrite 8}
		u_46_out {Type O LastRead -1 FirstWrite 8}
		t_30_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 2}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_23_1 {
		a_offset {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	fpadd503_Pipeline_VITIS_LOOP_28_2 {
		c {Type IO LastRead 0 FirstWrite 2}
		carry_223_out {Type O LastRead -1 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_34_3 {
		c {Type IO LastRead 0 FirstWrite 2}
		sext_ln21 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_72_73_1 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 1 FirstWrite -1}
		R_X {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_3 {
		a {Type I LastRead 0 FirstWrite -1}
		R_X {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_3_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		R_X {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 7}
		u_83_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_3_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		i_21 {Type I LastRead 0 FirstWrite -1}
		R_X {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	mp_mul_1 {
		a {Type I LastRead 1 FirstWrite -1}
		R_X {Type I LastRead 1 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_1_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 1 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		R_X {Type I LastRead 1 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 8}
		u_92_out {Type IO LastRead 8 FirstWrite 0}
		t_out {Type IO LastRead 9 FirstWrite 0}}
	mp_mul_1_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 1 FirstWrite -1}
		i_24 {Type I LastRead 0 FirstWrite -1}
		R_X {Type I LastRead 1 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 8}
		u_34_out {Type IO LastRead 8 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 8}}
	fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1149 {
		R_X {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_169_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 1 FirstWrite 4}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1150 {
		tt1 {Type IO LastRead 0 FirstWrite 2}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 5 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_180_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_11 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_104_out {Type O LastRead -1 FirstWrite 8}
		u_54_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_206_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_56 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub66 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_108_out {Type O LastRead -1 FirstWrite 8}
		u_46_out {Type O LastRead -1 FirstWrite 8}
		t_30_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_152 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_152_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 7}
		u_95_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_152_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_169_1151 {
		tt2 {Type IO LastRead 0 FirstWrite 2}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_1339777 {
		c {Type IO LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_14785 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_14785_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 1 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		zext_ln145 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 8}
		u_95_out {Type IO LastRead 8 FirstWrite 0}
		t_out {Type IO LastRead 9 FirstWrite 0}}
	mp_mul_14785_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		zext_ln145_25 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 1 FirstWrite -1}
		i_25 {Type I LastRead 0 FirstWrite -1}
		zext_ln145 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 8}
		u_34_out {Type IO LastRead 8 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 8}}
	fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1176 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_169_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 2}
		borrow_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_199_1 {
		tt3 {Type IO LastRead 1 FirstWrite 4}
		sext_ln191 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1177 {
		tt1 {Type IO LastRead 0 FirstWrite 2}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_14183 {
		ma {Type I LastRead 5 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		mc_offset1 {Type I LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_14183_Pipeline_VITIS_LOOP_180_1 {
		mc {Type O LastRead -1 FirstWrite 0}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		mc_offset1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_14183_Pipeline_VITIS_LOOP_185_3 {
		v_025 {Type I LastRead 0 FirstWrite -1}
		u_024 {Type I LastRead 0 FirstWrite -1}
		i_11 {Type I LastRead 0 FirstWrite -1}
		add_ln185 {Type I LastRead 0 FirstWrite -1}
		mc_offset1 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_59_out {Type O LastRead -1 FirstWrite 8}
		u_53_out {Type O LastRead -1 FirstWrite 8}
		t_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_14183_Pipeline_VITIS_LOOP_206_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_56 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub66 {Type I LastRead 0 FirstWrite -1}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_63_out {Type O LastRead -1 FirstWrite 8}
		u_46_out {Type O LastRead -1 FirstWrite 8}
		t_30_out {Type O LastRead -1 FirstWrite 8}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_152 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 2}}
	mp_mul_152_Pipeline_VITIS_LOOP_144_2 {
		v_017 {Type I LastRead 0 FirstWrite -1}
		zext_ln143 {Type I LastRead 0 FirstWrite -1}
		indvars_iv31 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 7}
		u_95_out {Type IO LastRead 7 FirstWrite 0}
		t_out {Type IO LastRead 8 FirstWrite 0}}
	mp_mul_152_Pipeline_VITIS_LOOP_157_4 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v {Type I LastRead 0 FirstWrite -1}
		zext_ln156 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		v_35_out {Type O LastRead -1 FirstWrite 7}
		u_34_out {Type IO LastRead 7 FirstWrite 0}
		t_33_out {Type O LastRead -1 FirstWrite 7}}
	fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_169_1178 {
		tt2 {Type IO LastRead 0 FirstWrite 2}
		tt1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1865694", "Max" : "2848194"}
	, {"Name" : "Interval", "Min" : "1865694", "Max" : "2848194"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	PKB { ap_memory {  { PKB_address0 mem_address 1 6 }  { PKB_ce0 mem_ce 1 1 }  { PKB_q0 mem_dout 0 64 } } }
	ephemeralsk { ap_memory {  { ephemeralsk_address0 mem_address 1 5 }  { ephemeralsk_ce0 mem_ce 1 1 }  { ephemeralsk_q0 mem_dout 0 8 }  { ephemeralsk_address1 MemPortADDR2 1 5 }  { ephemeralsk_ce1 MemPortCE2 1 1 }  { ephemeralsk_q1 MemPortDOUT2 0 8 } } }
	R_X { ap_memory {  { R_X_address0 mem_address 1 4 }  { R_X_ce0 mem_ce 1 1 }  { R_X_we0 mem_we 1 1 }  { R_X_d0 mem_din 1 64 }  { R_X_q0 mem_dout 0 64 }  { R_X_address1 MemPortADDR2 1 4 }  { R_X_ce1 MemPortCE2 1 1 }  { R_X_we1 MemPortWE2 1 1 }  { R_X_d1 MemPortDIN2 1 64 }  { R_X_q1 MemPortDOUT2 0 64 } } }
	R_Z { ap_memory {  { R_Z_address0 mem_address 1 4 }  { R_Z_ce0 mem_ce 1 1 }  { R_Z_we0 mem_we 1 1 }  { R_Z_d0 mem_din 1 64 }  { R_Z_q0 mem_dout 0 64 }  { R_Z_address1 MemPortADDR2 1 4 }  { R_Z_ce1 MemPortCE2 1 1 }  { R_Z_we1 MemPortWE2 1 1 }  { R_Z_d1 MemPortDIN2 1 64 }  { R_Z_q1 MemPortDOUT2 0 64 } } }
	A { ap_memory {  { A_address0 mem_address 1 4 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 64 } } }
}
