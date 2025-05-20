set moduleName LADDER3PT_74_75_1
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
set C_modelName {LADDER3PT.74.75.1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict ephemeralsk { MEM_WIDTH 8 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_X { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_Z { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ephemeralsk int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ R_X int 64 regular {array 16 { 2 2 } 1 1 }  }
	{ R_Z int 64 regular {array 16 { 2 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ephemeralsk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "R_X", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "R_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ephemeralsk_address0 sc_out sc_lv 5 signal 0 } 
	{ ephemeralsk_ce0 sc_out sc_logic 1 signal 0 } 
	{ ephemeralsk_q0 sc_in sc_lv 8 signal 0 } 
	{ ephemeralsk_address1 sc_out sc_lv 5 signal 0 } 
	{ ephemeralsk_ce1 sc_out sc_logic 1 signal 0 } 
	{ ephemeralsk_q1 sc_in sc_lv 8 signal 0 } 
	{ R_X_address0 sc_out sc_lv 4 signal 1 } 
	{ R_X_ce0 sc_out sc_logic 1 signal 1 } 
	{ R_X_we0 sc_out sc_logic 1 signal 1 } 
	{ R_X_d0 sc_out sc_lv 64 signal 1 } 
	{ R_X_q0 sc_in sc_lv 64 signal 1 } 
	{ R_X_address1 sc_out sc_lv 4 signal 1 } 
	{ R_X_ce1 sc_out sc_logic 1 signal 1 } 
	{ R_X_we1 sc_out sc_logic 1 signal 1 } 
	{ R_X_d1 sc_out sc_lv 64 signal 1 } 
	{ R_X_q1 sc_in sc_lv 64 signal 1 } 
	{ R_Z_address0 sc_out sc_lv 4 signal 2 } 
	{ R_Z_ce0 sc_out sc_logic 1 signal 2 } 
	{ R_Z_we0 sc_out sc_logic 1 signal 2 } 
	{ R_Z_d0 sc_out sc_lv 64 signal 2 } 
	{ R_Z_q0 sc_in sc_lv 64 signal 2 } 
	{ R_Z_address1 sc_out sc_lv 4 signal 2 } 
	{ R_Z_ce1 sc_out sc_logic 1 signal 2 } 
	{ R_Z_we1 sc_out sc_logic 1 signal 2 } 
	{ R_Z_d1 sc_out sc_lv 64 signal 2 } 
	{ R_Z_q1 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "R_Z_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "15", "18", "21", "24", "33", "36", "39", "48", "51", "54", "56", "59", "70", "73", "75", "77", "86", "92", "98", "107", "114", "164", "214", "264", "270", "320", "370", "379", "442", "451", "506"],
		"CDFG" : "LADDER3PT_74_75_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1865690", "EstimateLatencyMax" : "2848190",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ephemeralsk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1220_fu_893", "Port" : "R_X", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "21", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1221_fu_909", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "75", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_267_1_fu_1012", "Port" : "R_X", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "451", "SubInstance" : "grp_fp2mul503_mont_72_73_1_fu_1196", "Port" : "R_X", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1222_fu_998", "Port" : "R_Z", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "73", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_23_1_fu_1006", "Port" : "R_Z", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "75", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_267_1_fu_1012", "Port" : "R_Z", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "451", "SubInstance" : "grp_fp2mul503_mont_72_73_1_fu_1196", "Port" : "R_X", "Inst_start_state" : "48", "Inst_end_state" : "49"}]},
			{"Name" : "Montgomery_one_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1_fu_901", "Port" : "Montgomery_one_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "51", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1216_fu_971", "Port" : "Montgomery_one_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "56", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1219_fu_983", "Port" : "Montgomery_one_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "70", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1222_fu_998", "Port" : "Montgomery_one_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_fpadd503_58_60_fu_917", "Port" : "p503x2_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "39", "SubInstance" : "grp_fpadd503_60_6167_fu_945", "Port" : "p503x2_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "77", "SubInstance" : "grp_fpadd503_15181_fu_1025", "Port" : "p503x2_1", "Inst_start_state" : "24", "Inst_end_state" : "25"},
					{"ID" : "86", "SubInstance" : "grp_fpsub503_143_fu_1043", "Port" : "p503x2_1", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "92", "SubInstance" : "grp_fpsub503_14679_fu_1055", "Port" : "p503x2_1", "Inst_start_state" : "36", "Inst_end_state" : "37"},
					{"ID" : "98", "SubInstance" : "grp_fpadd503_148_fu_1073", "Port" : "p503x2_1", "Inst_start_state" : "28", "Inst_end_state" : "29"},
					{"ID" : "114", "SubInstance" : "grp_fp2sqr503_mont_fu_1091", "Port" : "p503x2_1", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "264", "SubInstance" : "grp_fpsub503_fu_1122", "Port" : "p503x2_1", "Inst_start_state" : "38", "Inst_end_state" : "39"},
					{"ID" : "370", "SubInstance" : "grp_fpadd503_147_fu_1160", "Port" : "p503x2_1", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "379", "SubInstance" : "grp_fp2sqr503_mont_70_71_fu_1171", "Port" : "p503x2_1", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "442", "SubInstance" : "grp_fpadd503_fu_1181", "Port" : "p503x2_1", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_fpadd503_60_6167_fu_945", "Port" : "a", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_fp2div2_503_fu_990", "Port" : "p503_1", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "107", "SubInstance" : "grp_fpcorrection503_fu_1081", "Port" : "p503_1", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "164", "SubInstance" : "grp_fp2mul503_mont_133_2_fu_1101", "Port" : "p503_1", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "214", "SubInstance" : "grp_fp2mul503_mont_64_65_fu_1111", "Port" : "p503_1", "Inst_start_state" : "34", "Inst_end_state" : "35"},
					{"ID" : "270", "SubInstance" : "grp_fp2mul503_mont_fu_1137", "Port" : "p503_1", "Inst_start_state" : "38", "Inst_end_state" : "39"},
					{"ID" : "320", "SubInstance" : "grp_fp2mul503_mont_66_69_fu_1147", "Port" : "p503_1", "Inst_start_state" : "38", "Inst_end_state" : "39"},
					{"ID" : "451", "SubInstance" : "grp_fp2mul503_mont_72_73_1_fu_1196", "Port" : "p503_1", "Inst_start_state" : "48", "Inst_end_state" : "49"},
					{"ID" : "506", "SubInstance" : "grp_fp2mul503_mont_1339777_fu_1209", "Port" : "p503_1", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "XQA_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1214_fu_964", "Port" : "XQA_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "XRA_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1217_fu_931", "Port" : "XRA_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "XRA_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1218_fu_938", "Port" : "XRA_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "XPA_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1220_fu_893", "Port" : "XPA_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "XPA_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1221_fu_909", "Port" : "XPA_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_fp2sqr503_mont_fu_1091", "Port" : "p503p1_1", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "164", "SubInstance" : "grp_fp2mul503_mont_133_2_fu_1101", "Port" : "p503p1_1", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "214", "SubInstance" : "grp_fp2mul503_mont_64_65_fu_1111", "Port" : "p503p1_1", "Inst_start_state" : "34", "Inst_end_state" : "35"},
					{"ID" : "270", "SubInstance" : "grp_fp2mul503_mont_fu_1137", "Port" : "p503p1_1", "Inst_start_state" : "38", "Inst_end_state" : "39"},
					{"ID" : "320", "SubInstance" : "grp_fp2mul503_mont_66_69_fu_1147", "Port" : "p503p1_1", "Inst_start_state" : "38", "Inst_end_state" : "39"},
					{"ID" : "379", "SubInstance" : "grp_fp2sqr503_mont_70_71_fu_1171", "Port" : "p503p1_1", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "451", "SubInstance" : "grp_fp2mul503_mont_72_73_1_fu_1196", "Port" : "p503p1_1", "Inst_start_state" : "48", "Inst_end_state" : "49"},
					{"ID" : "506", "SubInstance" : "grp_fp2mul503_mont_1339777_fu_1209", "Port" : "p503p1_1", "Inst_start_state" : "44", "Inst_end_state" : "45"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_317_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "49", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state49"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state16"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R0_X_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R0_Z_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_X_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_X_2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_Z_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_Z_2_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A24_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A24_1_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_1_fu_885", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_1",
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
			{"Name" : "A24_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A24", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_1_fu_885.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1220_fu_893", "Parent" : "0", "Child" : ["16", "17"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1220",
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
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "XPA_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1220_fu_893.XPA_0_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1220_fu_893.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1_fu_901", "Parent" : "0", "Child" : ["19", "20"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1",
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
			{"Name" : "A24_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Montgomery_one_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1_fu_901.Montgomery_one_1_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1_fu_901.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1221_fu_909", "Parent" : "0", "Child" : ["22", "23"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1221",
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
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "XPA_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1221_fu_909.XPA_1_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1221_fu_909.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_917", "Parent" : "0", "Child" : ["25", "27", "30"],
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
					{"ID" : "25", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_23_1_fu_36", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "27", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_28_2_fu_48", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "30", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3_fu_61", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_23_1_fu_36", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "27", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_28_2_fu_48", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "30", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3_fu_61", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_28_2_fu_48", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "30", "SubInstance" : "grp_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3_fu_61", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_917.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_23_1_fu_36", "Parent" : "24", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_917.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_23_1_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_917.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_28_2_fu_48", "Parent" : "24", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_917.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_28_2_fu_48.p503x2_1_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_917.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_28_2_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_917.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3_fu_61", "Parent" : "24", "Child" : ["31", "32"],
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_917.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3_fu_61.p503x2_1_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_58_60_fu_917.grp_fpadd503_58_60_Pipeline_VITIS_LOOP_34_3_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1217_fu_931", "Parent" : "0", "Child" : ["34", "35"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1217",
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
			{"Name" : "R2_X", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "XRA_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1217_fu_931.XRA_0_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1217_fu_931.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1218_fu_938", "Parent" : "0", "Child" : ["37", "38"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1218",
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
			{"Name" : "R2_X_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "XRA_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1218_fu_938.XRA_1_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1218_fu_938.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_945", "Parent" : "0", "Child" : ["40", "42", "45"],
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
					{"ID" : "40", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_23_1_fu_46", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_23_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "42", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2_fu_62", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "45", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3_fu_75", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_23_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "42", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2_fu_62", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "45", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3_fu_75", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2_fu_62", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "45", "SubInstance" : "grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3_fu_75", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_945.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_23_1_fu_46", "Parent" : "39", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_945.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_23_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_945.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2_fu_62", "Parent" : "39", "Child" : ["43", "44"],
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
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_945.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2_fu_62.p503x2_1_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_945.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_28_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_945.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3_fu_75", "Parent" : "39", "Child" : ["46", "47"],
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
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_945.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3_fu_75.p503x2_1_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_60_6167_fu_945.grp_fpadd503_60_6167_Pipeline_VITIS_LOOP_34_3_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1214_fu_964", "Parent" : "0", "Child" : ["49", "50"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1214",
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
			{"Name" : "R0_X", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "XQA_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1214_fu_964.XQA_0_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1214_fu_964.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1216_fu_971", "Parent" : "0", "Child" : ["52", "53"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1216",
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
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1216_fu_971.Montgomery_one_1_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1216_fu_971.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1215_fu_978", "Parent" : "0", "Child" : ["55"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1215",
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
			{"Name" : "R0_X", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1215_fu_978.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1219_fu_983", "Parent" : "0", "Child" : ["57", "58"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1219",
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
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1219_fu_983.Montgomery_one_1_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1219_fu_983.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_990", "Parent" : "0", "Child" : ["60", "63", "65", "68"],
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
					{"ID" : "60", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1_fu_74", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "63", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1_fu_85", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "65", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1212_fu_93", "Port" : "c_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "68", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1213_fu_104", "Port" : "c_0", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1_fu_74", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "63", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1_fu_85", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "65", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1212_fu_93", "Port" : "c_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "68", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1213_fu_104", "Port" : "c_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1_fu_74", "Port" : "p503_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "65", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1212_fu_93", "Port" : "p503_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_990.grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1_fu_74", "Parent" : "59", "Child" : ["61", "62"],
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
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_990.grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1_fu_74.p503_1_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_990.grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_990.grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1_fu_85", "Parent" : "59", "Child" : ["64"],
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
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_990.grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1_fu_85.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_990.grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1212_fu_93", "Parent" : "59", "Child" : ["66", "67"],
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
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_990.grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1212_fu_93.p503_1_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_990.grp_fp2div2_503_Pipeline_VITIS_LOOP_78_1212_fu_93.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_990.grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1213_fu_104", "Parent" : "59", "Child" : ["69"],
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
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_990.grp_fp2div2_503_Pipeline_VITIS_LOOP_382_1213_fu_104.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1222_fu_998", "Parent" : "0", "Child" : ["71", "72"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1222",
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
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1222_fu_998.Montgomery_one_1_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1222_fu_998.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_23_1_fu_1006", "Parent" : "0", "Child" : ["74"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_23_1",
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
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_23_1_fu_1006.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_267_1_fu_1012", "Parent" : "0", "Child" : ["76"],
		"CDFG" : "LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_267_1",
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
			{"Name" : "R2_X_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R2_Z", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R2_Z_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln288", "Type" : "None", "Direction" : "I"},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_267_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state3", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state3_blk", "QuitState" : "ap_ST_fsm_state3", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state3_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_267_1_fu_1012.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1025", "Parent" : "0", "Child" : ["78", "80", "83"],
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
					{"ID" : "78", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_23_1_fu_46", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_23_1_fu_46", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_23_1_fu_46", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "80", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_28_2_fu_62", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "83", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_34_3_fu_72", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_28_2_fu_62", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "83", "SubInstance" : "grp_fpadd503_15181_Pipeline_VITIS_LOOP_34_3_fu_72", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1025.grp_fpadd503_15181_Pipeline_VITIS_LOOP_23_1_fu_46", "Parent" : "77", "Child" : ["79"],
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
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1025.grp_fpadd503_15181_Pipeline_VITIS_LOOP_23_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1025.grp_fpadd503_15181_Pipeline_VITIS_LOOP_28_2_fu_62", "Parent" : "77", "Child" : ["81", "82"],
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
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1025.grp_fpadd503_15181_Pipeline_VITIS_LOOP_28_2_fu_62.p503x2_1_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1025.grp_fpadd503_15181_Pipeline_VITIS_LOOP_28_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1025.grp_fpadd503_15181_Pipeline_VITIS_LOOP_34_3_fu_72", "Parent" : "77", "Child" : ["84", "85"],
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
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1025.grp_fpadd503_15181_Pipeline_VITIS_LOOP_34_3_fu_72.p503x2_1_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_15181_fu_1025.grp_fpadd503_15181_Pipeline_VITIS_LOOP_34_3_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_143_fu_1043", "Parent" : "0", "Child" : ["87", "89"],
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
					{"ID" : "87", "SubInstance" : "grp_fpsub503_143_Pipeline_VITIS_LOOP_47_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_fpsub503_143_Pipeline_VITIS_LOOP_47_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_fpsub503_143_Pipeline_VITIS_LOOP_47_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_fpsub503_143_Pipeline_VITIS_LOOP_53_2_fu_41", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_fpsub503_143_Pipeline_VITIS_LOOP_53_2_fu_41", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_143_fu_1043.grp_fpsub503_143_Pipeline_VITIS_LOOP_47_1_fu_28", "Parent" : "86", "Child" : ["88"],
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
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_143_fu_1043.grp_fpsub503_143_Pipeline_VITIS_LOOP_47_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_143_fu_1043.grp_fpsub503_143_Pipeline_VITIS_LOOP_53_2_fu_41", "Parent" : "86", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_143_fu_1043.grp_fpsub503_143_Pipeline_VITIS_LOOP_53_2_fu_41.p503x2_1_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_143_fu_1043.grp_fpsub503_143_Pipeline_VITIS_LOOP_53_2_fu_41.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_14679_fu_1055", "Parent" : "0", "Child" : ["93", "95"],
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
					{"ID" : "93", "SubInstance" : "grp_fpsub503_14679_Pipeline_VITIS_LOOP_47_1_fu_44", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_fpsub503_14679_Pipeline_VITIS_LOOP_47_1_fu_44", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_fpsub503_14679_Pipeline_VITIS_LOOP_47_1_fu_44", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "95", "SubInstance" : "grp_fpsub503_14679_Pipeline_VITIS_LOOP_53_2_fu_61", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_fpsub503_14679_Pipeline_VITIS_LOOP_53_2_fu_61", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_14679_fu_1055.grp_fpsub503_14679_Pipeline_VITIS_LOOP_47_1_fu_44", "Parent" : "92", "Child" : ["94"],
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
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_14679_fu_1055.grp_fpsub503_14679_Pipeline_VITIS_LOOP_47_1_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_14679_fu_1055.grp_fpsub503_14679_Pipeline_VITIS_LOOP_53_2_fu_61", "Parent" : "92", "Child" : ["96", "97"],
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
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_14679_fu_1055.grp_fpsub503_14679_Pipeline_VITIS_LOOP_53_2_fu_61.p503x2_1_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_14679_fu_1055.grp_fpsub503_14679_Pipeline_VITIS_LOOP_53_2_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1073", "Parent" : "0", "Child" : ["99", "101", "104"],
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
					{"ID" : "99", "SubInstance" : "grp_fpadd503_148_Pipeline_VITIS_LOOP_23_1_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "101", "SubInstance" : "grp_fpadd503_148_Pipeline_VITIS_LOOP_28_2_fu_26", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "104", "SubInstance" : "grp_fpadd503_148_Pipeline_VITIS_LOOP_34_3_fu_35", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_fpadd503_148_Pipeline_VITIS_LOOP_23_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_fpadd503_148_Pipeline_VITIS_LOOP_28_2_fu_26", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "104", "SubInstance" : "grp_fpadd503_148_Pipeline_VITIS_LOOP_34_3_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1073.grp_fpadd503_148_Pipeline_VITIS_LOOP_23_1_fu_18", "Parent" : "98", "Child" : ["100"],
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
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1073.grp_fpadd503_148_Pipeline_VITIS_LOOP_23_1_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1073.grp_fpadd503_148_Pipeline_VITIS_LOOP_28_2_fu_26", "Parent" : "98", "Child" : ["102", "103"],
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
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1073.grp_fpadd503_148_Pipeline_VITIS_LOOP_28_2_fu_26.p503x2_1_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1073.grp_fpadd503_148_Pipeline_VITIS_LOOP_28_2_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "101"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1073.grp_fpadd503_148_Pipeline_VITIS_LOOP_34_3_fu_35", "Parent" : "98", "Child" : ["105", "106"],
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
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1073.grp_fpadd503_148_Pipeline_VITIS_LOOP_34_3_fu_35.p503x2_1_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_148_fu_1073.grp_fpadd503_148_Pipeline_VITIS_LOOP_34_3_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1081", "Parent" : "0", "Child" : ["108", "111"],
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
					{"ID" : "108", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_91_1_fu_24", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "111", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_97_2_fu_35", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_91_1_fu_24", "Port" : "p503_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "111", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_97_2_fu_35", "Port" : "p503_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1081.grp_fpcorrection503_Pipeline_VITIS_LOOP_91_1_fu_24", "Parent" : "107", "Child" : ["109", "110"],
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
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1081.grp_fpcorrection503_Pipeline_VITIS_LOOP_91_1_fu_24.p503_1_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1081.grp_fpcorrection503_Pipeline_VITIS_LOOP_91_1_fu_24.flow_control_loop_pipe_sequential_init_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1081.grp_fpcorrection503_Pipeline_VITIS_LOOP_97_2_fu_35", "Parent" : "107", "Child" : ["112", "113"],
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
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1081.grp_fpcorrection503_Pipeline_VITIS_LOOP_97_2_fu_35.p503_1_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1081.grp_fpcorrection503_Pipeline_VITIS_LOOP_97_2_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091", "Parent" : "0", "Child" : ["115", "116", "117", "118", "119", "120", "122", "124", "126", "128", "131", "133", "142", "151"],
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
					{"ID" : "120", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "126", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_47_1_fu_76", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "131", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1136_fu_92", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "142", "SubInstance" : "grp_mp_mul_150_fu_106", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_rdc_mont_14183_fu_114", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_53_2_fu_84", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "grp_rdc_mont_14183_fu_114", "Port" : "p503p1_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.temp_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.temp_64_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.t1_U", "Parent" : "114"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.t2_U", "Parent" : "114"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.t3_U", "Parent" : "114"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1_fu_56", "Parent" : "114", "Child" : ["121"],
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
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_5_fu_64", "Parent" : "114", "Child" : ["123"],
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
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_5_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_6_fu_70", "Parent" : "114", "Child" : ["125"],
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
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_6_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_47_1_fu_76", "Parent" : "114", "Child" : ["127"],
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
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_47_1_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_53_2_fu_84", "Parent" : "114", "Child" : ["129", "130"],
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
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_53_2_fu_84.p503x2_1_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_53_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "128"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1136_fu_92", "Parent" : "114", "Child" : ["132"],
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
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_fp2sqr503_mont_Pipeline_VITIS_LOOP_349_1136_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "131"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_152_fu_99", "Parent" : "114", "Child" : ["134", "136", "138", "139", "140", "141"],
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
					{"ID" : "134", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "136", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "136", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "133", "Child" : ["135"],
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
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "133", "Child" : ["137"],
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
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "136"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U277", "Parent" : "133"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U278", "Parent" : "133"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U279", "Parent" : "133"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U280", "Parent" : "133"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_150_fu_106", "Parent" : "114", "Child" : ["143", "145", "147", "148", "149", "150"],
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
					{"ID" : "143", "SubInstance" : "grp_mp_mul_150_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "145", "SubInstance" : "grp_mp_mul_150_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_mp_mul_150_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "145", "SubInstance" : "grp_mp_mul_150_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_150_fu_106.grp_mp_mul_150_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "142", "Child" : ["144"],
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
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_150_fu_106.grp_mp_mul_150_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_150_fu_106.grp_mp_mul_150_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "142", "Child" : ["146"],
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
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_150_fu_106.grp_mp_mul_150_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "145"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_150_fu_106.mul_32ns_32ns_64_2_1_U354", "Parent" : "142"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_150_fu_106.mul_32ns_32ns_64_2_1_U355", "Parent" : "142"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_150_fu_106.mul_32ns_32ns_64_2_1_U356", "Parent" : "142"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_mp_mul_150_fu_106.mul_32ns_32ns_64_2_1_U357", "Parent" : "142"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114", "Parent" : "114", "Child" : ["152", "154", "157", "160", "161", "162", "163"],
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
					{"ID" : "152", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "154", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "157", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "157", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190", "Parent" : "151", "Child" : ["153"],
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
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Parent" : "151", "Child" : ["155", "156"],
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
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199.p503p1_1_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "154"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Parent" : "151", "Child" : ["158", "159"],
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
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216.p503p1_1_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "157"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114.mul_32ns_32ns_64_2_1_U320", "Parent" : "151"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114.mul_32ns_32ns_64_2_1_U321", "Parent" : "151"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114.mul_32ns_32ns_64_2_1_U322", "Parent" : "151"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_fu_1091.grp_rdc_mont_14183_fu_114.mul_32ns_32ns_64_2_1_U323", "Parent" : "151"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101", "Parent" : "0", "Child" : ["165", "166", "167", "168", "169", "170", "179", "181", "183", "185", "188", "190", "203", "212"],
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
					{"ID" : "170", "SubInstance" : "grp_mp_mul_148_fu_56", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "179", "SubInstance" : "grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1_fu_72", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "190", "SubInstance" : "grp_rdc_mont_140_fu_108", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "grp_mp_mul_148_fu_56", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "181", "SubInstance" : "grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1179_fu_79", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_199_1_fu_94", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_rdc_mont_140_fu_108", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.t1_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.t2_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.tt1_U", "Parent" : "164"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.tt2_U", "Parent" : "164"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.tt3_U", "Parent" : "164"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_148_fu_56", "Parent" : "164", "Child" : ["171", "173", "175", "176", "177", "178"],
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
					{"ID" : "171", "SubInstance" : "grp_mp_mul_148_Pipeline_VITIS_LOOP_144_2_fu_134", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "173", "SubInstance" : "grp_mp_mul_148_Pipeline_VITIS_LOOP_157_4_fu_151", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_mp_mul_148_Pipeline_VITIS_LOOP_144_2_fu_134", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "173", "SubInstance" : "grp_mp_mul_148_Pipeline_VITIS_LOOP_157_4_fu_151", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_148_fu_56.grp_mp_mul_148_Pipeline_VITIS_LOOP_144_2_fu_134", "Parent" : "170", "Child" : ["172"],
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
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_148_fu_56.grp_mp_mul_148_Pipeline_VITIS_LOOP_144_2_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "171"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_148_fu_56.grp_mp_mul_148_Pipeline_VITIS_LOOP_157_4_fu_151", "Parent" : "170", "Child" : ["174"],
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
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_148_fu_56.grp_mp_mul_148_Pipeline_VITIS_LOOP_157_4_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_148_fu_56.mul_32ns_32ns_64_2_1_U424", "Parent" : "170"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_148_fu_56.mul_32ns_32ns_64_2_1_U425", "Parent" : "170"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_148_fu_56.mul_32ns_32ns_64_2_1_U426", "Parent" : "170"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_148_fu_56.mul_32ns_32ns_64_2_1_U427", "Parent" : "170"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1_fu_72", "Parent" : "164", "Child" : ["180"],
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
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "179"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1179_fu_79", "Parent" : "164", "Child" : ["182"],
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
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1179_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_169_1_fu_86", "Parent" : "164", "Child" : ["184"],
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
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_169_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "183"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_199_1_fu_94", "Parent" : "164", "Child" : ["186", "187"],
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
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_199_1_fu_94.p503_1_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_199_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1180_fu_102", "Parent" : "164", "Child" : ["189"],
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
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_349_1180_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108", "Parent" : "164", "Child" : ["191", "193", "196", "199", "200", "201", "202"],
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
					{"ID" : "191", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "193", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "196", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "196", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190", "Parent" : "190", "Child" : ["192"],
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
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "191"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Parent" : "190", "Child" : ["194", "195"],
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
	{"ID" : "194", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199.p503p1_1_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "193"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Parent" : "190", "Child" : ["197", "198"],
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
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216.p503p1_1_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "196"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108.mul_32ns_32ns_64_2_1_U474", "Parent" : "190"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108.mul_32ns_32ns_64_2_1_U475", "Parent" : "190"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108.mul_32ns_32ns_64_2_1_U476", "Parent" : "190"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_rdc_mont_140_fu_108.mul_32ns_32ns_64_2_1_U477", "Parent" : "190"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_152_fu_120", "Parent" : "164", "Child" : ["204", "206", "208", "209", "210", "211"],
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
					{"ID" : "204", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "206", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "206", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "203", "Child" : ["205"],
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
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "203", "Child" : ["207"],
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
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U277", "Parent" : "203"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U278", "Parent" : "203"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U279", "Parent" : "203"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U280", "Parent" : "203"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_169_1181_fu_127", "Parent" : "164", "Child" : ["213"],
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
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_133_2_fu_1101.grp_fp2mul503_mont_133_2_Pipeline_VITIS_LOOP_169_1181_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111", "Parent" : "0", "Child" : ["215", "216", "217", "218", "219", "220", "229", "231", "233", "235", "238", "240", "253", "262"],
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
					{"ID" : "220", "SubInstance" : "grp_mp_mul_fu_58", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "229", "SubInstance" : "grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1_fu_72", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "240", "SubInstance" : "grp_rdc_mont_140_fu_110", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "220", "SubInstance" : "grp_mp_mul_fu_58", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "231", "SubInstance" : "grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1158_fu_79", "Port" : "b_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "220", "SubInstance" : "grp_mp_mul_fu_58", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "231", "SubInstance" : "grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1158_fu_79", "Port" : "b_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "235", "SubInstance" : "grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_199_1_fu_96", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "240", "SubInstance" : "grp_rdc_mont_140_fu_110", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.t1_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.t2_U", "Parent" : "214"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.tt1_U", "Parent" : "214"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.tt2_U", "Parent" : "214"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.tt3_U", "Parent" : "214"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_fu_58", "Parent" : "214", "Child" : ["221", "223", "225", "226", "227", "228"],
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
					{"ID" : "221", "SubInstance" : "grp_mp_mul_Pipeline_VITIS_LOOP_144_2_fu_126", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "223", "SubInstance" : "grp_mp_mul_Pipeline_VITIS_LOOP_157_4_fu_142", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_mp_mul_Pipeline_VITIS_LOOP_144_2_fu_126", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "223", "SubInstance" : "grp_mp_mul_Pipeline_VITIS_LOOP_157_4_fu_142", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_fu_58.grp_mp_mul_Pipeline_VITIS_LOOP_144_2_fu_126", "Parent" : "220", "Child" : ["222"],
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
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_fu_58.grp_mp_mul_Pipeline_VITIS_LOOP_144_2_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_fu_58.grp_mp_mul_Pipeline_VITIS_LOOP_157_4_fu_142", "Parent" : "220", "Child" : ["224"],
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
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_fu_58.grp_mp_mul_Pipeline_VITIS_LOOP_157_4_fu_142.flow_control_loop_pipe_sequential_init_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_fu_58.mul_32ns_32ns_64_2_1_U518", "Parent" : "220"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_fu_58.mul_32ns_32ns_64_2_1_U519", "Parent" : "220"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_fu_58.mul_32ns_32ns_64_2_1_U520", "Parent" : "220"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_fu_58.mul_32ns_32ns_64_2_1_U521", "Parent" : "220"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1_fu_72", "Parent" : "214", "Child" : ["230"],
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
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1158_fu_79", "Parent" : "214", "Child" : ["232"],
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
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1158_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "231"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_169_1_fu_88", "Parent" : "214", "Child" : ["234"],
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
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_169_1_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_199_1_fu_96", "Parent" : "214", "Child" : ["236", "237"],
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
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_199_1_fu_96.p503_1_U", "Parent" : "235"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_199_1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "235"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1159_fu_104", "Parent" : "214", "Child" : ["239"],
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
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_349_1159_fu_104.flow_control_loop_pipe_sequential_init_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110", "Parent" : "214", "Child" : ["241", "243", "246", "249", "250", "251", "252"],
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
					{"ID" : "241", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "243", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "246", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "243", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "246", "SubInstance" : "grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190", "Parent" : "240", "Child" : ["242"],
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
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_180_1_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199", "Parent" : "240", "Child" : ["244", "245"],
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
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199.p503p1_1_U", "Parent" : "243"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_185_3_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "243"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216", "Parent" : "240", "Child" : ["247", "248"],
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
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216.p503p1_1_U", "Parent" : "246"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110.grp_rdc_mont_140_Pipeline_VITIS_LOOP_206_5_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "246"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110.mul_32ns_32ns_64_2_1_U474", "Parent" : "240"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110.mul_32ns_32ns_64_2_1_U475", "Parent" : "240"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110.mul_32ns_32ns_64_2_1_U476", "Parent" : "240"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_rdc_mont_140_fu_110.mul_32ns_32ns_64_2_1_U477", "Parent" : "240"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_152_fu_122", "Parent" : "214", "Child" : ["254", "256", "258", "259", "260", "261"],
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
					{"ID" : "254", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "256", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "256", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_152_fu_122.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "253", "Child" : ["255"],
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
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_152_fu_122.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_152_fu_122.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "253", "Child" : ["257"],
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
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_152_fu_122.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_152_fu_122.mul_32ns_32ns_64_2_1_U277", "Parent" : "253"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_152_fu_122.mul_32ns_32ns_64_2_1_U278", "Parent" : "253"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_152_fu_122.mul_32ns_32ns_64_2_1_U279", "Parent" : "253"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_mp_mul_152_fu_122.mul_32ns_32ns_64_2_1_U280", "Parent" : "253"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_169_1160_fu_129", "Parent" : "214", "Child" : ["263"],
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
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_64_65_fu_1111.grp_fp2mul503_mont_64_65_Pipeline_VITIS_LOOP_169_1160_fu_129.flow_control_loop_pipe_sequential_init_U", "Parent" : "262"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1122", "Parent" : "0", "Child" : ["265", "267"],
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
					{"ID" : "265", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_47_1_fu_36", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_47_1_fu_36", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "265", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_47_1_fu_36", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "267", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_53_2_fu_51", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_53_2_fu_51", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1122.grp_fpsub503_Pipeline_VITIS_LOOP_47_1_fu_36", "Parent" : "264", "Child" : ["266"],
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
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1122.grp_fpsub503_Pipeline_VITIS_LOOP_47_1_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1122.grp_fpsub503_Pipeline_VITIS_LOOP_53_2_fu_51", "Parent" : "264", "Child" : ["268", "269"],
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
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1122.grp_fpsub503_Pipeline_VITIS_LOOP_53_2_fu_51.p503x2_1_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1122.grp_fpsub503_Pipeline_VITIS_LOOP_53_2_fu_51.flow_control_loop_pipe_sequential_init_U", "Parent" : "267"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137", "Parent" : "0", "Child" : ["271", "272", "273", "274", "275", "276", "285", "287", "289", "291", "294", "296", "309", "318"],
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
					{"ID" : "276", "SubInstance" : "grp_mp_mul_146_fu_56", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "285", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1_fu_72", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "296", "SubInstance" : "grp_rdc_mont_14183_fu_108", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_mp_mul_146_fu_56", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "287", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1209_fu_79", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_199_1_fu_94", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "296", "SubInstance" : "grp_rdc_mont_14183_fu_108", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.t1_U", "Parent" : "270"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.t2_U", "Parent" : "270"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.tt1_U", "Parent" : "270"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.tt2_U", "Parent" : "270"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.tt3_U", "Parent" : "270"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_146_fu_56", "Parent" : "270", "Child" : ["277", "279", "281", "282", "283", "284"],
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
					{"ID" : "277", "SubInstance" : "grp_mp_mul_146_Pipeline_VITIS_LOOP_144_2_fu_134", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "279", "SubInstance" : "grp_mp_mul_146_Pipeline_VITIS_LOOP_157_4_fu_151", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "grp_mp_mul_146_Pipeline_VITIS_LOOP_144_2_fu_134", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "279", "SubInstance" : "grp_mp_mul_146_Pipeline_VITIS_LOOP_157_4_fu_151", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_146_fu_56.grp_mp_mul_146_Pipeline_VITIS_LOOP_144_2_fu_134", "Parent" : "276", "Child" : ["278"],
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
	{"ID" : "278", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_146_fu_56.grp_mp_mul_146_Pipeline_VITIS_LOOP_144_2_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_146_fu_56.grp_mp_mul_146_Pipeline_VITIS_LOOP_157_4_fu_151", "Parent" : "276", "Child" : ["280"],
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
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_146_fu_56.grp_mp_mul_146_Pipeline_VITIS_LOOP_157_4_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_146_fu_56.mul_32ns_32ns_64_2_1_U577", "Parent" : "276"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_146_fu_56.mul_32ns_32ns_64_2_1_U578", "Parent" : "276"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_146_fu_56.mul_32ns_32ns_64_2_1_U579", "Parent" : "276"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_146_fu_56.mul_32ns_32ns_64_2_1_U580", "Parent" : "276"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1_fu_72", "Parent" : "270", "Child" : ["286"],
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
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1209_fu_79", "Parent" : "270", "Child" : ["288"],
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
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1209_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_169_1_fu_86", "Parent" : "270", "Child" : ["290"],
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
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_169_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "289"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_199_1_fu_94", "Parent" : "270", "Child" : ["292", "293"],
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
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_199_1_fu_94.p503_1_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_199_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "291"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1210_fu_102", "Parent" : "270", "Child" : ["295"],
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
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_349_1210_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "294"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108", "Parent" : "270", "Child" : ["297", "299", "302", "305", "306", "307", "308"],
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
					{"ID" : "297", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "299", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "302", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "299", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "302", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190", "Parent" : "296", "Child" : ["298"],
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
	{"ID" : "298", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "297"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Parent" : "296", "Child" : ["300", "301"],
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
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199.p503p1_1_U", "Parent" : "299"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "299"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Parent" : "296", "Child" : ["303", "304"],
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
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216.p503p1_1_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "302"},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U320", "Parent" : "296"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U321", "Parent" : "296"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U322", "Parent" : "296"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U323", "Parent" : "296"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_152_fu_120", "Parent" : "270", "Child" : ["310", "312", "314", "315", "316", "317"],
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
					{"ID" : "310", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "312", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "310", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "312", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "309", "Child" : ["311"],
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
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "309", "Child" : ["313"],
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
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "312"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U277", "Parent" : "309"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U278", "Parent" : "309"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U279", "Parent" : "309"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U280", "Parent" : "309"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_169_1211_fu_127", "Parent" : "270", "Child" : ["319"],
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
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1137.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_169_1211_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "318"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147", "Parent" : "0", "Child" : ["321", "322", "323", "324", "325", "326", "335", "337", "339", "341", "344", "346", "359", "368"],
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
					{"ID" : "326", "SubInstance" : "grp_mp_mul_67_68_fu_62", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "335", "SubInstance" : "grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1_fu_83", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "grp_mp_mul_67_68_fu_62", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "337", "SubInstance" : "grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1155_fu_90", "Port" : "b_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "grp_mp_mul_67_68_fu_62", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "337", "SubInstance" : "grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1155_fu_90", "Port" : "b_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "346", "SubInstance" : "grp_rdc_mont_fu_121", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "346", "SubInstance" : "grp_rdc_mont_fu_121", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "341", "SubInstance" : "grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_199_1_fu_107", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "346", "SubInstance" : "grp_rdc_mont_fu_121", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.t1_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.t2_U", "Parent" : "320"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.tt1_U", "Parent" : "320"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.tt2_U", "Parent" : "320"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.tt3_U", "Parent" : "320"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_67_68_fu_62", "Parent" : "320", "Child" : ["327", "329", "331", "332", "333", "334"],
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
					{"ID" : "327", "SubInstance" : "grp_mp_mul_67_68_Pipeline_VITIS_LOOP_144_2_fu_148", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "329", "SubInstance" : "grp_mp_mul_67_68_Pipeline_VITIS_LOOP_157_4_fu_168", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "grp_mp_mul_67_68_Pipeline_VITIS_LOOP_144_2_fu_148", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "329", "SubInstance" : "grp_mp_mul_67_68_Pipeline_VITIS_LOOP_157_4_fu_168", "Port" : "b_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "grp_mp_mul_67_68_Pipeline_VITIS_LOOP_144_2_fu_148", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "329", "SubInstance" : "grp_mp_mul_67_68_Pipeline_VITIS_LOOP_157_4_fu_168", "Port" : "b_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_67_68_fu_62.grp_mp_mul_67_68_Pipeline_VITIS_LOOP_144_2_fu_148", "Parent" : "326", "Child" : ["328"],
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
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_67_68_fu_62.grp_mp_mul_67_68_Pipeline_VITIS_LOOP_144_2_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "327"},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_67_68_fu_62.grp_mp_mul_67_68_Pipeline_VITIS_LOOP_157_4_fu_168", "Parent" : "326", "Child" : ["330"],
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
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_67_68_fu_62.grp_mp_mul_67_68_Pipeline_VITIS_LOOP_157_4_fu_168.flow_control_loop_pipe_sequential_init_U", "Parent" : "329"},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_67_68_fu_62.mul_32ns_32ns_64_2_1_U639", "Parent" : "326"},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_67_68_fu_62.mul_32ns_32ns_64_2_1_U640", "Parent" : "326"},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_67_68_fu_62.mul_32ns_32ns_64_2_1_U641", "Parent" : "326"},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_67_68_fu_62.mul_32ns_32ns_64_2_1_U642", "Parent" : "326"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1_fu_83", "Parent" : "320", "Child" : ["336"],
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
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1_fu_83.flow_control_loop_pipe_sequential_init_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1155_fu_90", "Parent" : "320", "Child" : ["338"],
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
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1155_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "337"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_169_1_fu_99", "Parent" : "320", "Child" : ["340"],
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
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_169_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "339"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_199_1_fu_107", "Parent" : "320", "Child" : ["342", "343"],
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
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_199_1_fu_107.p503_1_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_199_1_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "341"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1156_fu_115", "Parent" : "320", "Child" : ["345"],
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
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_349_1156_fu_115.flow_control_loop_pipe_sequential_init_U", "Parent" : "344"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121", "Parent" : "320", "Child" : ["347", "349", "352", "355", "356", "357", "358"],
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
					{"ID" : "347", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "349", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "352", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "349", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "352", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Parent" : "346", "Child" : ["348"],
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
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Parent" : "346", "Child" : ["350", "351"],
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
	{"ID" : "350", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.p503p1_1_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.flow_control_loop_pipe_sequential_init_U", "Parent" : "349"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Parent" : "346", "Child" : ["353", "354"],
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
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.p503p1_1_U", "Parent" : "352"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "352"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121.mul_32ns_32ns_64_2_1_U688", "Parent" : "346"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121.mul_32ns_32ns_64_2_1_U689", "Parent" : "346"},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121.mul_32ns_32ns_64_2_1_U690", "Parent" : "346"},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_rdc_mont_fu_121.mul_32ns_32ns_64_2_1_U691", "Parent" : "346"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_152_fu_131", "Parent" : "320", "Child" : ["360", "362", "364", "365", "366", "367"],
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
					{"ID" : "360", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "362", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "360", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "362", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_152_fu_131.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "359", "Child" : ["361"],
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
	{"ID" : "361", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_152_fu_131.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "360"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_152_fu_131.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "359", "Child" : ["363"],
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
	{"ID" : "363", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_152_fu_131.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "362"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_152_fu_131.mul_32ns_32ns_64_2_1_U277", "Parent" : "359"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_152_fu_131.mul_32ns_32ns_64_2_1_U278", "Parent" : "359"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_152_fu_131.mul_32ns_32ns_64_2_1_U279", "Parent" : "359"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_mp_mul_152_fu_131.mul_32ns_32ns_64_2_1_U280", "Parent" : "359"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_169_1157_fu_138", "Parent" : "320", "Child" : ["369"],
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
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_66_69_fu_1147.grp_fp2mul503_mont_66_69_Pipeline_VITIS_LOOP_169_1157_fu_138.flow_control_loop_pipe_sequential_init_U", "Parent" : "368"},
	{"ID" : "370", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1160", "Parent" : "0", "Child" : ["371", "373", "376"],
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
					{"ID" : "371", "SubInstance" : "grp_fpadd503_147_Pipeline_VITIS_LOOP_23_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "371", "SubInstance" : "grp_fpadd503_147_Pipeline_VITIS_LOOP_23_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "373", "SubInstance" : "grp_fpadd503_147_Pipeline_VITIS_LOOP_28_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "376", "SubInstance" : "grp_fpadd503_147_Pipeline_VITIS_LOOP_34_3_fu_48", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "373", "SubInstance" : "grp_fpadd503_147_Pipeline_VITIS_LOOP_28_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "376", "SubInstance" : "grp_fpadd503_147_Pipeline_VITIS_LOOP_34_3_fu_48", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1160.grp_fpadd503_147_Pipeline_VITIS_LOOP_23_1_fu_28", "Parent" : "370", "Child" : ["372"],
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
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1160.grp_fpadd503_147_Pipeline_VITIS_LOOP_23_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "371"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1160.grp_fpadd503_147_Pipeline_VITIS_LOOP_28_2_fu_38", "Parent" : "370", "Child" : ["374", "375"],
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
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1160.grp_fpadd503_147_Pipeline_VITIS_LOOP_28_2_fu_38.p503x2_1_U", "Parent" : "373"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1160.grp_fpadd503_147_Pipeline_VITIS_LOOP_28_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "373"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1160.grp_fpadd503_147_Pipeline_VITIS_LOOP_34_3_fu_48", "Parent" : "370", "Child" : ["377", "378"],
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
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1160.grp_fpadd503_147_Pipeline_VITIS_LOOP_34_3_fu_48.p503x2_1_U", "Parent" : "376"},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_147_fu_1160.grp_fpadd503_147_Pipeline_VITIS_LOOP_34_3_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "376"},
	{"ID" : "379", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171", "Parent" : "0", "Child" : ["380", "381", "382", "383", "384", "385", "387", "389", "391", "393", "396", "398", "407", "416", "429"],
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
					{"ID" : "385", "SubInstance" : "grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1_fu_52", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "391", "SubInstance" : "grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_47_1_fu_74", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "396", "SubInstance" : "grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1127_fu_92", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "416", "SubInstance" : "grp_rdc_mont_fu_114", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "385", "SubInstance" : "grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1_fu_52", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "391", "SubInstance" : "grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_47_1_fu_74", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "407", "SubInstance" : "grp_mp_mul_1107_fu_106", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "429", "SubInstance" : "grp_rdc_mont_fu_123", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "393", "SubInstance" : "grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_53_2_fu_84", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_rdc_mont_fu_114", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "429", "SubInstance" : "grp_rdc_mont_fu_123", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}]},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.temp_U", "Parent" : "379"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.temp_60_U", "Parent" : "379"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.t1_U", "Parent" : "379"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.t2_U", "Parent" : "379"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.t3_U", "Parent" : "379"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1_fu_52", "Parent" : "379", "Child" : ["386"],
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
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_5_fu_62", "Parent" : "379", "Child" : ["388"],
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
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_5_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "387"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_6_fu_68", "Parent" : "379", "Child" : ["390"],
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
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_6_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "389"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_47_1_fu_74", "Parent" : "379", "Child" : ["392"],
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
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_47_1_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "391"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_53_2_fu_84", "Parent" : "379", "Child" : ["394", "395"],
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
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_53_2_fu_84.p503x2_1_U", "Parent" : "393"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_53_2_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "393"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1127_fu_92", "Parent" : "379", "Child" : ["397"],
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
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_fp2sqr503_mont_70_71_Pipeline_VITIS_LOOP_349_1127_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "396"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_152_fu_99", "Parent" : "379", "Child" : ["399", "401", "403", "404", "405", "406"],
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
					{"ID" : "399", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "401", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "399", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "401", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "398", "Child" : ["400"],
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
	{"ID" : "400", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "399"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "398", "Child" : ["402"],
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
	{"ID" : "402", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_152_fu_99.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "401"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U277", "Parent" : "398"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U278", "Parent" : "398"},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U279", "Parent" : "398"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_152_fu_99.mul_32ns_32ns_64_2_1_U280", "Parent" : "398"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_1107_fu_106", "Parent" : "379", "Child" : ["408", "410", "412", "413", "414", "415"],
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
					{"ID" : "408", "SubInstance" : "grp_mp_mul_1107_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "410", "SubInstance" : "grp_mp_mul_1107_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "408", "SubInstance" : "grp_mp_mul_1107_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "410", "SubInstance" : "grp_mp_mul_1107_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_1107_fu_106.grp_mp_mul_1107_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "407", "Child" : ["409"],
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
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_1107_fu_106.grp_mp_mul_1107_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "408"},
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_1107_fu_106.grp_mp_mul_1107_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "407", "Child" : ["411"],
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
	{"ID" : "411", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_1107_fu_106.grp_mp_mul_1107_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "410"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_1107_fu_106.mul_32ns_32ns_64_2_1_U842", "Parent" : "407"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_1107_fu_106.mul_32ns_32ns_64_2_1_U843", "Parent" : "407"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_1107_fu_106.mul_32ns_32ns_64_2_1_U844", "Parent" : "407"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_mp_mul_1107_fu_106.mul_32ns_32ns_64_2_1_U845", "Parent" : "407"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114", "Parent" : "379", "Child" : ["417", "419", "422", "425", "426", "427", "428"],
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
					{"ID" : "417", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "419", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "422", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "419", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "422", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Parent" : "416", "Child" : ["418"],
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
	{"ID" : "418", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "417"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Parent" : "416", "Child" : ["420", "421"],
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
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.p503p1_1_U", "Parent" : "419"},
	{"ID" : "421", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.flow_control_loop_pipe_sequential_init_U", "Parent" : "419"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Parent" : "416", "Child" : ["423", "424"],
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
	{"ID" : "423", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.p503p1_1_U", "Parent" : "422"},
	{"ID" : "424", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "422"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114.mul_32ns_32ns_64_2_1_U688", "Parent" : "416"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114.mul_32ns_32ns_64_2_1_U689", "Parent" : "416"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114.mul_32ns_32ns_64_2_1_U690", "Parent" : "416"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_114.mul_32ns_32ns_64_2_1_U691", "Parent" : "416"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123", "Parent" : "379", "Child" : ["430", "432", "435", "438", "439", "440", "441"],
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
					{"ID" : "430", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "432", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "435", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "435", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Parent" : "429", "Child" : ["431"],
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
	{"ID" : "431", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "430"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Parent" : "429", "Child" : ["433", "434"],
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
	{"ID" : "433", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.p503p1_1_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.flow_control_loop_pipe_sequential_init_U", "Parent" : "432"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Parent" : "429", "Child" : ["436", "437"],
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
	{"ID" : "436", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.p503p1_1_U", "Parent" : "435"},
	{"ID" : "437", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "435"},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123.mul_32ns_32ns_64_2_1_U688", "Parent" : "429"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123.mul_32ns_32ns_64_2_1_U689", "Parent" : "429"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123.mul_32ns_32ns_64_2_1_U690", "Parent" : "429"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_70_71_fu_1171.grp_rdc_mont_fu_123.mul_32ns_32ns_64_2_1_U691", "Parent" : "429"},
	{"ID" : "442", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1181", "Parent" : "0", "Child" : ["443", "445", "448"],
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
					{"ID" : "443", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_23_1_fu_38", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "443", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_23_1_fu_38", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "443", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_23_1_fu_38", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "445", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_28_2_fu_52", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "448", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_34_3_fu_61", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "445", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_28_2_fu_52", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "448", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_34_3_fu_61", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1181.grp_fpadd503_Pipeline_VITIS_LOOP_23_1_fu_38", "Parent" : "442", "Child" : ["444"],
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
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1181.grp_fpadd503_Pipeline_VITIS_LOOP_23_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "443"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1181.grp_fpadd503_Pipeline_VITIS_LOOP_28_2_fu_52", "Parent" : "442", "Child" : ["446", "447"],
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
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1181.grp_fpadd503_Pipeline_VITIS_LOOP_28_2_fu_52.p503x2_1_U", "Parent" : "445"},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1181.grp_fpadd503_Pipeline_VITIS_LOOP_28_2_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "445"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1181.grp_fpadd503_Pipeline_VITIS_LOOP_34_3_fu_61", "Parent" : "442", "Child" : ["449", "450"],
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
	{"ID" : "449", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1181.grp_fpadd503_Pipeline_VITIS_LOOP_34_3_fu_61.p503x2_1_U", "Parent" : "448"},
	{"ID" : "450", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1181.grp_fpadd503_Pipeline_VITIS_LOOP_34_3_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "448"},
	{"ID" : "451", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196", "Parent" : "0", "Child" : ["452", "453", "454", "455", "456", "457", "462", "467", "469", "471", "473", "476", "478", "491", "500", "502", "503", "504", "505"],
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
					{"ID" : "457", "SubInstance" : "grp_mp_mul_3_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "467", "SubInstance" : "grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1_fu_75", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "478", "SubInstance" : "grp_rdc_mont_fu_113", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "462", "SubInstance" : "grp_mp_mul_1_fu_66", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "467", "SubInstance" : "grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1_fu_75", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "478", "SubInstance" : "grp_rdc_mont_fu_113", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "457", "SubInstance" : "grp_mp_mul_3_fu_56", "Port" : "R_X", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "462", "SubInstance" : "grp_mp_mul_1_fu_66", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "469", "SubInstance" : "grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1149_fu_84", "Port" : "R_X", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "473", "SubInstance" : "grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_199_1_fu_99", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "478", "SubInstance" : "grp_rdc_mont_fu_113", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.t1_U", "Parent" : "451"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.t2_U", "Parent" : "451"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.tt1_U", "Parent" : "451"},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.tt2_U", "Parent" : "451"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.tt3_U", "Parent" : "451"},
	{"ID" : "457", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_3_fu_56", "Parent" : "451", "Child" : ["458", "460"],
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
					{"ID" : "458", "SubInstance" : "grp_mp_mul_3_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "460", "SubInstance" : "grp_mp_mul_3_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "458", "SubInstance" : "grp_mp_mul_3_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "460", "SubInstance" : "grp_mp_mul_3_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "R_X", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_3_fu_56.grp_mp_mul_3_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "457", "Child" : ["459"],
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
	{"ID" : "459", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_3_fu_56.grp_mp_mul_3_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "458"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_3_fu_56.grp_mp_mul_3_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "457", "Child" : ["461"],
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
	{"ID" : "461", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_3_fu_56.grp_mp_mul_3_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "460"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_1_fu_66", "Parent" : "451", "Child" : ["463", "465"],
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
					{"ID" : "463", "SubInstance" : "grp_mp_mul_1_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "465", "SubInstance" : "grp_mp_mul_1_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "463", "SubInstance" : "grp_mp_mul_1_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "465", "SubInstance" : "grp_mp_mul_1_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "R_X", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_1_fu_66.grp_mp_mul_1_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "462", "Child" : ["464"],
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
	{"ID" : "464", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_1_fu_66.grp_mp_mul_1_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "463"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_1_fu_66.grp_mp_mul_1_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "462", "Child" : ["466"],
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
	{"ID" : "466", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_1_fu_66.grp_mp_mul_1_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "465"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1_fu_75", "Parent" : "451", "Child" : ["468"],
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
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1149_fu_84", "Parent" : "451", "Child" : ["470"],
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
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1149_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_169_1_fu_91", "Parent" : "451", "Child" : ["472"],
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
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_169_1_fu_91.flow_control_loop_pipe_sequential_init_U", "Parent" : "471"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_199_1_fu_99", "Parent" : "451", "Child" : ["474", "475"],
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
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_199_1_fu_99.p503_1_U", "Parent" : "473"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_199_1_fu_99.flow_control_loop_pipe_sequential_init_U", "Parent" : "473"},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1150_fu_107", "Parent" : "451", "Child" : ["477"],
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
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_349_1150_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "476"},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113", "Parent" : "451", "Child" : ["479", "481", "484", "487", "488", "489", "490"],
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
					{"ID" : "479", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "481", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "484", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "481", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "484", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177", "Parent" : "478", "Child" : ["480"],
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
	{"ID" : "480", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_180_1_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "479"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183", "Parent" : "478", "Child" : ["482", "483"],
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
	{"ID" : "482", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.p503p1_1_U", "Parent" : "481"},
	{"ID" : "483", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_185_3_fu_183.flow_control_loop_pipe_sequential_init_U", "Parent" : "481"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199", "Parent" : "478", "Child" : ["485", "486"],
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
	{"ID" : "485", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.p503p1_1_U", "Parent" : "484"},
	{"ID" : "486", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113.grp_rdc_mont_Pipeline_VITIS_LOOP_206_5_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "484"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113.mul_32ns_32ns_64_2_1_U688", "Parent" : "478"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113.mul_32ns_32ns_64_2_1_U689", "Parent" : "478"},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113.mul_32ns_32ns_64_2_1_U690", "Parent" : "478"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_rdc_mont_fu_113.mul_32ns_32ns_64_2_1_U691", "Parent" : "478"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_152_fu_123", "Parent" : "451", "Child" : ["492", "494", "496", "497", "498", "499"],
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
					{"ID" : "492", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "494", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "492", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "494", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_152_fu_123.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "491", "Child" : ["493"],
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
	{"ID" : "493", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_152_fu_123.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "492"},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_152_fu_123.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "491", "Child" : ["495"],
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
	{"ID" : "495", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_152_fu_123.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "494"},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_152_fu_123.mul_32ns_32ns_64_2_1_U277", "Parent" : "491"},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_152_fu_123.mul_32ns_32ns_64_2_1_U278", "Parent" : "491"},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_152_fu_123.mul_32ns_32ns_64_2_1_U279", "Parent" : "491"},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_mp_mul_152_fu_123.mul_32ns_32ns_64_2_1_U280", "Parent" : "491"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_169_1151_fu_130", "Parent" : "451", "Child" : ["501"],
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
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.grp_fp2mul503_mont_72_73_1_Pipeline_VITIS_LOOP_169_1151_fu_130.flow_control_loop_pipe_sequential_init_U", "Parent" : "500"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.mul_32ns_32ns_64_2_1_U935", "Parent" : "451"},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.mul_32ns_32ns_64_2_1_U936", "Parent" : "451"},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.mul_32ns_32ns_64_2_1_U937", "Parent" : "451"},
	{"ID" : "505", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_72_73_1_fu_1196.mul_32ns_32ns_64_2_1_U938", "Parent" : "451"},
	{"ID" : "506", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209", "Parent" : "0", "Child" : ["507", "508", "509", "510", "511", "512", "521", "523", "525", "527", "530", "532", "545", "554"],
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
					{"ID" : "512", "SubInstance" : "grp_mp_mul_14785_fu_56", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "521", "SubInstance" : "grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1_fu_72", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "532", "SubInstance" : "grp_rdc_mont_14183_fu_108", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "512", "SubInstance" : "grp_mp_mul_14785_fu_56", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "523", "SubInstance" : "grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1176_fu_79", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "527", "SubInstance" : "grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_199_1_fu_94", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "532", "SubInstance" : "grp_rdc_mont_14183_fu_108", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.t1_U", "Parent" : "506"},
	{"ID" : "508", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.t2_U", "Parent" : "506"},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.tt1_U", "Parent" : "506"},
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.tt2_U", "Parent" : "506"},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.tt3_U", "Parent" : "506"},
	{"ID" : "512", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_14785_fu_56", "Parent" : "506", "Child" : ["513", "515", "517", "518", "519", "520"],
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
					{"ID" : "513", "SubInstance" : "grp_mp_mul_14785_Pipeline_VITIS_LOOP_144_2_fu_134", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "515", "SubInstance" : "grp_mp_mul_14785_Pipeline_VITIS_LOOP_157_4_fu_151", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "513", "SubInstance" : "grp_mp_mul_14785_Pipeline_VITIS_LOOP_144_2_fu_134", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "515", "SubInstance" : "grp_mp_mul_14785_Pipeline_VITIS_LOOP_157_4_fu_151", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_14785_fu_56.grp_mp_mul_14785_Pipeline_VITIS_LOOP_144_2_fu_134", "Parent" : "512", "Child" : ["514"],
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
	{"ID" : "514", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_14785_fu_56.grp_mp_mul_14785_Pipeline_VITIS_LOOP_144_2_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "513"},
	{"ID" : "515", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_14785_fu_56.grp_mp_mul_14785_Pipeline_VITIS_LOOP_157_4_fu_151", "Parent" : "512", "Child" : ["516"],
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
	{"ID" : "516", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_14785_fu_56.grp_mp_mul_14785_Pipeline_VITIS_LOOP_157_4_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "515"},
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_14785_fu_56.mul_32ns_32ns_64_2_1_U775", "Parent" : "512"},
	{"ID" : "518", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_14785_fu_56.mul_32ns_32ns_64_2_1_U776", "Parent" : "512"},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_14785_fu_56.mul_32ns_32ns_64_2_1_U777", "Parent" : "512"},
	{"ID" : "520", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_14785_fu_56.mul_32ns_32ns_64_2_1_U778", "Parent" : "512"},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1_fu_72", "Parent" : "506", "Child" : ["522"],
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
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "521"},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1176_fu_79", "Parent" : "506", "Child" : ["524"],
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
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1176_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "523"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_169_1_fu_86", "Parent" : "506", "Child" : ["526"],
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
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_169_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "525"},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_199_1_fu_94", "Parent" : "506", "Child" : ["528", "529"],
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
	{"ID" : "528", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_199_1_fu_94.p503_1_U", "Parent" : "527"},
	{"ID" : "529", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_199_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "527"},
	{"ID" : "530", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1177_fu_102", "Parent" : "506", "Child" : ["531"],
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
	{"ID" : "531", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_349_1177_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "530"},
	{"ID" : "532", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108", "Parent" : "506", "Child" : ["533", "535", "538", "541", "542", "543", "544"],
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
					{"ID" : "533", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "535", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "538", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "535", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "538", "SubInstance" : "grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_184_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_202_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "533", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190", "Parent" : "532", "Child" : ["534"],
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
	{"ID" : "534", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_180_1_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "533"},
	{"ID" : "535", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199", "Parent" : "532", "Child" : ["536", "537"],
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
	{"ID" : "536", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199.p503p1_1_U", "Parent" : "535"},
	{"ID" : "537", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_185_3_fu_199.flow_control_loop_pipe_sequential_init_U", "Parent" : "535"},
	{"ID" : "538", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216", "Parent" : "532", "Child" : ["539", "540"],
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
	{"ID" : "539", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216.p503p1_1_U", "Parent" : "538"},
	{"ID" : "540", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108.grp_rdc_mont_14183_Pipeline_VITIS_LOOP_206_5_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "538"},
	{"ID" : "541", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U320", "Parent" : "532"},
	{"ID" : "542", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U321", "Parent" : "532"},
	{"ID" : "543", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U322", "Parent" : "532"},
	{"ID" : "544", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_rdc_mont_14183_fu_108.mul_32ns_32ns_64_2_1_U323", "Parent" : "532"},
	{"ID" : "545", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_152_fu_120", "Parent" : "506", "Child" : ["546", "548", "550", "551", "552", "553"],
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
					{"ID" : "546", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "548", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "546", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "548", "SubInstance" : "grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_156_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "546", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112", "Parent" : "545", "Child" : ["547"],
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
	{"ID" : "547", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_144_2_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "546"},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127", "Parent" : "545", "Child" : ["549"],
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
	{"ID" : "549", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_152_fu_120.grp_mp_mul_152_Pipeline_VITIS_LOOP_157_4_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "548"},
	{"ID" : "550", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U277", "Parent" : "545"},
	{"ID" : "551", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U278", "Parent" : "545"},
	{"ID" : "552", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U279", "Parent" : "545"},
	{"ID" : "553", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_mp_mul_152_fu_120.mul_32ns_32ns_64_2_1_U280", "Parent" : "545"},
	{"ID" : "554", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_169_1178_fu_127", "Parent" : "506", "Child" : ["555"],
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
	{"ID" : "555", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_1339777_fu_1209.grp_fp2mul503_mont_1339777_Pipeline_VITIS_LOOP_169_1178_fu_127.flow_control_loop_pipe_sequential_init_U", "Parent" : "554"}]}


set ArgLastReadFirstWriteLatency {
	LADDER3PT_74_75_1 {
		ephemeralsk {Type I LastRead 20 FirstWrite -1}
		R_X {Type IO LastRead 1 FirstWrite -1}
		R_Z {Type IO LastRead 1 FirstWrite -1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}
		A {Type I LastRead -1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		XQA_0 {Type I LastRead -1 FirstWrite -1}
		XRA_0 {Type I LastRead -1 FirstWrite -1}
		XRA_1 {Type I LastRead -1 FirstWrite -1}
		XPA_0 {Type I LastRead -1 FirstWrite -1}
		XPA_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_74_75_1_Pipeline_1 {
		A24_1 {Type O LastRead -1 FirstWrite 0}
		A24 {Type O LastRead -1 FirstWrite 0}}
	LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1220 {
		R_X {Type O LastRead -1 FirstWrite 1}
		XPA_0 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1 {
		A24 {Type O LastRead -1 FirstWrite 1}
		A24_1 {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1221 {
		R_X {Type O LastRead -1 FirstWrite 1}
		XPA_1 {Type I LastRead -1 FirstWrite -1}}
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
	LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1217 {
		R2_X {Type O LastRead -1 FirstWrite 1}
		XRA_0 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1218 {
		R2_X_2 {Type O LastRead -1 FirstWrite 1}
		XRA_1 {Type I LastRead -1 FirstWrite -1}}
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
	LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1214 {
		R0_X {Type O LastRead -1 FirstWrite 1}
		XQA_0 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1216 {
		R0_Z {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1215 {
		R0_X {Type O LastRead -1 FirstWrite 0}}
	LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1219 {
		R2_Z {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
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
	LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_14_1222 {
		R_Z {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_23_1 {
		R_Z {Type O LastRead -1 FirstWrite 0}}
	LADDER3PT_74_75_1_Pipeline_VITIS_LOOP_267_1 {
		R2_X {Type IO LastRead 0 FirstWrite 2}
		R2_X_2 {Type IO LastRead 0 FirstWrite 2}
		R2_Z {Type IO LastRead 0 FirstWrite 2}
		R2_Z_2 {Type IO LastRead 0 FirstWrite 2}
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
	{"Name" : "Latency", "Min" : "1865690", "Max" : "2848190"}
	, {"Name" : "Interval", "Min" : "1865690", "Max" : "2848190"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ephemeralsk { ap_memory {  { ephemeralsk_address0 mem_address 1 5 }  { ephemeralsk_ce0 mem_ce 1 1 }  { ephemeralsk_q0 mem_dout 0 8 }  { ephemeralsk_address1 MemPortADDR2 1 5 }  { ephemeralsk_ce1 MemPortCE2 1 1 }  { ephemeralsk_q1 MemPortDOUT2 0 8 } } }
	R_X { ap_memory {  { R_X_address0 mem_address 1 4 }  { R_X_ce0 mem_ce 1 1 }  { R_X_we0 mem_we 1 1 }  { R_X_d0 mem_din 1 64 }  { R_X_q0 mem_dout 0 64 }  { R_X_address1 MemPortADDR2 1 4 }  { R_X_ce1 MemPortCE2 1 1 }  { R_X_we1 MemPortWE2 1 1 }  { R_X_d1 MemPortDIN2 1 64 }  { R_X_q1 MemPortDOUT2 0 64 } } }
	R_Z { ap_memory {  { R_Z_address0 mem_address 1 4 }  { R_Z_ce0 mem_ce 1 1 }  { R_Z_we0 mem_we 1 1 }  { R_Z_d0 mem_din 1 64 }  { R_Z_q0 mem_dout 0 64 }  { R_Z_address1 MemPortADDR2 1 4 }  { R_Z_ce1 MemPortCE2 1 1 }  { R_Z_we1 MemPortWE2 1 1 }  { R_Z_d1 MemPortDIN2 1 64 }  { R_Z_q1 MemPortDOUT2 0 64 } } }
}
