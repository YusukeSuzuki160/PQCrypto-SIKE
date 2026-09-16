set moduleName LADDER3PT
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
set cdfgNum 818
set C_modelName {LADDER3PT}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict ephemeralsk_i { MEM_WIDTH 8 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_X { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_Z { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ephemeralsk_i int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ R_X int 64 regular {array 16 { 2 } 1 1 }  }
	{ R_Z int 64 regular {array 16 { 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ephemeralsk_i", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "R_X", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "R_Z", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ephemeralsk_i_address0 sc_out sc_lv 5 signal 0 } 
	{ ephemeralsk_i_ce0 sc_out sc_logic 1 signal 0 } 
	{ ephemeralsk_i_q0 sc_in sc_lv 8 signal 0 } 
	{ ephemeralsk_i_address1 sc_out sc_lv 5 signal 0 } 
	{ ephemeralsk_i_ce1 sc_out sc_logic 1 signal 0 } 
	{ ephemeralsk_i_q1 sc_in sc_lv 8 signal 0 } 
	{ R_X_address0 sc_out sc_lv 4 signal 1 } 
	{ R_X_ce0 sc_out sc_logic 1 signal 1 } 
	{ R_X_we0 sc_out sc_logic 1 signal 1 } 
	{ R_X_d0 sc_out sc_lv 64 signal 1 } 
	{ R_X_q0 sc_in sc_lv 64 signal 1 } 
	{ R_Z_address0 sc_out sc_lv 4 signal 2 } 
	{ R_Z_ce0 sc_out sc_logic 1 signal 2 } 
	{ R_Z_we0 sc_out sc_logic 1 signal 2 } 
	{ R_Z_d0 sc_out sc_lv 64 signal 2 } 
	{ R_Z_q0 sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ephemeralsk_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ephemeralsk_i", "role": "address0" }} , 
 	{ "name": "ephemeralsk_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ephemeralsk_i", "role": "ce0" }} , 
 	{ "name": "ephemeralsk_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ephemeralsk_i", "role": "q0" }} , 
 	{ "name": "ephemeralsk_i_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ephemeralsk_i", "role": "address1" }} , 
 	{ "name": "ephemeralsk_i_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ephemeralsk_i", "role": "ce1" }} , 
 	{ "name": "ephemeralsk_i_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ephemeralsk_i", "role": "q1" }} , 
 	{ "name": "R_X_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "R_X", "role": "address0" }} , 
 	{ "name": "R_X_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_X", "role": "ce0" }} , 
 	{ "name": "R_X_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_X", "role": "we0" }} , 
 	{ "name": "R_X_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_X", "role": "d0" }} , 
 	{ "name": "R_X_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_X", "role": "q0" }} , 
 	{ "name": "R_Z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "R_Z", "role": "address0" }} , 
 	{ "name": "R_Z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_Z", "role": "ce0" }} , 
 	{ "name": "R_Z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "R_Z", "role": "we0" }} , 
 	{ "name": "R_Z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "d0" }} , 
 	{ "name": "R_Z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "R_Z", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "22", "25", "28", "37", "40", "49", "52", "54", "57", "60", "63", "66", "77", "80", "82", "84", "93", "102", "108", "114", "189", "196", "203", "212", "221", "314", "429", "435", "441", "556", "671", "746", "755", "870", "879"],
		"CDFG" : "LADDER3PT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ephemeralsk_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1228_fu_903", "Port" : "R_X", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "37", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1229_fu_927", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_269_1_fu_1012", "Port" : "R_X", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "755", "SubInstance" : "grp_fp2mul503_mont_60_fu_1187", "Port" : "R_X", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1230_fu_998", "Port" : "R_Z", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "80", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_24_1_fu_1006", "Port" : "R_Z", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "82", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_269_1_fu_1012", "Port" : "R_Z", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "755", "SubInstance" : "grp_fp2mul503_mont_60_fu_1187", "Port" : "R_X", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "Montgomery_one_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1_fu_911", "Port" : "Montgomery_one_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "54", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1224_fu_960", "Port" : "Montgomery_one_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "63", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1227_fu_981", "Port" : "Montgomery_one_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "77", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1230_fu_998", "Port" : "Montgomery_one_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_fpadd503_3_fu_919", "Port" : "p503x2_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "40", "SubInstance" : "grp_fpadd503_4_fu_935", "Port" : "p503x2_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "84", "SubInstance" : "grp_fpadd503_1_fu_1025", "Port" : "p503x2_1", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "93", "SubInstance" : "grp_fpadd503_1_fu_1034", "Port" : "p503x2_1", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "102", "SubInstance" : "grp_fpsub503_2_fu_1043", "Port" : "p503x2_1", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "108", "SubInstance" : "grp_fpsub503_2_fu_1052", "Port" : "p503x2_1", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "114", "SubInstance" : "grp_fp2sqr503_mont_6_fu_1061", "Port" : "p503x2_1", "Inst_start_state" : "27", "Inst_end_state" : "28"},
					{"ID" : "203", "SubInstance" : "grp_fpadd503_2_1_fu_1085", "Port" : "p503x2_1", "Inst_start_state" : "27", "Inst_end_state" : "28"},
					{"ID" : "212", "SubInstance" : "grp_fpadd503_2_1_fu_1093", "Port" : "p503x2_1", "Inst_start_state" : "27", "Inst_end_state" : "28"},
					{"ID" : "429", "SubInstance" : "grp_fpsub503_3_fu_1125", "Port" : "p503x2_1", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "435", "SubInstance" : "grp_fpsub503_3_fu_1134", "Port" : "p503x2_1", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "671", "SubInstance" : "grp_fp2sqr503_mont_5_fu_1171", "Port" : "p503x2_1", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "746", "SubInstance" : "grp_fpadd503_2_fu_1179", "Port" : "p503x2_1", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "870", "SubInstance" : "grp_fpadd503_fu_1200", "Port" : "p503x2_1", "Inst_start_state" : "39", "Inst_end_state" : "40"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_fpadd503_4_fu_935", "Port" : "a", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_fp2div2_503_fu_988", "Port" : "p503_1", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "189", "SubInstance" : "grp_fpcorrection503_fu_1071", "Port" : "p503_1", "Inst_start_state" : "27", "Inst_end_state" : "28"},
					{"ID" : "196", "SubInstance" : "grp_fpcorrection503_fu_1078", "Port" : "p503_1", "Inst_start_state" : "27", "Inst_end_state" : "28"},
					{"ID" : "221", "SubInstance" : "grp_fp2mul503_mont_231_3_fu_1101", "Port" : "p503_1", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "314", "SubInstance" : "grp_fp2mul503_mont_230_fu_1113", "Port" : "p503_1", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "441", "SubInstance" : "grp_fp2mul503_mont_fu_1143", "Port" : "p503_1", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "556", "SubInstance" : "grp_fp2mul503_mont_8_fu_1155", "Port" : "p503_1", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "755", "SubInstance" : "grp_fp2mul503_mont_60_fu_1187", "Port" : "p503_1", "Inst_start_state" : "43", "Inst_end_state" : "44"},
					{"ID" : "879", "SubInstance" : "grp_fp2mul503_mont_229_fu_1209", "Port" : "p503_1", "Inst_start_state" : "39", "Inst_end_state" : "40"}]},
			{"Name" : "XQA_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1222_fu_948", "Port" : "XQA_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "XRA_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1225_fu_967", "Port" : "XRA_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "XRA_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1226_fu_974", "Port" : "XRA_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "XPA_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1228_fu_903", "Port" : "XPA_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "XPA_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1229_fu_927", "Port" : "XPA_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_fp2mul503_mont_231_3_fu_1101", "Port" : "p503p1_1", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "314", "SubInstance" : "grp_fp2mul503_mont_230_fu_1113", "Port" : "p503p1_1", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "441", "SubInstance" : "grp_fp2mul503_mont_fu_1143", "Port" : "p503p1_1", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "556", "SubInstance" : "grp_fp2mul503_mont_8_fu_1155", "Port" : "p503p1_1", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "755", "SubInstance" : "grp_fp2mul503_mont_60_fu_1187", "Port" : "p503p1_1", "Inst_start_state" : "43", "Inst_end_state" : "44"},
					{"ID" : "879", "SubInstance" : "grp_fp2mul503_mont_229_fu_1209", "Port" : "p503p1_1", "Inst_start_state" : "39", "Inst_end_state" : "40"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_319_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "44", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state44"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state16"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t2_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R0_X_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R0_X_4_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R0_Z_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R0_Z_4_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_X_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_X_4_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_Z_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_Z_4_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A24_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A24_4_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A24_5_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A24_6_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_1_fu_891", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "LADDER3PT_Pipeline_1",
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
			{"Name" : "A24_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A24_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A24_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A24", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_1_fu_891.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1228_fu_903", "Parent" : "0", "Child" : ["23", "24"],
		"CDFG" : "LADDER3PT_Pipeline_VITIS_LOOP_16_1228",
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
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1228_fu_903.XPA_0_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1228_fu_903.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1_fu_911", "Parent" : "0", "Child" : ["26", "27"],
		"CDFG" : "LADDER3PT_Pipeline_VITIS_LOOP_16_1",
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
			{"Name" : "A24_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Montgomery_one_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1_fu_911.Montgomery_one_1_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1_fu_911.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_3_fu_919", "Parent" : "0", "Child" : ["29", "31", "34"],
		"CDFG" : "fpadd503_3",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_fpadd503_3_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "31", "SubInstance" : "grp_fpadd503_3_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "34", "SubInstance" : "grp_fpadd503_3_Pipeline_VITIS_LOOP_46_3_fu_45", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_fpadd503_3_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "31", "SubInstance" : "grp_fpadd503_3_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "34", "SubInstance" : "grp_fpadd503_3_Pipeline_VITIS_LOOP_46_3_fu_45", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_fpadd503_3_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "34", "SubInstance" : "grp_fpadd503_3_Pipeline_VITIS_LOOP_46_3_fu_45", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_3_fu_919.grp_fpadd503_3_Pipeline_VITIS_LOOP_33_1_fu_26", "Parent" : "28", "Child" : ["30"],
		"CDFG" : "fpadd503_3_Pipeline_VITIS_LOOP_33_1",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_3_fu_919.grp_fpadd503_3_Pipeline_VITIS_LOOP_33_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_3_fu_919.grp_fpadd503_3_Pipeline_VITIS_LOOP_39_2_fu_34", "Parent" : "28", "Child" : ["32", "33"],
		"CDFG" : "fpadd503_3_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_3_fu_919.grp_fpadd503_3_Pipeline_VITIS_LOOP_39_2_fu_34.p503x2_1_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_3_fu_919.grp_fpadd503_3_Pipeline_VITIS_LOOP_39_2_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_3_fu_919.grp_fpadd503_3_Pipeline_VITIS_LOOP_46_3_fu_45", "Parent" : "28", "Child" : ["35", "36"],
		"CDFG" : "fpadd503_3_Pipeline_VITIS_LOOP_46_3",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_3_fu_919.grp_fpadd503_3_Pipeline_VITIS_LOOP_46_3_fu_45.p503x2_1_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_3_fu_919.grp_fpadd503_3_Pipeline_VITIS_LOOP_46_3_fu_45.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1229_fu_927", "Parent" : "0", "Child" : ["38", "39"],
		"CDFG" : "LADDER3PT_Pipeline_VITIS_LOOP_16_1229",
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
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1229_fu_927.XPA_1_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1229_fu_927.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_4_fu_935", "Parent" : "0", "Child" : ["41", "43", "46"],
		"CDFG" : "fpadd503_4",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_fpadd503_4_Pipeline_VITIS_LOOP_33_1_fu_42", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_fpadd503_4_Pipeline_VITIS_LOOP_33_1_fu_42", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "43", "SubInstance" : "grp_fpadd503_4_Pipeline_VITIS_LOOP_39_2_fu_53", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "46", "SubInstance" : "grp_fpadd503_4_Pipeline_VITIS_LOOP_46_3_fu_64", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_fpadd503_4_Pipeline_VITIS_LOOP_33_1_fu_42", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "43", "SubInstance" : "grp_fpadd503_4_Pipeline_VITIS_LOOP_39_2_fu_53", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "46", "SubInstance" : "grp_fpadd503_4_Pipeline_VITIS_LOOP_46_3_fu_64", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_fpadd503_4_Pipeline_VITIS_LOOP_39_2_fu_53", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "46", "SubInstance" : "grp_fpadd503_4_Pipeline_VITIS_LOOP_46_3_fu_64", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_4_fu_935.grp_fpadd503_4_Pipeline_VITIS_LOOP_33_1_fu_42", "Parent" : "40", "Child" : ["42"],
		"CDFG" : "fpadd503_4_Pipeline_VITIS_LOOP_33_1",
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
			{"Name" : "zext_ln35_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_4_fu_935.grp_fpadd503_4_Pipeline_VITIS_LOOP_33_1_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_4_fu_935.grp_fpadd503_4_Pipeline_VITIS_LOOP_39_2_fu_53", "Parent" : "40", "Child" : ["44", "45"],
		"CDFG" : "fpadd503_4_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_4_fu_935.grp_fpadd503_4_Pipeline_VITIS_LOOP_39_2_fu_53.p503x2_1_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_4_fu_935.grp_fpadd503_4_Pipeline_VITIS_LOOP_39_2_fu_53.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_4_fu_935.grp_fpadd503_4_Pipeline_VITIS_LOOP_46_3_fu_64", "Parent" : "40", "Child" : ["47", "48"],
		"CDFG" : "fpadd503_4_Pipeline_VITIS_LOOP_46_3",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_4_fu_935.grp_fpadd503_4_Pipeline_VITIS_LOOP_46_3_fu_64.p503x2_1_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_4_fu_935.grp_fpadd503_4_Pipeline_VITIS_LOOP_46_3_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1222_fu_948", "Parent" : "0", "Child" : ["50", "51"],
		"CDFG" : "LADDER3PT_Pipeline_VITIS_LOOP_16_1222",
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
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1222_fu_948.XQA_0_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1222_fu_948.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1223_fu_955", "Parent" : "0", "Child" : ["53"],
		"CDFG" : "LADDER3PT_Pipeline_VITIS_LOOP_16_1223",
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
			{"Name" : "R0_X_4", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1223_fu_955.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1224_fu_960", "Parent" : "0", "Child" : ["55", "56"],
		"CDFG" : "LADDER3PT_Pipeline_VITIS_LOOP_16_1224",
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
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1224_fu_960.Montgomery_one_1_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1224_fu_960.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1225_fu_967", "Parent" : "0", "Child" : ["58", "59"],
		"CDFG" : "LADDER3PT_Pipeline_VITIS_LOOP_16_1225",
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
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1225_fu_967.XRA_0_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1225_fu_967.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1226_fu_974", "Parent" : "0", "Child" : ["61", "62"],
		"CDFG" : "LADDER3PT_Pipeline_VITIS_LOOP_16_1226",
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
			{"Name" : "R2_X_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "XRA_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1226_fu_974.XRA_1_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1226_fu_974.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1227_fu_981", "Parent" : "0", "Child" : ["64", "65"],
		"CDFG" : "LADDER3PT_Pipeline_VITIS_LOOP_16_1227",
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
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1227_fu_981.Montgomery_one_1_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1227_fu_981.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_988", "Parent" : "0", "Child" : ["67", "70", "72", "75"],
		"CDFG" : "fp2div2_503",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_91_1_fu_92", "Port" : "c_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "70", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_435_1_fu_103", "Port" : "c_0_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_91_1_fu_92", "Port" : "c_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "70", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_435_1_fu_103", "Port" : "c_0_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_91_1211_fu_111", "Port" : "c_1_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "75", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_435_1212_fu_122", "Port" : "c_1_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_91_1211_fu_111", "Port" : "c_1_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "75", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_435_1212_fu_122", "Port" : "c_1_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_91_1_fu_92", "Port" : "p503_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "72", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_91_1211_fu_111", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_988.grp_fp2div2_503_Pipeline_VITIS_LOOP_91_1_fu_92", "Parent" : "66", "Child" : ["68", "69"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_91_1",
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
			{"Name" : "c_0_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln90", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_988.grp_fp2div2_503_Pipeline_VITIS_LOOP_91_1_fu_92.p503_1_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_988.grp_fp2div2_503_Pipeline_VITIS_LOOP_91_1_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_988.grp_fp2div2_503_Pipeline_VITIS_LOOP_435_1_fu_103", "Parent" : "66", "Child" : ["71"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_435_1",
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
			{"Name" : "c_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_0_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_435_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state3", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state3_blk", "QuitState" : "ap_ST_fsm_state3", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state3_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_988.grp_fp2div2_503_Pipeline_VITIS_LOOP_435_1_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_988.grp_fp2div2_503_Pipeline_VITIS_LOOP_91_1211_fu_111", "Parent" : "66", "Child" : ["73", "74"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_91_1211",
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
			{"Name" : "c_1_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln90_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_988.grp_fp2div2_503_Pipeline_VITIS_LOOP_91_1211_fu_111.p503_1_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_988.grp_fp2div2_503_Pipeline_VITIS_LOOP_91_1211_fu_111.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_988.grp_fp2div2_503_Pipeline_VITIS_LOOP_435_1212_fu_122", "Parent" : "66", "Child" : ["76"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_435_1212",
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
			{"Name" : "c_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_435_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state3", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state3_blk", "QuitState" : "ap_ST_fsm_state3", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state3_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_988.grp_fp2div2_503_Pipeline_VITIS_LOOP_435_1212_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1230_fu_998", "Parent" : "0", "Child" : ["78", "79"],
		"CDFG" : "LADDER3PT_Pipeline_VITIS_LOOP_16_1230",
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
			{"Name" : "VITIS_LOOP_16_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1230_fu_998.Montgomery_one_1_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_16_1230_fu_998.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_24_1_fu_1006", "Parent" : "0", "Child" : ["81"],
		"CDFG" : "LADDER3PT_Pipeline_VITIS_LOOP_24_1",
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
			{"Name" : "VITIS_LOOP_24_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_24_1_fu_1006.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_269_1_fu_1012", "Parent" : "0", "Child" : ["83"],
		"CDFG" : "LADDER3PT_Pipeline_VITIS_LOOP_269_1",
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
			{"Name" : "R2_X", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R2_X_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R2_Z", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R2_Z_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln290", "Type" : "None", "Direction" : "I"},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_269_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state4", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state4_blk", "QuitState" : "ap_ST_fsm_state4", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state4_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_Pipeline_VITIS_LOOP_269_1_fu_1012.flow_control_loop_pipe_sequential_init_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1025", "Parent" : "0", "Child" : ["85", "87", "90"],
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
					{"ID" : "85", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "87", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "90", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "90", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1025.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "84", "Child" : ["86"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1025.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1025.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "84", "Child" : ["88", "89"],
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
			{"Name" : "carry_201_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1025.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1025.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1025.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "84", "Child" : ["91", "92"],
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
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1025.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1025.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1034", "Parent" : "0", "Child" : ["94", "96", "99"],
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
					{"ID" : "94", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "96", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "99", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "99", "SubInstance" : "grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1034.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "93", "Child" : ["95"],
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
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1034.grp_fpadd503_1_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1034.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "93", "Child" : ["97", "98"],
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
			{"Name" : "carry_201_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1034.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "96"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1034.grp_fpadd503_1_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "96"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1034.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "93", "Child" : ["100", "101"],
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
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1034.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1_fu_1034.grp_fpadd503_1_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_1043", "Parent" : "0", "Child" : ["103", "105"],
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
					{"ID" : "103", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "105", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_1043.grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Parent" : "102", "Child" : ["104"],
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
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_1043.grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_1043.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Parent" : "102", "Child" : ["106", "107"],
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
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_1043.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39.p503x2_1_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_1043.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39.flow_control_loop_pipe_sequential_init_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_1052", "Parent" : "0", "Child" : ["109", "111"],
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
					{"ID" : "109", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "111", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_1052.grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28", "Parent" : "108", "Child" : ["110"],
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
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_1052.grp_fpsub503_2_Pipeline_VITIS_LOOP_61_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_1052.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39", "Parent" : "108", "Child" : ["112", "113"],
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
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_1052.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39.p503x2_1_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_2_fu_1052.grp_fpsub503_2_Pipeline_VITIS_LOOP_68_2_fu_39.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061", "Parent" : "0", "Child" : ["115", "116", "117", "118", "120", "122", "125", "127", "158"],
		"CDFG" : "fp2sqr503_mont_6",
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
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_389_1_fu_48", "Port" : "a_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "120", "SubInstance" : "grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_61_1_fu_58", "Port" : "a_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "125", "SubInstance" : "grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_389_1128_fu_76", "Port" : "a_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_389_1_fu_48", "Port" : "a_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "120", "SubInstance" : "grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_61_1_fu_58", "Port" : "a_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "158", "SubInstance" : "grp_fpmul503_mont_fu_91", "Port" : "mb", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_fpmul503_mont_fu_83", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "grp_fpmul503_mont_fu_91", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_68_2_fu_68", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.t1_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.t2_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.t3_U", "Parent" : "114"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_389_1_fu_48", "Parent" : "114", "Child" : ["119"],
		"CDFG" : "fp2sqr503_mont_6_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_389_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_61_1_fu_58", "Parent" : "114", "Child" : ["121"],
		"CDFG" : "fp2sqr503_mont_6_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_61_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_68_2_fu_68", "Parent" : "114", "Child" : ["123", "124"],
		"CDFG" : "fp2sqr503_mont_6_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_68_2_fu_68.p503x2_1_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_68_2_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_389_1128_fu_76", "Parent" : "114", "Child" : ["126"],
		"CDFG" : "fp2sqr503_mont_6_Pipeline_VITIS_LOOP_389_1128",
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
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fp2sqr503_mont_6_Pipeline_VITIS_LOOP_389_1128_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83", "Parent" : "114", "Child" : ["128"],
		"CDFG" : "fpmul503_mont",
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
					{"ID" : "128", "SubInstance" : "grp_mul_1_3_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_mul_1_3_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_mul_1_3_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18", "Parent" : "127", "Child" : ["129"],
		"CDFG" : "mul_1_3",
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
					{"ID" : "129", "SubInstance" : "grp_mul_1_2_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_mul_1_2_fu_16", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_mul_1_2_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16", "Parent" : "128", "Child" : ["130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157"],
		"CDFG" : "mul_1_2",
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
	{"ID" : "130", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U224", "Parent" : "129"},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U225", "Parent" : "129"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U226", "Parent" : "129"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U227", "Parent" : "129"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U228", "Parent" : "129"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U229", "Parent" : "129"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U230", "Parent" : "129"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U231", "Parent" : "129"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U232", "Parent" : "129"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_56ns_119_1_1_U233", "Parent" : "129"},
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_56ns_119_1_1_U234", "Parent" : "129"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_62ns_125_1_1_U235", "Parent" : "129"},
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_62ns_125_1_1_U236", "Parent" : "129"},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_62ns_125_1_1_U237", "Parent" : "129"},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_62ns_125_1_1_U238", "Parent" : "129"},
	{"ID" : "145", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_127_1_1_U239", "Parent" : "129"},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_127_1_1_U240", "Parent" : "129"},
	{"ID" : "147", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_65ns_128_1_1_U241", "Parent" : "129"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_65ns_128_1_1_U242", "Parent" : "129"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U243", "Parent" : "129"},
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U244", "Parent" : "129"},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U245", "Parent" : "129"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_62ns_64_1_1_U246", "Parent" : "129"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U247", "Parent" : "129"},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_62ns_64_1_1_U248", "Parent" : "129"},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U249", "Parent" : "129"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64s_64_1_1_U250", "Parent" : "129"},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_83.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64s_64_1_1_U251", "Parent" : "129"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91", "Parent" : "114", "Child" : ["159"],
		"CDFG" : "fpmul503_mont",
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
					{"ID" : "159", "SubInstance" : "grp_mul_1_3_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_mul_1_3_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_mul_1_3_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18", "Parent" : "158", "Child" : ["160"],
		"CDFG" : "mul_1_3",
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
					{"ID" : "160", "SubInstance" : "grp_mul_1_2_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_mul_1_2_fu_16", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_mul_1_2_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16", "Parent" : "159", "Child" : ["161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188"],
		"CDFG" : "mul_1_2",
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
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U224", "Parent" : "160"},
	{"ID" : "162", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U225", "Parent" : "160"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U226", "Parent" : "160"},
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U227", "Parent" : "160"},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U228", "Parent" : "160"},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U229", "Parent" : "160"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U230", "Parent" : "160"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U231", "Parent" : "160"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U232", "Parent" : "160"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_56ns_119_1_1_U233", "Parent" : "160"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_56ns_119_1_1_U234", "Parent" : "160"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_62ns_125_1_1_U235", "Parent" : "160"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_62ns_125_1_1_U236", "Parent" : "160"},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_62ns_125_1_1_U237", "Parent" : "160"},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_62ns_125_1_1_U238", "Parent" : "160"},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_127_1_1_U239", "Parent" : "160"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_127_1_1_U240", "Parent" : "160"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_65ns_128_1_1_U241", "Parent" : "160"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_65ns_128_1_1_U242", "Parent" : "160"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U243", "Parent" : "160"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U244", "Parent" : "160"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U245", "Parent" : "160"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_62ns_64_1_1_U246", "Parent" : "160"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U247", "Parent" : "160"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_62ns_64_1_1_U248", "Parent" : "160"},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U249", "Parent" : "160"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64s_64_1_1_U250", "Parent" : "160"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_6_fu_1061.grp_fpmul503_mont_fu_91.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64s_64_1_1_U251", "Parent" : "160"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1071", "Parent" : "0", "Child" : ["190", "193"],
		"CDFG" : "fpcorrection503",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_105_1_fu_22", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "193", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_111_2_fu_31", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_105_1_fu_22", "Port" : "p503_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "193", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_111_2_fu_31", "Port" : "p503_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1071.grp_fpcorrection503_Pipeline_VITIS_LOOP_105_1_fu_22", "Parent" : "189", "Child" : ["191", "192"],
		"CDFG" : "fpcorrection503_Pipeline_VITIS_LOOP_105_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_105_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1071.grp_fpcorrection503_Pipeline_VITIS_LOOP_105_1_fu_22.p503_1_U", "Parent" : "190"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1071.grp_fpcorrection503_Pipeline_VITIS_LOOP_105_1_fu_22.flow_control_loop_pipe_sequential_init_U", "Parent" : "190"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1071.grp_fpcorrection503_Pipeline_VITIS_LOOP_111_2_fu_31", "Parent" : "189", "Child" : ["194", "195"],
		"CDFG" : "fpcorrection503_Pipeline_VITIS_LOOP_111_2",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln103", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_111_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1071.grp_fpcorrection503_Pipeline_VITIS_LOOP_111_2_fu_31.p503_1_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1071.grp_fpcorrection503_Pipeline_VITIS_LOOP_111_2_fu_31.flow_control_loop_pipe_sequential_init_U", "Parent" : "193"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1078", "Parent" : "0", "Child" : ["197", "200"],
		"CDFG" : "fpcorrection503",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_105_1_fu_22", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "200", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_111_2_fu_31", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_105_1_fu_22", "Port" : "p503_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "200", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_111_2_fu_31", "Port" : "p503_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1078.grp_fpcorrection503_Pipeline_VITIS_LOOP_105_1_fu_22", "Parent" : "196", "Child" : ["198", "199"],
		"CDFG" : "fpcorrection503_Pipeline_VITIS_LOOP_105_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_105_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1078.grp_fpcorrection503_Pipeline_VITIS_LOOP_105_1_fu_22.p503_1_U", "Parent" : "197"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1078.grp_fpcorrection503_Pipeline_VITIS_LOOP_105_1_fu_22.flow_control_loop_pipe_sequential_init_U", "Parent" : "197"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1078.grp_fpcorrection503_Pipeline_VITIS_LOOP_111_2_fu_31", "Parent" : "196", "Child" : ["201", "202"],
		"CDFG" : "fpcorrection503_Pipeline_VITIS_LOOP_111_2",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln103", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_111_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1078.grp_fpcorrection503_Pipeline_VITIS_LOOP_111_2_fu_31.p503_1_U", "Parent" : "200"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1078.grp_fpcorrection503_Pipeline_VITIS_LOOP_111_2_fu_31.flow_control_loop_pipe_sequential_init_U", "Parent" : "200"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1085", "Parent" : "0", "Child" : ["204", "206", "209"],
		"CDFG" : "fpadd503_2_1",
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
					{"ID" : "204", "SubInstance" : "grp_fpadd503_2_1_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "206", "SubInstance" : "grp_fpadd503_2_1_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "209", "SubInstance" : "grp_fpadd503_2_1_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_fpadd503_2_1_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_fpadd503_2_1_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "209", "SubInstance" : "grp_fpadd503_2_1_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1085.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_33_1_fu_26", "Parent" : "203", "Child" : ["205"],
		"CDFG" : "fpadd503_2_1_Pipeline_VITIS_LOOP_33_1",
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
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1085.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_33_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1085.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_39_2_fu_34", "Parent" : "203", "Child" : ["207", "208"],
		"CDFG" : "fpadd503_2_1_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "carry_195_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1085.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_39_2_fu_34.p503x2_1_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1085.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_39_2_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "206"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1085.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_46_3_fu_43", "Parent" : "203", "Child" : ["210", "211"],
		"CDFG" : "fpadd503_2_1_Pipeline_VITIS_LOOP_46_3",
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
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1085.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_46_3_fu_43.p503x2_1_U", "Parent" : "209"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1085.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_46_3_fu_43.flow_control_loop_pipe_sequential_init_U", "Parent" : "209"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1093", "Parent" : "0", "Child" : ["213", "215", "218"],
		"CDFG" : "fpadd503_2_1",
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
					{"ID" : "213", "SubInstance" : "grp_fpadd503_2_1_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "215", "SubInstance" : "grp_fpadd503_2_1_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "218", "SubInstance" : "grp_fpadd503_2_1_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "213", "SubInstance" : "grp_fpadd503_2_1_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "215", "SubInstance" : "grp_fpadd503_2_1_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "218", "SubInstance" : "grp_fpadd503_2_1_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1093.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_33_1_fu_26", "Parent" : "212", "Child" : ["214"],
		"CDFG" : "fpadd503_2_1_Pipeline_VITIS_LOOP_33_1",
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
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1093.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_33_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1093.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_39_2_fu_34", "Parent" : "212", "Child" : ["216", "217"],
		"CDFG" : "fpadd503_2_1_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "carry_195_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1093.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_39_2_fu_34.p503x2_1_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1093.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_39_2_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "215"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1093.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_46_3_fu_43", "Parent" : "212", "Child" : ["219", "220"],
		"CDFG" : "fpadd503_2_1_Pipeline_VITIS_LOOP_46_3",
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
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1093.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_46_3_fu_43.p503x2_1_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_1_fu_1093.grp_fpadd503_2_1_Pipeline_VITIS_LOOP_46_3_fu_43.flow_control_loop_pipe_sequential_init_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101", "Parent" : "0", "Child" : ["222", "223", "224", "225", "226", "227", "228", "229", "251", "273", "275", "277", "279", "282", "284", "298", "300"],
		"CDFG" : "fp2mul503_mont_231_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "229", "SubInstance" : "grp_mp_mul_7163_fu_74", "Port" : "a", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "273", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1_fu_98", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "284", "SubInstance" : "grp_rdc_mont_138_fu_142", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_mp_mul_7163_fu_86", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "273", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1_fu_98", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "300", "SubInstance" : "grp_rdc_mont_6_fu_159", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_mp_mul_7163_fu_74", "Port" : "b", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "275", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172_fu_107", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "251", "SubInstance" : "grp_mp_mul_7163_fu_86", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "275", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172_fu_107", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "279", "SubInstance" : "grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1_fu_126", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "284", "SubInstance" : "grp_rdc_mont_138_fu_142", "Port" : "p503p1_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "300", "SubInstance" : "grp_rdc_mont_6_fu_159", "Port" : "p503p1_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.t1_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.t2_U", "Parent" : "221"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.tt1_U", "Parent" : "221"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.tt1_1_U", "Parent" : "221"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.tt2_U", "Parent" : "221"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.tt2_1_U", "Parent" : "221"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.tt3_U", "Parent" : "221"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74", "Parent" : "221", "Child" : ["230"],
		"CDFG" : "mp_mul_7163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "230", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "230", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "230", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "230", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18", "Parent" : "229", "Child" : ["231", "232", "233", "235", "238", "241", "243", "246"],
		"CDFG" : "mul_6170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "235", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "238", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "246", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "246", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.acc_U", "Parent" : "230"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.acc_1_U", "Parent" : "230"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "230", "Child" : ["234"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "230", "Child" : ["236", "237"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "235"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "235"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "230", "Child" : ["239", "240"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1113",
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
			{"Name" : "B_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "238"},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "238"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "230", "Child" : ["242"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "242", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "241"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "230", "Child" : ["244", "245"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "243"},
	{"ID" : "245", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "243"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "230", "Child" : ["247", "249"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "249", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "249", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "247", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "246", "Child" : ["248"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "248", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "246", "Child" : ["250"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "250", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_74.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86", "Parent" : "221", "Child" : ["252"],
		"CDFG" : "mp_mul_7163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "252", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "252", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "252", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "252", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18", "Parent" : "251", "Child" : ["253", "254", "255", "257", "260", "263", "265", "268"],
		"CDFG" : "mul_6170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "257", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "260", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "255", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "268", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "255", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "268", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.acc_U", "Parent" : "252"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.acc_1_U", "Parent" : "252"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "252", "Child" : ["256"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "255"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "252", "Child" : ["258", "259"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "257"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "257"},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "252", "Child" : ["261", "262"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1113",
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
			{"Name" : "B_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "260"},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "252", "Child" : ["264"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "252", "Child" : ["266", "267"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "265"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "265"},
	{"ID" : "268", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "252", "Child" : ["269", "271"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "271", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "269", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "271", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "268", "Child" : ["270"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "270", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "269"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "268", "Child" : ["272"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "272", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_mp_mul_7163_fu_86.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1_fu_98", "Parent" : "221", "Child" : ["274"],
		"CDFG" : "fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "273"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172_fu_107", "Parent" : "221", "Child" : ["276"],
		"CDFG" : "fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1_fu_116", "Parent" : "221", "Child" : ["278"],
		"CDFG" : "fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1_fu_126", "Parent" : "221", "Child" : ["280", "281"],
		"CDFG" : "fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1",
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
			{"Name" : "sext_ln190", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_198_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1_fu_126.p503_1_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "279"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1173_fu_134", "Parent" : "221", "Child" : ["283"],
		"CDFG" : "fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1173",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1173_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142", "Parent" : "221", "Child" : ["285", "287", "290", "293"],
		"CDFG" : "rdc_mont_138",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
					{"ID" : "285", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "287", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "290", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "287", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "290", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186", "Parent" : "284", "Child" : ["286"],
		"CDFG" : "rdc_mont_138_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Parent" : "284", "Child" : ["288", "289"],
		"CDFG" : "rdc_mont_138_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_026", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192.p503p1_1_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192.flow_control_loop_pipe_sequential_init_U", "Parent" : "287"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Parent" : "284", "Child" : ["291", "292"],
		"CDFG" : "rdc_mont_138_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208.p503p1_1_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208.flow_control_loop_pipe_sequential_init_U", "Parent" : "290"},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820", "Parent" : "284", "Child" : ["294", "295", "296", "297"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U338", "Parent" : "293"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U339", "Parent" : "293"},
	{"ID" : "296", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U340", "Parent" : "293"},
	{"ID" : "297", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_138_fu_142.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U341", "Parent" : "293"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1174_fu_151", "Parent" : "221", "Child" : ["299"],
		"CDFG" : "fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1174",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1174_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "298"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159", "Parent" : "221", "Child" : ["301", "303", "306", "309"],
		"CDFG" : "rdc_mont_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "301", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "303", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "306", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "303", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "306", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213", "Parent" : "300", "Child" : ["302"],
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
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213.flow_control_loop_pipe_sequential_init_U", "Parent" : "301"},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Parent" : "300", "Child" : ["304", "305"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219.p503p1_1_U", "Parent" : "303"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "303"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Parent" : "300", "Child" : ["307", "308"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235.p503p1_1_U", "Parent" : "306"},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235.flow_control_loop_pipe_sequential_init_U", "Parent" : "306"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907", "Parent" : "300", "Child" : ["310", "311", "312", "313"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "310", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U338", "Parent" : "309"},
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U339", "Parent" : "309"},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U340", "Parent" : "309"},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_231_3_fu_1101.grp_rdc_mont_6_fu_159.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U341", "Parent" : "309"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113", "Parent" : "0", "Child" : ["315", "316", "317", "318", "319", "320", "321", "322", "344", "366", "368", "370", "372", "375", "377", "391", "413", "415"],
		"CDFG" : "fp2mul503_mont_230",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "322", "SubInstance" : "grp_mp_mul_fu_76", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "366", "SubInstance" : "grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1_fu_100", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "377", "SubInstance" : "grp_rdc_mont_138_fu_144", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "344", "SubInstance" : "grp_mp_mul_fu_88", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "366", "SubInstance" : "grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1_fu_100", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "415", "SubInstance" : "grp_rdc_mont_6_fu_169", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "322", "SubInstance" : "grp_mp_mul_fu_76", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "368", "SubInstance" : "grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1184_fu_109", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "344", "SubInstance" : "grp_mp_mul_fu_88", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "368", "SubInstance" : "grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1184_fu_109", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "372", "SubInstance" : "grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_198_1_fu_128", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "377", "SubInstance" : "grp_rdc_mont_138_fu_144", "Port" : "p503p1_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "415", "SubInstance" : "grp_rdc_mont_6_fu_169", "Port" : "p503p1_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.t1_U", "Parent" : "314"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.t2_U", "Parent" : "314"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.tt1_U", "Parent" : "314"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.tt1_1_U", "Parent" : "314"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.tt2_U", "Parent" : "314"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.tt2_1_U", "Parent" : "314"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.tt3_U", "Parent" : "314"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76", "Parent" : "314", "Child" : ["323"],
		"CDFG" : "mp_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "323", "SubInstance" : "grp_mul_2_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "323", "SubInstance" : "grp_mul_2_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "323", "SubInstance" : "grp_mul_2_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "323", "SubInstance" : "grp_mul_2_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18", "Parent" : "322", "Child" : ["324", "325", "326", "328", "331", "334", "336", "339"],
		"CDFG" : "mul_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "328", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_27_1121_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "339", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "326", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "339", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.acc_U", "Parent" : "323"},
	{"ID" : "325", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.acc_1_U", "Parent" : "323"},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "323", "Child" : ["327"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "327", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "326"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "323", "Child" : ["329", "330"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "329", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U403", "Parent" : "328"},
	{"ID" : "330", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "328"},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_27_1121_fu_63", "Parent" : "323", "Child" : ["332", "333"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_27_1121",
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
			{"Name" : "B_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "332", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_27_1121_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U406", "Parent" : "331"},
	{"ID" : "333", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_27_1121_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "331"},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "323", "Child" : ["335"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "335", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "334"},
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "323", "Child" : ["337", "338"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U411", "Parent" : "336"},
	{"ID" : "338", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "336"},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "323", "Child" : ["340", "342"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "342", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "340", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "342", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "340", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "339", "Child" : ["341"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "341", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "340"},
	{"ID" : "342", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "339", "Child" : ["343"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "343", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_76.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "342"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88", "Parent" : "314", "Child" : ["345"],
		"CDFG" : "mp_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "345", "SubInstance" : "grp_mul_2_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_mul_2_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_mul_2_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_mul_2_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18", "Parent" : "344", "Child" : ["346", "347", "348", "350", "353", "356", "358", "361"],
		"CDFG" : "mul_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "350", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "353", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_27_1121_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "361", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "348", "SubInstance" : "grp_mul_2_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "361", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "346", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.acc_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.acc_1_U", "Parent" : "345"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "345", "Child" : ["349"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "349", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "348"},
	{"ID" : "350", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "345", "Child" : ["351", "352"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "351", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U403", "Parent" : "350"},
	{"ID" : "352", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "350"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_27_1121_fu_63", "Parent" : "345", "Child" : ["354", "355"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_27_1121",
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
			{"Name" : "B_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "354", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_27_1121_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U406", "Parent" : "353"},
	{"ID" : "355", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_27_1121_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "353"},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "345", "Child" : ["357"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "357", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "356"},
	{"ID" : "358", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "345", "Child" : ["359", "360"],
		"CDFG" : "mul_2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U411", "Parent" : "358"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_mul_2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "358"},
	{"ID" : "361", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "345", "Child" : ["362", "364"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "364", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "362", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "364", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "362", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "361", "Child" : ["363"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "363", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "362"},
	{"ID" : "364", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "361", "Child" : ["365"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "365", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_fu_88.grp_mul_2_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "364"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1_fu_100", "Parent" : "314", "Child" : ["367"],
		"CDFG" : "fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "366"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1184_fu_109", "Parent" : "314", "Child" : ["369"],
		"CDFG" : "fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1184",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1184_fu_109.flow_control_loop_pipe_sequential_init_U", "Parent" : "368"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_171_1_fu_118", "Parent" : "314", "Child" : ["371"],
		"CDFG" : "fp2mul503_mont_230_Pipeline_VITIS_LOOP_171_1",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_171_1_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_198_1_fu_128", "Parent" : "314", "Child" : ["373", "374"],
		"CDFG" : "fp2mul503_mont_230_Pipeline_VITIS_LOOP_198_1",
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
			{"Name" : "sext_ln190", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_198_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_198_1_fu_128.p503_1_U", "Parent" : "372"},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_198_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "372"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1185_fu_136", "Parent" : "314", "Child" : ["376"],
		"CDFG" : "fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1185",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1185_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "375"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144", "Parent" : "314", "Child" : ["378", "380", "383", "386"],
		"CDFG" : "rdc_mont_138",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
					{"ID" : "378", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "380", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "383", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "380", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "383", "SubInstance" : "grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186", "Parent" : "377", "Child" : ["379"],
		"CDFG" : "rdc_mont_138_Pipeline_VITIS_LOOP_306_1",
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
	{"ID" : "379", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_306_1_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "378"},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192", "Parent" : "377", "Child" : ["381", "382"],
		"CDFG" : "rdc_mont_138_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_026", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "381", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192.p503p1_1_U", "Parent" : "380"},
	{"ID" : "382", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_314_3_fu_192.flow_control_loop_pipe_sequential_init_U", "Parent" : "380"},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208", "Parent" : "377", "Child" : ["384", "385"],
		"CDFG" : "rdc_mont_138_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "384", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208.p503p1_1_U", "Parent" : "383"},
	{"ID" : "385", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_rdc_mont_138_Pipeline_VITIS_LOOP_340_5_fu_208.flow_control_loop_pipe_sequential_init_U", "Parent" : "383"},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820", "Parent" : "377", "Child" : ["387", "388", "389", "390"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "387", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U338", "Parent" : "386"},
	{"ID" : "388", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U339", "Parent" : "386"},
	{"ID" : "389", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U340", "Parent" : "386"},
	{"ID" : "390", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_138_fu_144.grp_digit_x_digit_fu_820.mul_32ns_32ns_64_1_1_U341", "Parent" : "386"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153", "Parent" : "314", "Child" : ["392"],
		"CDFG" : "mp_mul_7163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "392", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "392", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18", "Parent" : "391", "Child" : ["393", "394", "395", "397", "400", "403", "405", "408"],
		"CDFG" : "mul_6170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "397", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "400", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "395", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "408", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "395", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "408", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "393", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.acc_U", "Parent" : "392"},
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.acc_1_U", "Parent" : "392"},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "392", "Child" : ["396"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "396", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "395"},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "392", "Child" : ["398", "399"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "398", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "397"},
	{"ID" : "399", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "397"},
	{"ID" : "400", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "392", "Child" : ["401", "402"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1113",
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
			{"Name" : "B_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "401", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "400"},
	{"ID" : "402", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "400"},
	{"ID" : "403", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "392", "Child" : ["404"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "404", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "403"},
	{"ID" : "405", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "392", "Child" : ["406", "407"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "406", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "405"},
	{"ID" : "407", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "405"},
	{"ID" : "408", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "392", "Child" : ["409", "411"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "411", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "409", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "411", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "409", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "408", "Child" : ["410"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "410", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "409"},
	{"ID" : "411", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "408", "Child" : ["412"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "412", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_171_1186_fu_161", "Parent" : "314", "Child" : ["414"],
		"CDFG" : "fp2mul503_mont_230_Pipeline_VITIS_LOOP_171_1186",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_fp2mul503_mont_230_Pipeline_VITIS_LOOP_171_1186_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "413"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169", "Parent" : "314", "Child" : ["416", "418", "421", "424"],
		"CDFG" : "rdc_mont_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "416", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "418", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "421", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "418", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "421", "SubInstance" : "grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213", "Parent" : "415", "Child" : ["417"],
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
	{"ID" : "417", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_306_1_fu_213.flow_control_loop_pipe_sequential_init_U", "Parent" : "416"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219", "Parent" : "415", "Child" : ["419", "420"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "419", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219.p503p1_1_U", "Parent" : "418"},
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_314_3_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "418"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235", "Parent" : "415", "Child" : ["422", "423"],
		"CDFG" : "rdc_mont_6_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "422", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235.p503p1_1_U", "Parent" : "421"},
	{"ID" : "423", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_rdc_mont_6_Pipeline_VITIS_LOOP_340_5_fu_235.flow_control_loop_pipe_sequential_init_U", "Parent" : "421"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907", "Parent" : "415", "Child" : ["425", "426", "427", "428"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "425", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U338", "Parent" : "424"},
	{"ID" : "426", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U339", "Parent" : "424"},
	{"ID" : "427", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U340", "Parent" : "424"},
	{"ID" : "428", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_230_fu_1113.grp_rdc_mont_6_fu_169.grp_digit_x_digit_fu_907.mul_32ns_32ns_64_1_1_U341", "Parent" : "424"},
	{"ID" : "429", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_3_fu_1125", "Parent" : "0", "Child" : ["430", "432"],
		"CDFG" : "fpsub503_3",
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
					{"ID" : "430", "SubInstance" : "grp_fpsub503_3_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "430", "SubInstance" : "grp_fpsub503_3_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "430", "SubInstance" : "grp_fpsub503_3_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "432", "SubInstance" : "grp_fpsub503_3_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_fpsub503_3_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_3_fu_1125.grp_fpsub503_3_Pipeline_VITIS_LOOP_61_1_fu_28", "Parent" : "429", "Child" : ["431"],
		"CDFG" : "fpsub503_3_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_3_fu_1125.grp_fpsub503_3_Pipeline_VITIS_LOOP_61_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "430"},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_3_fu_1125.grp_fpsub503_3_Pipeline_VITIS_LOOP_68_2_fu_39", "Parent" : "429", "Child" : ["433", "434"],
		"CDFG" : "fpsub503_3_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_3_fu_1125.grp_fpsub503_3_Pipeline_VITIS_LOOP_68_2_fu_39.p503x2_1_U", "Parent" : "432"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_3_fu_1125.grp_fpsub503_3_Pipeline_VITIS_LOOP_68_2_fu_39.flow_control_loop_pipe_sequential_init_U", "Parent" : "432"},
	{"ID" : "435", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_3_fu_1134", "Parent" : "0", "Child" : ["436", "438"],
		"CDFG" : "fpsub503_3",
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
					{"ID" : "436", "SubInstance" : "grp_fpsub503_3_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "436", "SubInstance" : "grp_fpsub503_3_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "436", "SubInstance" : "grp_fpsub503_3_Pipeline_VITIS_LOOP_61_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "438", "SubInstance" : "grp_fpsub503_3_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "438", "SubInstance" : "grp_fpsub503_3_Pipeline_VITIS_LOOP_68_2_fu_39", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_3_fu_1134.grp_fpsub503_3_Pipeline_VITIS_LOOP_61_1_fu_28", "Parent" : "435", "Child" : ["437"],
		"CDFG" : "fpsub503_3_Pipeline_VITIS_LOOP_61_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_3_fu_1134.grp_fpsub503_3_Pipeline_VITIS_LOOP_61_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "436"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_3_fu_1134.grp_fpsub503_3_Pipeline_VITIS_LOOP_68_2_fu_39", "Parent" : "435", "Child" : ["439", "440"],
		"CDFG" : "fpsub503_3_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_3_fu_1134.grp_fpsub503_3_Pipeline_VITIS_LOOP_68_2_fu_39.p503x2_1_U", "Parent" : "438"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_3_fu_1134.grp_fpsub503_3_Pipeline_VITIS_LOOP_68_2_fu_39.flow_control_loop_pipe_sequential_init_U", "Parent" : "438"},
	{"ID" : "441", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143", "Parent" : "0", "Child" : ["442", "443", "444", "445", "446", "447", "448", "449", "471", "493", "495", "497", "499", "502", "504", "518", "540", "542"],
		"CDFG" : "fp2mul503_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "449", "SubInstance" : "grp_mp_mul_2_fu_76", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "493", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_389_1_fu_100", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "504", "SubInstance" : "grp_rdc_mont_fu_144", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "471", "SubInstance" : "grp_mp_mul_2_fu_88", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "493", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_389_1_fu_100", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "542", "SubInstance" : "grp_rdc_mont_1_fu_169", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_mp_mul_2_fu_76", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "495", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_389_1208_fu_109", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "471", "SubInstance" : "grp_mp_mul_2_fu_88", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "495", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_389_1208_fu_109", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "499", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_198_1_fu_128", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "grp_rdc_mont_fu_144", "Port" : "p503p1_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "542", "SubInstance" : "grp_rdc_mont_1_fu_169", "Port" : "p503p1_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.t1_U", "Parent" : "441"},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.t2_U", "Parent" : "441"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.tt1_U", "Parent" : "441"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.tt1_1_U", "Parent" : "441"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.tt2_U", "Parent" : "441"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.tt2_1_U", "Parent" : "441"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.tt3_U", "Parent" : "441"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76", "Parent" : "441", "Child" : ["450"],
		"CDFG" : "mp_mul_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "450", "SubInstance" : "grp_mul_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "450", "SubInstance" : "grp_mul_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "450", "SubInstance" : "grp_mul_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "450", "SubInstance" : "grp_mul_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "450", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18", "Parent" : "449", "Child" : ["451", "452", "453", "455", "458", "461", "463", "466"],
		"CDFG" : "mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "455", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "458", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_27_1123_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "453", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "466", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "453", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "466", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "451", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.acc_U", "Parent" : "450"},
	{"ID" : "452", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.acc_1_U", "Parent" : "450"},
	{"ID" : "453", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "450", "Child" : ["454"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "454", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "453"},
	{"ID" : "455", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "450", "Child" : ["456", "457"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "456", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U453", "Parent" : "455"},
	{"ID" : "457", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "455"},
	{"ID" : "458", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_27_1123_fu_63", "Parent" : "450", "Child" : ["459", "460"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_27_1123",
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
			{"Name" : "B_19_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "459", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_27_1123_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U456", "Parent" : "458"},
	{"ID" : "460", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_27_1123_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "458"},
	{"ID" : "461", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "450", "Child" : ["462"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "462", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "461"},
	{"ID" : "463", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "450", "Child" : ["464", "465"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "464", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U461", "Parent" : "463"},
	{"ID" : "465", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "463"},
	{"ID" : "466", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "450", "Child" : ["467", "469"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "467", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "469", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "467", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "469", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "467", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "466", "Child" : ["468"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "468", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "467"},
	{"ID" : "469", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "466", "Child" : ["470"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "470", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_76.grp_mul_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88", "Parent" : "441", "Child" : ["472"],
		"CDFG" : "mp_mul_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "472", "SubInstance" : "grp_mul_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "472", "SubInstance" : "grp_mul_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "472", "SubInstance" : "grp_mul_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "472", "SubInstance" : "grp_mul_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18", "Parent" : "471", "Child" : ["473", "474", "475", "477", "480", "483", "485", "488"],
		"CDFG" : "mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "477", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "480", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_27_1123_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "475", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "488", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "475", "SubInstance" : "grp_mul_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "488", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "473", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.acc_U", "Parent" : "472"},
	{"ID" : "474", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.acc_1_U", "Parent" : "472"},
	{"ID" : "475", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "472", "Child" : ["476"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "476", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "475"},
	{"ID" : "477", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "472", "Child" : ["478", "479"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "478", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U453", "Parent" : "477"},
	{"ID" : "479", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "477"},
	{"ID" : "480", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_27_1123_fu_63", "Parent" : "472", "Child" : ["481", "482"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_27_1123",
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
			{"Name" : "B_19_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "481", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_27_1123_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U456", "Parent" : "480"},
	{"ID" : "482", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_27_1123_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "480"},
	{"ID" : "483", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "472", "Child" : ["484"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "484", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "483"},
	{"ID" : "485", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "472", "Child" : ["486", "487"],
		"CDFG" : "mul_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "486", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U461", "Parent" : "485"},
	{"ID" : "487", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_mul_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "485"},
	{"ID" : "488", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "472", "Child" : ["489", "491"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "489", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "491", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "489", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "491", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "489", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "488", "Child" : ["490"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "490", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "489"},
	{"ID" : "491", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "488", "Child" : ["492"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "492", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_2_fu_88.grp_mul_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "491"},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_389_1_fu_100", "Parent" : "441", "Child" : ["494"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_389_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "493"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_389_1208_fu_109", "Parent" : "441", "Child" : ["496"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_389_1208",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_389_1208_fu_109.flow_control_loop_pipe_sequential_init_U", "Parent" : "495"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_171_1_fu_118", "Parent" : "441", "Child" : ["498"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_171_1",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_171_1_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "497"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_198_1_fu_128", "Parent" : "441", "Child" : ["500", "501"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_198_1",
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
			{"Name" : "sext_ln190", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_198_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_198_1_fu_128.p503_1_U", "Parent" : "499"},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_198_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "499"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_389_1209_fu_136", "Parent" : "441", "Child" : ["503"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_389_1209",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_389_1209_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "502"},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144", "Parent" : "441", "Child" : ["505", "507", "510", "513"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
					{"ID" : "505", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_185", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "507", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "510", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "507", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "510", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_185", "Parent" : "504", "Child" : ["506"],
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
	{"ID" : "506", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_185.flow_control_loop_pipe_sequential_init_U", "Parent" : "505"},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191", "Parent" : "504", "Child" : ["508", "509"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_026", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "508", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191.p503p1_1_U", "Parent" : "507"},
	{"ID" : "509", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191.flow_control_loop_pipe_sequential_init_U", "Parent" : "507"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207", "Parent" : "504", "Child" : ["511", "512"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "511", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207.p503p1_1_U", "Parent" : "510"},
	{"ID" : "512", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207.flow_control_loop_pipe_sequential_init_U", "Parent" : "510"},
	{"ID" : "513", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_824", "Parent" : "504", "Child" : ["514", "515", "516", "517"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "514", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U338", "Parent" : "513"},
	{"ID" : "515", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U339", "Parent" : "513"},
	{"ID" : "516", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U340", "Parent" : "513"},
	{"ID" : "517", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U341", "Parent" : "513"},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153", "Parent" : "441", "Child" : ["519"],
		"CDFG" : "mp_mul_7163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "519", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "519", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "519", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "519", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18", "Parent" : "518", "Child" : ["520", "521", "522", "524", "527", "530", "532", "535"],
		"CDFG" : "mul_6170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "524", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "527", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "522", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "535", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "522", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "535", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "520", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.acc_U", "Parent" : "519"},
	{"ID" : "521", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.acc_1_U", "Parent" : "519"},
	{"ID" : "522", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "519", "Child" : ["523"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "523", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "522"},
	{"ID" : "524", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "519", "Child" : ["525", "526"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "525", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "524"},
	{"ID" : "526", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "524"},
	{"ID" : "527", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "519", "Child" : ["528", "529"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1113",
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
			{"Name" : "B_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "528", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "527"},
	{"ID" : "529", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "527"},
	{"ID" : "530", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "519", "Child" : ["531"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "531", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "530"},
	{"ID" : "532", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "519", "Child" : ["533", "534"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "533", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "532"},
	{"ID" : "534", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "532"},
	{"ID" : "535", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "519", "Child" : ["536", "538"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "536", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "538", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "536", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "538", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "536", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "535", "Child" : ["537"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "537", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "536"},
	{"ID" : "538", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "535", "Child" : ["539"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "539", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "538"},
	{"ID" : "540", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_171_1210_fu_161", "Parent" : "441", "Child" : ["541"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_171_1210",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "541", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_171_1210_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "540"},
	{"ID" : "542", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169", "Parent" : "441", "Child" : ["543", "545", "548", "551"],
		"CDFG" : "rdc_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "543", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_212", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "545", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "548", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "545", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "548", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "543", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_212", "Parent" : "542", "Child" : ["544"],
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
	{"ID" : "544", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_212.flow_control_loop_pipe_sequential_init_U", "Parent" : "543"},
	{"ID" : "545", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218", "Parent" : "542", "Child" : ["546", "547"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "546", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218.p503p1_1_U", "Parent" : "545"},
	{"ID" : "547", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218.flow_control_loop_pipe_sequential_init_U", "Parent" : "545"},
	{"ID" : "548", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234", "Parent" : "542", "Child" : ["549", "550"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "549", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234.p503p1_1_U", "Parent" : "548"},
	{"ID" : "550", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "548"},
	{"ID" : "551", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_digit_x_digit_fu_911", "Parent" : "542", "Child" : ["552", "553", "554", "555"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "552", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U338", "Parent" : "551"},
	{"ID" : "553", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U339", "Parent" : "551"},
	{"ID" : "554", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U340", "Parent" : "551"},
	{"ID" : "555", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1143.grp_rdc_mont_1_fu_169.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U341", "Parent" : "551"},
	{"ID" : "556", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155", "Parent" : "0", "Child" : ["557", "558", "559", "560", "561", "562", "563", "564", "586", "608", "610", "612", "614", "617", "619", "633", "655", "657"],
		"CDFG" : "fp2mul503_mont_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "564", "SubInstance" : "grp_mp_mul_7_fu_84", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "608", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1_fu_112", "Port" : "a_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "grp_mp_mul_7_fu_98", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "608", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1_fu_112", "Port" : "a_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "564", "SubInstance" : "grp_mp_mul_7_fu_84", "Port" : "b_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "610", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1136_fu_121", "Port" : "b_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "564", "SubInstance" : "grp_mp_mul_7_fu_84", "Port" : "b_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "610", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1136_fu_121", "Port" : "b_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "grp_mp_mul_7_fu_98", "Port" : "b_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "610", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1136_fu_121", "Port" : "b_1_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "586", "SubInstance" : "grp_mp_mul_7_fu_98", "Port" : "b_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "610", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1136_fu_121", "Port" : "b_1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "grp_rdc_mont_fu_160", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "657", "SubInstance" : "grp_rdc_mont_1_fu_185", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "614", "SubInstance" : "grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_198_1_fu_144", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "619", "SubInstance" : "grp_rdc_mont_fu_160", "Port" : "p503p1_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "657", "SubInstance" : "grp_rdc_mont_1_fu_185", "Port" : "p503p1_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "557", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.t1_U", "Parent" : "556"},
	{"ID" : "558", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.t2_U", "Parent" : "556"},
	{"ID" : "559", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.tt1_U", "Parent" : "556"},
	{"ID" : "560", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.tt1_1_U", "Parent" : "556"},
	{"ID" : "561", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.tt2_U", "Parent" : "556"},
	{"ID" : "562", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.tt2_1_U", "Parent" : "556"},
	{"ID" : "563", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.tt3_U", "Parent" : "556"},
	{"ID" : "564", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84", "Parent" : "556", "Child" : ["565"],
		"CDFG" : "mp_mul_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "565", "SubInstance" : "grp_mul_6_fu_22", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "565", "SubInstance" : "grp_mul_6_fu_22", "Port" : "b_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "565", "SubInstance" : "grp_mul_6_fu_22", "Port" : "b_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "565", "SubInstance" : "grp_mul_6_fu_22", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "565", "SubInstance" : "grp_mul_6_fu_22", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "565", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22", "Parent" : "564", "Child" : ["566", "567", "568", "570", "573", "576", "578", "581"],
		"CDFG" : "mul_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "570", "SubInstance" : "grp_mul_6_Pipeline_VITIS_LOOP_27_1_fu_60", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "573", "SubInstance" : "grp_mul_6_Pipeline_VITIS_LOOP_27_1117_fu_67", "Port" : "b_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "573", "SubInstance" : "grp_mul_6_Pipeline_VITIS_LOOP_27_1117_fu_67", "Port" : "b_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "568", "SubInstance" : "grp_mul_6_Pipeline_VITIS_LOOP_54_1_fu_52", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "581", "SubInstance" : "grp_convert_blocks_to_digits_fu_92", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "568", "SubInstance" : "grp_mul_6_Pipeline_VITIS_LOOP_54_1_fu_52", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "581", "SubInstance" : "grp_convert_blocks_to_digits_fu_92", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "566", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.acc_U", "Parent" : "565"},
	{"ID" : "567", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.acc_1_U", "Parent" : "565"},
	{"ID" : "568", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_54_1_fu_52", "Parent" : "565", "Child" : ["569"],
		"CDFG" : "mul_6_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "569", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_54_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "568"},
	{"ID" : "570", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_27_1_fu_60", "Parent" : "565", "Child" : ["571", "572"],
		"CDFG" : "mul_6_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "571", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_27_1_fu_60.partset_512ns_512ns_64ns_32ns_512_1_1_U546", "Parent" : "570"},
	{"ID" : "572", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_27_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "570"},
	{"ID" : "573", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_27_1117_fu_67", "Parent" : "565", "Child" : ["574", "575"],
		"CDFG" : "mul_6_Pipeline_VITIS_LOOP_27_1117",
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
			{"Name" : "B_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "574", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_27_1117_fu_67.partset_512ns_512ns_64ns_32ns_512_1_1_U549", "Parent" : "573"},
	{"ID" : "575", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_27_1117_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "573"},
	{"ID" : "576", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_77_2_fu_76", "Parent" : "565", "Child" : ["577"],
		"CDFG" : "mul_6_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "577", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_77_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "576"},
	{"ID" : "578", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_84", "Parent" : "565", "Child" : ["579", "580"],
		"CDFG" : "mul_6_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "579", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_84.mul_64ns_64ns_128_1_1_U555", "Parent" : "578"},
	{"ID" : "580", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "578"},
	{"ID" : "581", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_convert_blocks_to_digits_fu_92", "Parent" : "565", "Child" : ["582", "584"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "582", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "584", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "582", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "584", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "582", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "581", "Child" : ["583"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "583", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "582"},
	{"ID" : "584", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "581", "Child" : ["585"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "585", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_84.grp_mul_6_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "584"},
	{"ID" : "586", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98", "Parent" : "556", "Child" : ["587"],
		"CDFG" : "mp_mul_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "587", "SubInstance" : "grp_mul_6_fu_22", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "587", "SubInstance" : "grp_mul_6_fu_22", "Port" : "b_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "587", "SubInstance" : "grp_mul_6_fu_22", "Port" : "b_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "587", "SubInstance" : "grp_mul_6_fu_22", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "587", "SubInstance" : "grp_mul_6_fu_22", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "587", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22", "Parent" : "586", "Child" : ["588", "589", "590", "592", "595", "598", "600", "603"],
		"CDFG" : "mul_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "592", "SubInstance" : "grp_mul_6_Pipeline_VITIS_LOOP_27_1_fu_60", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "595", "SubInstance" : "grp_mul_6_Pipeline_VITIS_LOOP_27_1117_fu_67", "Port" : "b_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "595", "SubInstance" : "grp_mul_6_Pipeline_VITIS_LOOP_27_1117_fu_67", "Port" : "b_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "590", "SubInstance" : "grp_mul_6_Pipeline_VITIS_LOOP_54_1_fu_52", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "603", "SubInstance" : "grp_convert_blocks_to_digits_fu_92", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "590", "SubInstance" : "grp_mul_6_Pipeline_VITIS_LOOP_54_1_fu_52", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "603", "SubInstance" : "grp_convert_blocks_to_digits_fu_92", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "588", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.acc_U", "Parent" : "587"},
	{"ID" : "589", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.acc_1_U", "Parent" : "587"},
	{"ID" : "590", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_54_1_fu_52", "Parent" : "587", "Child" : ["591"],
		"CDFG" : "mul_6_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "591", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_54_1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "590"},
	{"ID" : "592", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_27_1_fu_60", "Parent" : "587", "Child" : ["593", "594"],
		"CDFG" : "mul_6_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "593", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_27_1_fu_60.partset_512ns_512ns_64ns_32ns_512_1_1_U546", "Parent" : "592"},
	{"ID" : "594", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_27_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "592"},
	{"ID" : "595", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_27_1117_fu_67", "Parent" : "587", "Child" : ["596", "597"],
		"CDFG" : "mul_6_Pipeline_VITIS_LOOP_27_1117",
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
			{"Name" : "B_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "596", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_27_1117_fu_67.partset_512ns_512ns_64ns_32ns_512_1_1_U549", "Parent" : "595"},
	{"ID" : "597", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_27_1117_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "595"},
	{"ID" : "598", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_77_2_fu_76", "Parent" : "587", "Child" : ["599"],
		"CDFG" : "mul_6_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "599", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_77_2_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "598"},
	{"ID" : "600", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_84", "Parent" : "587", "Child" : ["601", "602"],
		"CDFG" : "mul_6_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "601", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_84.mul_64ns_64ns_128_1_1_U555", "Parent" : "600"},
	{"ID" : "602", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_mul_6_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "600"},
	{"ID" : "603", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_convert_blocks_to_digits_fu_92", "Parent" : "587", "Child" : ["604", "606"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "604", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "606", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "604", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "606", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "604", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "603", "Child" : ["605"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "605", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "604"},
	{"ID" : "606", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "603", "Child" : ["607"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "607", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7_fu_98.grp_mul_6_fu_22.grp_convert_blocks_to_digits_fu_92.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "606"},
	{"ID" : "608", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1_fu_112", "Parent" : "556", "Child" : ["609"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "609", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "608"},
	{"ID" : "610", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1136_fu_121", "Parent" : "556", "Child" : ["611"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1136",
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
			{"Name" : "b_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "611", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1136_fu_121.flow_control_loop_pipe_sequential_init_U", "Parent" : "610"},
	{"ID" : "612", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_171_1_fu_134", "Parent" : "556", "Child" : ["613"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_171_1",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "613", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_171_1_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "612"},
	{"ID" : "614", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_198_1_fu_144", "Parent" : "556", "Child" : ["615", "616"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_198_1",
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
			{"Name" : "sext_ln190", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_198_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "615", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_198_1_fu_144.p503_1_U", "Parent" : "614"},
	{"ID" : "616", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_198_1_fu_144.flow_control_loop_pipe_sequential_init_U", "Parent" : "614"},
	{"ID" : "617", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1137_fu_152", "Parent" : "556", "Child" : ["618"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1137",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "618", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1137_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "617"},
	{"ID" : "619", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160", "Parent" : "556", "Child" : ["620", "622", "625", "628"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
					{"ID" : "620", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_185", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "622", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "625", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "622", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "625", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "620", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_185", "Parent" : "619", "Child" : ["621"],
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
	{"ID" : "621", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_185.flow_control_loop_pipe_sequential_init_U", "Parent" : "620"},
	{"ID" : "622", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191", "Parent" : "619", "Child" : ["623", "624"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_026", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "623", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191.p503p1_1_U", "Parent" : "622"},
	{"ID" : "624", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191.flow_control_loop_pipe_sequential_init_U", "Parent" : "622"},
	{"ID" : "625", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207", "Parent" : "619", "Child" : ["626", "627"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "626", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207.p503p1_1_U", "Parent" : "625"},
	{"ID" : "627", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207.flow_control_loop_pipe_sequential_init_U", "Parent" : "625"},
	{"ID" : "628", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_digit_x_digit_fu_824", "Parent" : "619", "Child" : ["629", "630", "631", "632"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "629", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U338", "Parent" : "628"},
	{"ID" : "630", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U339", "Parent" : "628"},
	{"ID" : "631", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U340", "Parent" : "628"},
	{"ID" : "632", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_fu_160.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U341", "Parent" : "628"},
	{"ID" : "633", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169", "Parent" : "556", "Child" : ["634"],
		"CDFG" : "mp_mul_7163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "634", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "634", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "634", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "634", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "634", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18", "Parent" : "633", "Child" : ["635", "636", "637", "639", "642", "645", "647", "650"],
		"CDFG" : "mul_6170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "639", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "642", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "637", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "650", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "637", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "650", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "635", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.acc_U", "Parent" : "634"},
	{"ID" : "636", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.acc_1_U", "Parent" : "634"},
	{"ID" : "637", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "634", "Child" : ["638"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "638", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "637"},
	{"ID" : "639", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "634", "Child" : ["640", "641"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "640", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "639"},
	{"ID" : "641", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "639"},
	{"ID" : "642", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "634", "Child" : ["643", "644"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1113",
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
			{"Name" : "B_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "643", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "642"},
	{"ID" : "644", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "642"},
	{"ID" : "645", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "634", "Child" : ["646"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "646", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "645"},
	{"ID" : "647", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "634", "Child" : ["648", "649"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "648", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "647"},
	{"ID" : "649", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "647"},
	{"ID" : "650", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "634", "Child" : ["651", "653"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "651", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "653", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "651", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "653", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "651", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "650", "Child" : ["652"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "652", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "651"},
	{"ID" : "653", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "650", "Child" : ["654"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "654", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_mp_mul_7163_fu_169.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "653"},
	{"ID" : "655", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_171_1138_fu_177", "Parent" : "556", "Child" : ["656"],
		"CDFG" : "fp2mul503_mont_8_Pipeline_VITIS_LOOP_171_1138",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "656", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_fp2mul503_mont_8_Pipeline_VITIS_LOOP_171_1138_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "655"},
	{"ID" : "657", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185", "Parent" : "556", "Child" : ["658", "660", "663", "666"],
		"CDFG" : "rdc_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "658", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_212", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "660", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "663", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "660", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "663", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "658", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_212", "Parent" : "657", "Child" : ["659"],
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
	{"ID" : "659", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_212.flow_control_loop_pipe_sequential_init_U", "Parent" : "658"},
	{"ID" : "660", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218", "Parent" : "657", "Child" : ["661", "662"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "661", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218.p503p1_1_U", "Parent" : "660"},
	{"ID" : "662", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218.flow_control_loop_pipe_sequential_init_U", "Parent" : "660"},
	{"ID" : "663", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234", "Parent" : "657", "Child" : ["664", "665"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "664", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234.p503p1_1_U", "Parent" : "663"},
	{"ID" : "665", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "663"},
	{"ID" : "666", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_digit_x_digit_fu_911", "Parent" : "657", "Child" : ["667", "668", "669", "670"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "667", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U338", "Parent" : "666"},
	{"ID" : "668", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U339", "Parent" : "666"},
	{"ID" : "669", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U340", "Parent" : "666"},
	{"ID" : "670", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_8_fu_1155.grp_rdc_mont_1_fu_185.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U341", "Parent" : "666"},
	{"ID" : "671", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171", "Parent" : "0", "Child" : ["672", "673", "674", "675", "677", "679", "682", "684", "715"],
		"CDFG" : "fp2sqr503_mont_5",
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
					{"ID" : "675", "SubInstance" : "grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_389_1_fu_46", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "677", "SubInstance" : "grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "682", "SubInstance" : "grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_389_1132_fu_74", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "684", "SubInstance" : "grp_fpmul503_mont_fu_81", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "675", "SubInstance" : "grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_389_1_fu_46", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "677", "SubInstance" : "grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_61_1_fu_56", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "715", "SubInstance" : "grp_fpmul503_mont_1_fu_89", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "679", "SubInstance" : "grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_68_2_fu_66", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "672", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.t1_U", "Parent" : "671"},
	{"ID" : "673", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.t2_U", "Parent" : "671"},
	{"ID" : "674", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.t3_U", "Parent" : "671"},
	{"ID" : "675", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_389_1_fu_46", "Parent" : "671", "Child" : ["676"],
		"CDFG" : "fp2sqr503_mont_5_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "676", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_389_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "675"},
	{"ID" : "677", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_61_1_fu_56", "Parent" : "671", "Child" : ["678"],
		"CDFG" : "fp2sqr503_mont_5_Pipeline_VITIS_LOOP_61_1",
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
	{"ID" : "678", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_61_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "677"},
	{"ID" : "679", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_68_2_fu_66", "Parent" : "671", "Child" : ["680", "681"],
		"CDFG" : "fp2sqr503_mont_5_Pipeline_VITIS_LOOP_68_2",
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
	{"ID" : "680", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_68_2_fu_66.p503x2_1_U", "Parent" : "679"},
	{"ID" : "681", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_68_2_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "679"},
	{"ID" : "682", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_389_1132_fu_74", "Parent" : "671", "Child" : ["683"],
		"CDFG" : "fp2sqr503_mont_5_Pipeline_VITIS_LOOP_389_1132",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "683", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fp2sqr503_mont_5_Pipeline_VITIS_LOOP_389_1132_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "682"},
	{"ID" : "684", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81", "Parent" : "671", "Child" : ["685"],
		"CDFG" : "fpmul503_mont",
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
					{"ID" : "685", "SubInstance" : "grp_mul_1_3_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "grp_mul_1_3_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "grp_mul_1_3_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "685", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18", "Parent" : "684", "Child" : ["686"],
		"CDFG" : "mul_1_3",
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
					{"ID" : "686", "SubInstance" : "grp_mul_1_2_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "686", "SubInstance" : "grp_mul_1_2_fu_16", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "686", "SubInstance" : "grp_mul_1_2_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "686", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16", "Parent" : "685", "Child" : ["687", "688", "689", "690", "691", "692", "693", "694", "695", "696", "697", "698", "699", "700", "701", "702", "703", "704", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714"],
		"CDFG" : "mul_1_2",
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
	{"ID" : "687", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U224", "Parent" : "686"},
	{"ID" : "688", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U225", "Parent" : "686"},
	{"ID" : "689", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U226", "Parent" : "686"},
	{"ID" : "690", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U227", "Parent" : "686"},
	{"ID" : "691", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U228", "Parent" : "686"},
	{"ID" : "692", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U229", "Parent" : "686"},
	{"ID" : "693", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U230", "Parent" : "686"},
	{"ID" : "694", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U231", "Parent" : "686"},
	{"ID" : "695", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_128_1_1_U232", "Parent" : "686"},
	{"ID" : "696", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_56ns_119_1_1_U233", "Parent" : "686"},
	{"ID" : "697", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_56ns_119_1_1_U234", "Parent" : "686"},
	{"ID" : "698", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_62ns_125_1_1_U235", "Parent" : "686"},
	{"ID" : "699", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_62ns_125_1_1_U236", "Parent" : "686"},
	{"ID" : "700", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_62ns_125_1_1_U237", "Parent" : "686"},
	{"ID" : "701", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_62ns_125_1_1_U238", "Parent" : "686"},
	{"ID" : "702", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_127_1_1_U239", "Parent" : "686"},
	{"ID" : "703", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_64ns_127_1_1_U240", "Parent" : "686"},
	{"ID" : "704", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_65ns_128_1_1_U241", "Parent" : "686"},
	{"ID" : "705", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64ns_65ns_128_1_1_U242", "Parent" : "686"},
	{"ID" : "706", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U243", "Parent" : "686"},
	{"ID" : "707", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U244", "Parent" : "686"},
	{"ID" : "708", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U245", "Parent" : "686"},
	{"ID" : "709", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_62ns_64_1_1_U246", "Parent" : "686"},
	{"ID" : "710", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U247", "Parent" : "686"},
	{"ID" : "711", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_62ns_64_1_1_U248", "Parent" : "686"},
	{"ID" : "712", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64ns_64_1_1_U249", "Parent" : "686"},
	{"ID" : "713", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64s_64_1_1_U250", "Parent" : "686"},
	{"ID" : "714", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_fu_81.grp_mul_1_3_fu_18.grp_mul_1_2_fu_16.mul_64s_64s_64_1_1_U251", "Parent" : "686"},
	{"ID" : "715", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89", "Parent" : "671", "Child" : ["716"],
		"CDFG" : "fpmul503_mont_1",
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
					{"ID" : "716", "SubInstance" : "grp_mul_2_2_2_fu_16", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "716", "SubInstance" : "grp_mul_2_2_2_fu_16", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "716", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16", "Parent" : "715", "Child" : ["717"],
		"CDFG" : "mul_2_2_2",
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
					{"ID" : "717", "SubInstance" : "grp_mul_1_1_fu_14", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "717", "SubInstance" : "grp_mul_1_1_fu_14", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "717", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14", "Parent" : "716", "Child" : ["718", "719", "720", "721", "722", "723", "724", "725", "726", "727", "728", "729", "730", "731", "732", "733", "734", "735", "736", "737", "738", "739", "740", "741", "742", "743", "744", "745"],
		"CDFG" : "mul_1_1",
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
	{"ID" : "718", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_64ns_128_1_1_U691", "Parent" : "717"},
	{"ID" : "719", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_64ns_128_1_1_U692", "Parent" : "717"},
	{"ID" : "720", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_64ns_128_1_1_U693", "Parent" : "717"},
	{"ID" : "721", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_64ns_128_1_1_U694", "Parent" : "717"},
	{"ID" : "722", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_64ns_128_1_1_U695", "Parent" : "717"},
	{"ID" : "723", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_64ns_128_1_1_U696", "Parent" : "717"},
	{"ID" : "724", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_64ns_128_1_1_U697", "Parent" : "717"},
	{"ID" : "725", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_64ns_128_1_1_U698", "Parent" : "717"},
	{"ID" : "726", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_64ns_128_1_1_U699", "Parent" : "717"},
	{"ID" : "727", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_56ns_119_1_1_U700", "Parent" : "717"},
	{"ID" : "728", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_56ns_119_1_1_U701", "Parent" : "717"},
	{"ID" : "729", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_62ns_125_1_1_U702", "Parent" : "717"},
	{"ID" : "730", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_62ns_125_1_1_U703", "Parent" : "717"},
	{"ID" : "731", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_62ns_125_1_1_U704", "Parent" : "717"},
	{"ID" : "732", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_62ns_125_1_1_U705", "Parent" : "717"},
	{"ID" : "733", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_64ns_127_1_1_U706", "Parent" : "717"},
	{"ID" : "734", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_64ns_127_1_1_U707", "Parent" : "717"},
	{"ID" : "735", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_65ns_128_1_1_U708", "Parent" : "717"},
	{"ID" : "736", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64ns_65ns_128_1_1_U709", "Parent" : "717"},
	{"ID" : "737", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64s_64ns_64_1_1_U710", "Parent" : "717"},
	{"ID" : "738", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64s_64ns_64_1_1_U711", "Parent" : "717"},
	{"ID" : "739", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64s_64ns_64_1_1_U712", "Parent" : "717"},
	{"ID" : "740", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64s_62ns_64_1_1_U713", "Parent" : "717"},
	{"ID" : "741", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64s_64ns_64_1_1_U714", "Parent" : "717"},
	{"ID" : "742", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64s_62ns_64_1_1_U715", "Parent" : "717"},
	{"ID" : "743", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64s_64ns_64_1_1_U716", "Parent" : "717"},
	{"ID" : "744", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64s_64s_64_1_1_U717", "Parent" : "717"},
	{"ID" : "745", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_5_fu_1171.grp_fpmul503_mont_1_fu_89.grp_mul_2_2_2_fu_16.grp_mul_1_1_fu_14.mul_64s_64s_64_1_1_U718", "Parent" : "717"},
	{"ID" : "746", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_fu_1179", "Parent" : "0", "Child" : ["747", "749", "752"],
		"CDFG" : "fpadd503_2",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "747", "SubInstance" : "grp_fpadd503_2_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "747", "SubInstance" : "grp_fpadd503_2_Pipeline_VITIS_LOOP_33_1_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "749", "SubInstance" : "grp_fpadd503_2_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "752", "SubInstance" : "grp_fpadd503_2_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "749", "SubInstance" : "grp_fpadd503_2_Pipeline_VITIS_LOOP_39_2_fu_34", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "752", "SubInstance" : "grp_fpadd503_2_Pipeline_VITIS_LOOP_46_3_fu_43", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "747", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_fu_1179.grp_fpadd503_2_Pipeline_VITIS_LOOP_33_1_fu_26", "Parent" : "746", "Child" : ["748"],
		"CDFG" : "fpadd503_2_Pipeline_VITIS_LOOP_33_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "748", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_fu_1179.grp_fpadd503_2_Pipeline_VITIS_LOOP_33_1_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "747"},
	{"ID" : "749", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_fu_1179.grp_fpadd503_2_Pipeline_VITIS_LOOP_39_2_fu_34", "Parent" : "746", "Child" : ["750", "751"],
		"CDFG" : "fpadd503_2_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "carry_198_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "750", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_fu_1179.grp_fpadd503_2_Pipeline_VITIS_LOOP_39_2_fu_34.p503x2_1_U", "Parent" : "749"},
	{"ID" : "751", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_fu_1179.grp_fpadd503_2_Pipeline_VITIS_LOOP_39_2_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "749"},
	{"ID" : "752", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_fu_1179.grp_fpadd503_2_Pipeline_VITIS_LOOP_46_3_fu_43", "Parent" : "746", "Child" : ["753", "754"],
		"CDFG" : "fpadd503_2_Pipeline_VITIS_LOOP_46_3",
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
	{"ID" : "753", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_fu_1179.grp_fpadd503_2_Pipeline_VITIS_LOOP_46_3_fu_43.p503x2_1_U", "Parent" : "752"},
	{"ID" : "754", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_2_fu_1179.grp_fpadd503_2_Pipeline_VITIS_LOOP_46_3_fu_43.flow_control_loop_pipe_sequential_init_U", "Parent" : "752"},
	{"ID" : "755", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187", "Parent" : "0", "Child" : ["756", "757", "758", "759", "760", "761", "762", "763", "785", "807", "809", "811", "813", "816", "818", "832", "854", "856"],
		"CDFG" : "fp2mul503_mont_60",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "763", "SubInstance" : "grp_mp_mul_63_fu_76", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "807", "SubInstance" : "grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1_fu_98", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "818", "SubInstance" : "grp_rdc_mont_fu_140", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "785", "SubInstance" : "grp_mp_mul_64_fu_88", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "807", "SubInstance" : "grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1_fu_98", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "856", "SubInstance" : "grp_rdc_mont_1_fu_165", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "763", "SubInstance" : "grp_mp_mul_63_fu_76", "Port" : "R_Z", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "785", "SubInstance" : "grp_mp_mul_64_fu_88", "Port" : "R_Z", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "809", "SubInstance" : "grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1142_fu_107", "Port" : "R_X", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "813", "SubInstance" : "grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_198_1_fu_124", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "818", "SubInstance" : "grp_rdc_mont_fu_140", "Port" : "p503p1_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "856", "SubInstance" : "grp_rdc_mont_1_fu_165", "Port" : "p503p1_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "756", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.t1_U", "Parent" : "755"},
	{"ID" : "757", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.t2_U", "Parent" : "755"},
	{"ID" : "758", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.tt1_U", "Parent" : "755"},
	{"ID" : "759", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.tt1_1_U", "Parent" : "755"},
	{"ID" : "760", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.tt2_U", "Parent" : "755"},
	{"ID" : "761", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.tt2_1_U", "Parent" : "755"},
	{"ID" : "762", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.tt3_U", "Parent" : "755"},
	{"ID" : "763", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76", "Parent" : "755", "Child" : ["764"],
		"CDFG" : "mp_mul_63",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "764", "SubInstance" : "grp_mul_75_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "764", "SubInstance" : "grp_mul_75_fu_20", "Port" : "R_Z", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "764", "SubInstance" : "grp_mul_75_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "764", "SubInstance" : "grp_mul_75_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "764", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20", "Parent" : "763", "Child" : ["765", "766", "767", "769", "772", "775", "777", "780"],
		"CDFG" : "mul_75",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "769", "SubInstance" : "grp_mul_75_Pipeline_VITIS_LOOP_27_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "772", "SubInstance" : "grp_mul_75_Pipeline_VITIS_LOOP_27_1112_fu_65", "Port" : "R_Z", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "767", "SubInstance" : "grp_mul_75_Pipeline_VITIS_LOOP_54_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "780", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "767", "SubInstance" : "grp_mul_75_Pipeline_VITIS_LOOP_54_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "780", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "765", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.acc_U", "Parent" : "764"},
	{"ID" : "766", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.acc_1_U", "Parent" : "764"},
	{"ID" : "767", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_54_1_fu_50", "Parent" : "764", "Child" : ["768"],
		"CDFG" : "mul_75_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "768", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_54_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "767"},
	{"ID" : "769", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_27_1_fu_58", "Parent" : "764", "Child" : ["770", "771"],
		"CDFG" : "mul_75_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "770", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_27_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U729", "Parent" : "769"},
	{"ID" : "771", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_27_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "769"},
	{"ID" : "772", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_27_1112_fu_65", "Parent" : "764", "Child" : ["773", "774"],
		"CDFG" : "mul_75_Pipeline_VITIS_LOOP_27_1112",
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
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "773", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_27_1112_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U732", "Parent" : "772"},
	{"ID" : "774", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_27_1112_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "772"},
	{"ID" : "775", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_77_2_fu_72", "Parent" : "764", "Child" : ["776"],
		"CDFG" : "mul_75_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "776", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_77_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "775"},
	{"ID" : "777", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_80", "Parent" : "764", "Child" : ["778", "779"],
		"CDFG" : "mul_75_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "778", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_80.mul_64ns_64ns_128_1_1_U737", "Parent" : "777"},
	{"ID" : "779", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_mul_75_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "777"},
	{"ID" : "780", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "764", "Child" : ["781", "783"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "781", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "783", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "781", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "783", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "781", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "780", "Child" : ["782"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "782", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "781"},
	{"ID" : "783", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "780", "Child" : ["784"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "784", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_63_fu_76.grp_mul_75_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "783"},
	{"ID" : "785", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88", "Parent" : "755", "Child" : ["786"],
		"CDFG" : "mp_mul_64",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "786", "SubInstance" : "grp_mul_76_fu_20", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "786", "SubInstance" : "grp_mul_76_fu_20", "Port" : "R_Z", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "786", "SubInstance" : "grp_mul_76_fu_20", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "786", "SubInstance" : "grp_mul_76_fu_20", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "786", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20", "Parent" : "785", "Child" : ["787", "788", "789", "791", "794", "797", "799", "802"],
		"CDFG" : "mul_76",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "791", "SubInstance" : "grp_mul_76_Pipeline_VITIS_LOOP_27_1_fu_58", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "794", "SubInstance" : "grp_mul_76_Pipeline_VITIS_LOOP_27_1111_fu_65", "Port" : "R_Z", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "789", "SubInstance" : "grp_mul_76_Pipeline_VITIS_LOOP_54_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "802", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "789", "SubInstance" : "grp_mul_76_Pipeline_VITIS_LOOP_54_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "802", "SubInstance" : "grp_convert_blocks_to_digits_fu_88", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "787", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.acc_U", "Parent" : "786"},
	{"ID" : "788", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.acc_1_U", "Parent" : "786"},
	{"ID" : "789", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_54_1_fu_50", "Parent" : "786", "Child" : ["790"],
		"CDFG" : "mul_76_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "790", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_54_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "789"},
	{"ID" : "791", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_27_1_fu_58", "Parent" : "786", "Child" : ["792", "793"],
		"CDFG" : "mul_76_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "792", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_27_1_fu_58.partset_512ns_512ns_64ns_32ns_512_1_1_U752", "Parent" : "791"},
	{"ID" : "793", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_27_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "791"},
	{"ID" : "794", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_27_1111_fu_65", "Parent" : "786", "Child" : ["795", "796"],
		"CDFG" : "mul_76_Pipeline_VITIS_LOOP_27_1111",
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
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "795", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_27_1111_fu_65.partset_512ns_512ns_64ns_32ns_512_1_1_U755", "Parent" : "794"},
	{"ID" : "796", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_27_1111_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "794"},
	{"ID" : "797", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_77_2_fu_72", "Parent" : "786", "Child" : ["798"],
		"CDFG" : "mul_76_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "798", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_77_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "797"},
	{"ID" : "799", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_80", "Parent" : "786", "Child" : ["800", "801"],
		"CDFG" : "mul_76_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "800", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_80.mul_64ns_64ns_128_1_1_U760", "Parent" : "799"},
	{"ID" : "801", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_mul_76_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "799"},
	{"ID" : "802", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_convert_blocks_to_digits_fu_88", "Parent" : "786", "Child" : ["803", "805"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "803", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "805", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "803", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "805", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "803", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "802", "Child" : ["804"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "804", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "803"},
	{"ID" : "805", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "802", "Child" : ["806"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "806", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_64_fu_88.grp_mul_76_fu_20.grp_convert_blocks_to_digits_fu_88.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "805"},
	{"ID" : "807", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1_fu_98", "Parent" : "755", "Child" : ["808"],
		"CDFG" : "fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "808", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "807"},
	{"ID" : "809", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1142_fu_107", "Parent" : "755", "Child" : ["810"],
		"CDFG" : "fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1142",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "810", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1142_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "809"},
	{"ID" : "811", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_171_1_fu_114", "Parent" : "755", "Child" : ["812"],
		"CDFG" : "fp2mul503_mont_60_Pipeline_VITIS_LOOP_171_1",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "812", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_171_1_fu_114.flow_control_loop_pipe_sequential_init_U", "Parent" : "811"},
	{"ID" : "813", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_198_1_fu_124", "Parent" : "755", "Child" : ["814", "815"],
		"CDFG" : "fp2mul503_mont_60_Pipeline_VITIS_LOOP_198_1",
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
			{"Name" : "sext_ln190", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_198_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "814", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_198_1_fu_124.p503_1_U", "Parent" : "813"},
	{"ID" : "815", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_198_1_fu_124.flow_control_loop_pipe_sequential_init_U", "Parent" : "813"},
	{"ID" : "816", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1143_fu_132", "Parent" : "755", "Child" : ["817"],
		"CDFG" : "fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1143",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "817", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1143_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "816"},
	{"ID" : "818", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140", "Parent" : "755", "Child" : ["819", "821", "824", "827"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
					{"ID" : "819", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_185", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "821", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "824", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "821", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "824", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "819", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_185", "Parent" : "818", "Child" : ["820"],
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
	{"ID" : "820", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_185.flow_control_loop_pipe_sequential_init_U", "Parent" : "819"},
	{"ID" : "821", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191", "Parent" : "818", "Child" : ["822", "823"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_026", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "822", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191.p503p1_1_U", "Parent" : "821"},
	{"ID" : "823", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191.flow_control_loop_pipe_sequential_init_U", "Parent" : "821"},
	{"ID" : "824", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207", "Parent" : "818", "Child" : ["825", "826"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "825", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207.p503p1_1_U", "Parent" : "824"},
	{"ID" : "826", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207.flow_control_loop_pipe_sequential_init_U", "Parent" : "824"},
	{"ID" : "827", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_digit_x_digit_fu_824", "Parent" : "818", "Child" : ["828", "829", "830", "831"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "828", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U338", "Parent" : "827"},
	{"ID" : "829", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U339", "Parent" : "827"},
	{"ID" : "830", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U340", "Parent" : "827"},
	{"ID" : "831", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_fu_140.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U341", "Parent" : "827"},
	{"ID" : "832", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149", "Parent" : "755", "Child" : ["833"],
		"CDFG" : "mp_mul_7163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "833", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "833", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "833", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "833", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "833", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18", "Parent" : "832", "Child" : ["834", "835", "836", "838", "841", "844", "846", "849"],
		"CDFG" : "mul_6170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "838", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "841", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "836", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "849", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "836", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "849", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "834", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.acc_U", "Parent" : "833"},
	{"ID" : "835", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.acc_1_U", "Parent" : "833"},
	{"ID" : "836", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "833", "Child" : ["837"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "837", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "836"},
	{"ID" : "838", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "833", "Child" : ["839", "840"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "839", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "838"},
	{"ID" : "840", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "838"},
	{"ID" : "841", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "833", "Child" : ["842", "843"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1113",
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
			{"Name" : "B_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "842", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "841"},
	{"ID" : "843", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "841"},
	{"ID" : "844", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "833", "Child" : ["845"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "845", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "844"},
	{"ID" : "846", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "833", "Child" : ["847", "848"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "847", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "846"},
	{"ID" : "848", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "846"},
	{"ID" : "849", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "833", "Child" : ["850", "852"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "850", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "852", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "850", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "852", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "850", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "849", "Child" : ["851"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "851", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "850"},
	{"ID" : "852", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "849", "Child" : ["853"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "853", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_mp_mul_7163_fu_149.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "852"},
	{"ID" : "854", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_171_1144_fu_157", "Parent" : "755", "Child" : ["855"],
		"CDFG" : "fp2mul503_mont_60_Pipeline_VITIS_LOOP_171_1144",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "855", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_fp2mul503_mont_60_Pipeline_VITIS_LOOP_171_1144_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "854"},
	{"ID" : "856", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165", "Parent" : "755", "Child" : ["857", "859", "862", "865"],
		"CDFG" : "rdc_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "857", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_212", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "859", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "862", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "859", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "862", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "857", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_212", "Parent" : "856", "Child" : ["858"],
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
	{"ID" : "858", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_212.flow_control_loop_pipe_sequential_init_U", "Parent" : "857"},
	{"ID" : "859", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218", "Parent" : "856", "Child" : ["860", "861"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "860", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218.p503p1_1_U", "Parent" : "859"},
	{"ID" : "861", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218.flow_control_loop_pipe_sequential_init_U", "Parent" : "859"},
	{"ID" : "862", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234", "Parent" : "856", "Child" : ["863", "864"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "863", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234.p503p1_1_U", "Parent" : "862"},
	{"ID" : "864", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "862"},
	{"ID" : "865", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_911", "Parent" : "856", "Child" : ["866", "867", "868", "869"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "866", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U338", "Parent" : "865"},
	{"ID" : "867", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U339", "Parent" : "865"},
	{"ID" : "868", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U340", "Parent" : "865"},
	{"ID" : "869", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_60_fu_1187.grp_rdc_mont_1_fu_165.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U341", "Parent" : "865"},
	{"ID" : "870", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1200", "Parent" : "0", "Child" : ["871", "873", "876"],
		"CDFG" : "fpadd503",
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
					{"ID" : "871", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "871", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "871", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "873", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "876", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "873", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "876", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "871", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1200.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28", "Parent" : "870", "Child" : ["872"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_33_1",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "872", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1200.grp_fpadd503_Pipeline_VITIS_LOOP_33_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "871"},
	{"ID" : "873", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1200.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38", "Parent" : "870", "Child" : ["874", "875"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_39_2",
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
			{"Name" : "carry_204_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "874", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1200.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.p503x2_1_U", "Parent" : "873"},
	{"ID" : "875", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1200.grp_fpadd503_Pipeline_VITIS_LOOP_39_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "873"},
	{"ID" : "876", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1200.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47", "Parent" : "870", "Child" : ["877", "878"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_46_3",
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
	{"ID" : "877", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1200.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.p503x2_1_U", "Parent" : "876"},
	{"ID" : "878", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1200.grp_fpadd503_Pipeline_VITIS_LOOP_46_3_fu_47.flow_control_loop_pipe_sequential_init_U", "Parent" : "876"},
	{"ID" : "879", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209", "Parent" : "0", "Child" : ["880", "881", "882", "883", "884", "885", "886", "887", "909", "931", "933", "935", "937", "940", "942", "956", "978", "980"],
		"CDFG" : "fp2mul503_mont_229",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "887", "SubInstance" : "grp_mp_mul_1_fu_76", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "931", "SubInstance" : "grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1_fu_100", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "942", "SubInstance" : "grp_rdc_mont_fu_144", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "909", "SubInstance" : "grp_mp_mul_1_fu_88", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "931", "SubInstance" : "grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1_fu_100", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "980", "SubInstance" : "grp_rdc_mont_1_fu_169", "Port" : "mc", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "887", "SubInstance" : "grp_mp_mul_1_fu_76", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "933", "SubInstance" : "grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1187_fu_109", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "909", "SubInstance" : "grp_mp_mul_1_fu_88", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "933", "SubInstance" : "grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1187_fu_109", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "937", "SubInstance" : "grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_198_1_fu_128", "Port" : "p503_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "942", "SubInstance" : "grp_rdc_mont_fu_144", "Port" : "p503p1_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "980", "SubInstance" : "grp_rdc_mont_1_fu_169", "Port" : "p503p1_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "880", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.t1_U", "Parent" : "879"},
	{"ID" : "881", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.t2_U", "Parent" : "879"},
	{"ID" : "882", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.tt1_U", "Parent" : "879"},
	{"ID" : "883", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.tt1_1_U", "Parent" : "879"},
	{"ID" : "884", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.tt2_U", "Parent" : "879"},
	{"ID" : "885", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.tt2_1_U", "Parent" : "879"},
	{"ID" : "886", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.tt3_U", "Parent" : "879"},
	{"ID" : "887", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76", "Parent" : "879", "Child" : ["888"],
		"CDFG" : "mp_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "888", "SubInstance" : "grp_mul_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "888", "SubInstance" : "grp_mul_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "888", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "888", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "888", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18", "Parent" : "887", "Child" : ["889", "890", "891", "893", "896", "899", "901", "904"],
		"CDFG" : "mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "893", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "896", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_27_1122_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "891", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "904", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "891", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "904", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "889", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.acc_U", "Parent" : "888"},
	{"ID" : "890", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.acc_1_U", "Parent" : "888"},
	{"ID" : "891", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "888", "Child" : ["892"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "892", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "891"},
	{"ID" : "893", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "888", "Child" : ["894", "895"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "894", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U632", "Parent" : "893"},
	{"ID" : "895", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "893"},
	{"ID" : "896", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_27_1122_fu_63", "Parent" : "888", "Child" : ["897", "898"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_27_1122",
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
			{"Name" : "B_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "897", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_27_1122_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U635", "Parent" : "896"},
	{"ID" : "898", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_27_1122_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "896"},
	{"ID" : "899", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "888", "Child" : ["900"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "900", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "899"},
	{"ID" : "901", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "888", "Child" : ["902", "903"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "902", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U640", "Parent" : "901"},
	{"ID" : "903", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "901"},
	{"ID" : "904", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "888", "Child" : ["905", "907"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "905", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "907", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "905", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "907", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "905", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "904", "Child" : ["906"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "906", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "905"},
	{"ID" : "907", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "904", "Child" : ["908"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "908", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_76.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "907"},
	{"ID" : "909", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88", "Parent" : "879", "Child" : ["910"],
		"CDFG" : "mp_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "910", "SubInstance" : "grp_mul_1_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "910", "SubInstance" : "grp_mul_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "910", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "910", "SubInstance" : "grp_mul_1_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "910", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18", "Parent" : "909", "Child" : ["911", "912", "913", "915", "918", "921", "923", "926"],
		"CDFG" : "mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "915", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "918", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_27_1122_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "913", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "926", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "913", "SubInstance" : "grp_mul_1_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "926", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "911", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.acc_U", "Parent" : "910"},
	{"ID" : "912", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.acc_1_U", "Parent" : "910"},
	{"ID" : "913", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "910", "Child" : ["914"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "914", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "913"},
	{"ID" : "915", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "910", "Child" : ["916", "917"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "916", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U632", "Parent" : "915"},
	{"ID" : "917", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "915"},
	{"ID" : "918", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_27_1122_fu_63", "Parent" : "910", "Child" : ["919", "920"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_27_1122",
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
			{"Name" : "B_18_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "919", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_27_1122_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U635", "Parent" : "918"},
	{"ID" : "920", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_27_1122_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "918"},
	{"ID" : "921", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "910", "Child" : ["922"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "922", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "921"},
	{"ID" : "923", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "910", "Child" : ["924", "925"],
		"CDFG" : "mul_1_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "924", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U640", "Parent" : "923"},
	{"ID" : "925", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_mul_1_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "923"},
	{"ID" : "926", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "910", "Child" : ["927", "929"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "927", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "929", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "927", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "929", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "927", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "926", "Child" : ["928"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "928", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "927"},
	{"ID" : "929", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "926", "Child" : ["930"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "930", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_1_fu_88.grp_mul_1_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "929"},
	{"ID" : "931", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1_fu_100", "Parent" : "879", "Child" : ["932"],
		"CDFG" : "fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "932", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "931"},
	{"ID" : "933", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1187_fu_109", "Parent" : "879", "Child" : ["934"],
		"CDFG" : "fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1187",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "934", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1187_fu_109.flow_control_loop_pipe_sequential_init_U", "Parent" : "933"},
	{"ID" : "935", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_171_1_fu_118", "Parent" : "879", "Child" : ["936"],
		"CDFG" : "fp2mul503_mont_229_Pipeline_VITIS_LOOP_171_1",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "936", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_171_1_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "935"},
	{"ID" : "937", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_198_1_fu_128", "Parent" : "879", "Child" : ["938", "939"],
		"CDFG" : "fp2mul503_mont_229_Pipeline_VITIS_LOOP_198_1",
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
			{"Name" : "sext_ln190", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_198_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "938", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_198_1_fu_128.p503_1_U", "Parent" : "937"},
	{"ID" : "939", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_198_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "937"},
	{"ID" : "940", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1188_fu_136", "Parent" : "879", "Child" : ["941"],
		"CDFG" : "fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1188",
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
			{"Name" : "VITIS_LOOP_389_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "941", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1188_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "940"},
	{"ID" : "942", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144", "Parent" : "879", "Child" : ["943", "945", "948", "951"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
					{"ID" : "943", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_185", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "945", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "948", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "945", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "948", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "943", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_185", "Parent" : "942", "Child" : ["944"],
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
	{"ID" : "944", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_306_1_fu_185.flow_control_loop_pipe_sequential_init_U", "Parent" : "943"},
	{"ID" : "945", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191", "Parent" : "942", "Child" : ["946", "947"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v_026", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "946", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191.p503p1_1_U", "Parent" : "945"},
	{"ID" : "947", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_314_3_fu_191.flow_control_loop_pipe_sequential_init_U", "Parent" : "945"},
	{"ID" : "948", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207", "Parent" : "942", "Child" : ["949", "950"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "949", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207.p503p1_1_U", "Parent" : "948"},
	{"ID" : "950", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_rdc_mont_Pipeline_VITIS_LOOP_340_5_fu_207.flow_control_loop_pipe_sequential_init_U", "Parent" : "948"},
	{"ID" : "951", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_824", "Parent" : "942", "Child" : ["952", "953", "954", "955"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "952", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U338", "Parent" : "951"},
	{"ID" : "953", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U339", "Parent" : "951"},
	{"ID" : "954", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U340", "Parent" : "951"},
	{"ID" : "955", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_fu_144.grp_digit_x_digit_fu_824.mul_32ns_32ns_64_1_1_U341", "Parent" : "951"},
	{"ID" : "956", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153", "Parent" : "879", "Child" : ["957"],
		"CDFG" : "mp_mul_7163",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "957", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "957", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "957", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "957", "SubInstance" : "grp_mul_6170_fu_18", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "957", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18", "Parent" : "956", "Child" : ["958", "959", "960", "962", "965", "968", "970", "973"],
		"CDFG" : "mul_6170",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
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
					{"ID" : "962", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "965", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "960", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "973", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "960", "SubInstance" : "grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "973", "SubInstance" : "grp_convert_blocks_to_digits_fu_86", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "958", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.acc_U", "Parent" : "957"},
	{"ID" : "959", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.acc_1_U", "Parent" : "957"},
	{"ID" : "960", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48", "Parent" : "957", "Child" : ["961"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_54_1",
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
			{"Name" : "VITIS_LOOP_54_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "961", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_54_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "960"},
	{"ID" : "962", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56", "Parent" : "957", "Child" : ["963", "964"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1",
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
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "963", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.partset_512ns_512ns_64ns_32ns_512_1_1_U289", "Parent" : "962"},
	{"ID" : "964", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "962"},
	{"ID" : "965", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63", "Parent" : "957", "Child" : ["966", "967"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_27_1113",
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
			{"Name" : "B_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "966", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.partset_512ns_512ns_64ns_32ns_512_1_1_U293", "Parent" : "965"},
	{"ID" : "967", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_27_1113_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "965"},
	{"ID" : "968", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70", "Parent" : "957", "Child" : ["969"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_77_2",
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
			{"Name" : "VITIS_LOOP_77_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "969", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_77_2_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "968"},
	{"ID" : "970", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78", "Parent" : "957", "Child" : ["971", "972"],
		"CDFG" : "mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4",
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
			{"Name" : "A_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_98_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "971", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.mul_64ns_64ns_128_1_1_U298", "Parent" : "970"},
	{"ID" : "972", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "970"},
	{"ID" : "973", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86", "Parent" : "957", "Child" : ["974", "976"],
		"CDFG" : "convert_blocks_to_digits",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "acc_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "974", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "976", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "6"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "974", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "976", "SubInstance" : "grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state5_blk"}},
			{"Name" : "VITIS_LOOP_181_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "974", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182", "Parent" : "973", "Child" : ["975"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1",
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
			{"Name" : "VITIS_LOOP_172_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "975", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "974"},
	{"ID" : "976", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190", "Parent" : "973", "Child" : ["977"],
		"CDFG" : "convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bitbuf", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln167_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_ln219_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_219_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "977", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_mp_mul_7163_fu_153.grp_mul_6170_fu_18.grp_convert_blocks_to_digits_fu_86.grp_convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "976"},
	{"ID" : "978", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_171_1189_fu_161", "Parent" : "879", "Child" : ["979"],
		"CDFG" : "fp2mul503_mont_229_Pipeline_VITIS_LOOP_171_1189",
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
			{"Name" : "VITIS_LOOP_171_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "979", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_fp2mul503_mont_229_Pipeline_VITIS_LOOP_171_1189_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "978"},
	{"ID" : "980", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169", "Parent" : "879", "Child" : ["981", "983", "986", "989"],
		"CDFG" : "rdc_mont_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "224",
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
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "981", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_212", "Port" : "mc", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "983", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "986", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234", "Port" : "mc", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "983", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218", "Port" : "p503p1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "986", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234", "Port" : "p503p1_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_312_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state9"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "981", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_212", "Parent" : "980", "Child" : ["982"],
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
	{"ID" : "982", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_306_1_fu_212.flow_control_loop_pipe_sequential_init_U", "Parent" : "981"},
	{"ID" : "983", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218", "Parent" : "980", "Child" : ["984", "985"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_314_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_314_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "984", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218.p503p1_1_U", "Parent" : "983"},
	{"ID" : "985", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_314_3_fu_218.flow_control_loop_pipe_sequential_init_U", "Parent" : "983"},
	{"ID" : "986", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234", "Parent" : "980", "Child" : ["987", "988"],
		"CDFG" : "rdc_mont_1_Pipeline_VITIS_LOOP_340_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub65", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "v_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "u_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503p1_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "987", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234.p503p1_1_U", "Parent" : "986"},
	{"ID" : "988", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_rdc_mont_1_Pipeline_VITIS_LOOP_340_5_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "986"},
	{"ID" : "989", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_digit_x_digit_fu_911", "Parent" : "980", "Child" : ["990", "991", "992", "993"],
		"CDFG" : "digit_x_digit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
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
	{"ID" : "990", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U338", "Parent" : "989"},
	{"ID" : "991", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U339", "Parent" : "989"},
	{"ID" : "992", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U340", "Parent" : "989"},
	{"ID" : "993", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_229_fu_1209.grp_rdc_mont_1_fu_169.grp_digit_x_digit_fu_911.mul_32ns_32ns_64_1_1_U341", "Parent" : "989"}]}


set ArgLastReadFirstWriteLatency {
	LADDER3PT {
		ephemeralsk_i {Type I LastRead 20 FirstWrite -1}
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
	LADDER3PT_Pipeline_1 {
		A24_6 {Type O LastRead -1 FirstWrite 0}
		A24_5 {Type O LastRead -1 FirstWrite 0}
		A24_4 {Type O LastRead -1 FirstWrite 0}
		A24 {Type O LastRead -1 FirstWrite 0}}
	LADDER3PT_Pipeline_VITIS_LOOP_16_1228 {
		R_X {Type O LastRead -1 FirstWrite 1}
		XPA_0 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_Pipeline_VITIS_LOOP_16_1 {
		A24_4 {Type O LastRead -1 FirstWrite 1}
		A24 {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_3 {
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_3_Pipeline_VITIS_LOOP_33_1 {
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1 {Type IO LastRead 0 FirstWrite 1}}
	fpadd503_3_Pipeline_VITIS_LOOP_39_2 {
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_3_Pipeline_VITIS_LOOP_46_3 {
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_Pipeline_VITIS_LOOP_16_1229 {
		R_X {Type O LastRead -1 FirstWrite 1}
		XPA_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_4 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_4_Pipeline_VITIS_LOOP_33_1 {
		zext_ln35_7 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1 {Type IO LastRead 0 FirstWrite 1}}
	fpadd503_4_Pipeline_VITIS_LOOP_39_2 {
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_4_Pipeline_VITIS_LOOP_46_3 {
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_Pipeline_VITIS_LOOP_16_1222 {
		R0_X {Type O LastRead -1 FirstWrite 1}
		XQA_0 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_Pipeline_VITIS_LOOP_16_1223 {
		R0_X_4 {Type O LastRead -1 FirstWrite 0}}
	LADDER3PT_Pipeline_VITIS_LOOP_16_1224 {
		R0_Z {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_Pipeline_VITIS_LOOP_16_1225 {
		R2_X {Type O LastRead -1 FirstWrite 1}
		XRA_0 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_Pipeline_VITIS_LOOP_16_1226 {
		R2_X_4 {Type O LastRead -1 FirstWrite 1}
		XRA_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_Pipeline_VITIS_LOOP_16_1227 {
		R2_Z {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	fp2div2_503 {
		c_0_0 {Type IO LastRead 1 FirstWrite 1}
		c_0_1 {Type IO LastRead 6 FirstWrite 1}
		c_1_0 {Type IO LastRead 2 FirstWrite 1}
		c_1_1 {Type IO LastRead 8 FirstWrite 1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2div2_503_Pipeline_VITIS_LOOP_91_1 {
		c_0_0 {Type IO LastRead 0 FirstWrite 1}
		c_0_1 {Type IO LastRead 0 FirstWrite 1}
		sext_ln90 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2div2_503_Pipeline_VITIS_LOOP_435_1 {
		c_0_1 {Type IO LastRead 1 FirstWrite 2}
		c_0_0 {Type IO LastRead 1 FirstWrite 2}}
	fp2div2_503_Pipeline_VITIS_LOOP_91_1211 {
		c_1_0 {Type IO LastRead 0 FirstWrite 1}
		c_1_1 {Type IO LastRead 0 FirstWrite 1}
		sext_ln90_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2div2_503_Pipeline_VITIS_LOOP_435_1212 {
		c_1_1 {Type IO LastRead 1 FirstWrite 2}
		c_1_0 {Type IO LastRead 1 FirstWrite 2}}
	LADDER3PT_Pipeline_VITIS_LOOP_16_1230 {
		R_Z {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_Pipeline_VITIS_LOOP_24_1 {
		R_Z {Type O LastRead -1 FirstWrite 0}}
	LADDER3PT_Pipeline_VITIS_LOOP_269_1 {
		R2_X {Type IO LastRead 0 FirstWrite 1}
		R2_X_4 {Type IO LastRead 0 FirstWrite 2}
		R2_Z {Type IO LastRead 0 FirstWrite 1}
		R2_Z_4 {Type IO LastRead 0 FirstWrite 2}
		R_X {Type IO LastRead 1 FirstWrite 2}
		sext_ln290 {Type I LastRead 0 FirstWrite -1}
		R_Z {Type IO LastRead 1 FirstWrite 2}}
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
		carry_201_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
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
		carry_201_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
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
	fp2sqr503_mont_6 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 13 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 20}
		c_1 {Type O LastRead -1 FirstWrite 20}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_6_Pipeline_VITIS_LOOP_389_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_6_Pipeline_VITIS_LOOP_61_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_6_Pipeline_VITIS_LOOP_68_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_6_Pipeline_VITIS_LOOP_389_1128 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont {
		ma {Type I LastRead 10 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_1_3 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_1_2 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	fpmul503_mont {
		ma {Type I LastRead 10 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_1_3 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_1_2 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	fpcorrection503 {
		a {Type IO LastRead 0 FirstWrite 1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fpcorrection503_Pipeline_VITIS_LOOP_105_1 {
		a {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fpcorrection503_Pipeline_VITIS_LOOP_111_2 {
		a {Type IO LastRead 0 FirstWrite 1}
		sext_ln103 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fpcorrection503 {
		a {Type IO LastRead 0 FirstWrite 1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fpcorrection503_Pipeline_VITIS_LOOP_105_1 {
		a {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fpcorrection503_Pipeline_VITIS_LOOP_111_2 {
		a {Type IO LastRead 0 FirstWrite 1}
		sext_ln103 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_2_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_2_1_Pipeline_VITIS_LOOP_33_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_2_1_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_195_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_2_1_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_2_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_2_1_Pipeline_VITIS_LOOP_33_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_2_1_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_195_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_2_1_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_231_3 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_7163 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1113 {
		b {Type I LastRead 0 FirstWrite -1}
		B_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_9_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	mp_mul_7163 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1113 {
		b {Type I LastRead 0 FirstWrite -1}
		B_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_9_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1172 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_389_1173 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_138 {
		ma {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_138_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_138_Pipeline_VITIS_LOOP_314_3 {
		v_026 {Type I LastRead 0 FirstWrite -1}
		u_025 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_68_out {Type O LastRead -1 FirstWrite 2}
		u_36_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_138_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_72_out {Type O LastRead -1 FirstWrite 2}
		u_40_out {Type O LastRead -1 FirstWrite 2}
		t_20_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_231_3_Pipeline_VITIS_LOOP_171_1174 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_6 {
		ma_0 {Type I LastRead 4 FirstWrite -1}
		ma_1 {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_6_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_6_Pipeline_VITIS_LOOP_314_3 {
		v {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_29_out {Type O LastRead -1 FirstWrite 2}
		u_26_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_6_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_26 {Type I LastRead 0 FirstWrite -1}
		u_23 {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_33_out {Type O LastRead -1 FirstWrite 2}
		u_30_out {Type O LastRead -1 FirstWrite 2}
		t_15_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_230 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
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
	mul_2_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_27_1121 {
		b {Type I LastRead 0 FirstWrite -1}
		B_17_out {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_17_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
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
	mul_2_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_27_1121 {
		b {Type I LastRead 0 FirstWrite -1}
		B_17_out {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_17_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1184 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_230_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_230_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_230_Pipeline_VITIS_LOOP_389_1185 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_138 {
		ma {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_138_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_138_Pipeline_VITIS_LOOP_314_3 {
		v_026 {Type I LastRead 0 FirstWrite -1}
		u_025 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_68_out {Type O LastRead -1 FirstWrite 2}
		u_36_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_138_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_72_out {Type O LastRead -1 FirstWrite 2}
		u_40_out {Type O LastRead -1 FirstWrite 2}
		t_20_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_7163 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1113 {
		b {Type I LastRead 0 FirstWrite -1}
		B_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_9_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_230_Pipeline_VITIS_LOOP_171_1186 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_6 {
		ma_0 {Type I LastRead 4 FirstWrite -1}
		ma_1 {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_6_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_6_Pipeline_VITIS_LOOP_314_3 {
		v {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_29_out {Type O LastRead -1 FirstWrite 2}
		u_26_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_6_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_26 {Type I LastRead 0 FirstWrite -1}
		u_23 {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_33_out {Type O LastRead -1 FirstWrite 2}
		u_30_out {Type O LastRead -1 FirstWrite 2}
		t_15_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpsub503_3 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_3_Pipeline_VITIS_LOOP_61_1 {
		c {Type O LastRead -1 FirstWrite 1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_3_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_3 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_3_Pipeline_VITIS_LOOP_61_1 {
		c {Type O LastRead -1 FirstWrite 1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_3_Pipeline_VITIS_LOOP_68_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_27_1123 {
		b {Type I LastRead 0 FirstWrite -1}
		B_19_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_19_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	mp_mul_2 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_27_1123 {
		b {Type I LastRead 0 FirstWrite -1}
		B_19_out {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_19_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_389_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_389_1208 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_389_1209 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_314_3 {
		v_026 {Type I LastRead 0 FirstWrite -1}
		u_025 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 2}
		u_36_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_118_out {Type O LastRead -1 FirstWrite 2}
		u_40_out {Type O LastRead -1 FirstWrite 2}
		t_20_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_7163 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1113 {
		b {Type I LastRead 0 FirstWrite -1}
		B_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_9_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_171_1210 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_1 {
		ma_0 {Type I LastRead 4 FirstWrite -1}
		ma_1 {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_1_Pipeline_VITIS_LOOP_314_3 {
		v {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_105_out {Type O LastRead -1 FirstWrite 2}
		u_27_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_26 {Type I LastRead 0 FirstWrite -1}
		u_23 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_109_out {Type O LastRead -1 FirstWrite 2}
		u_31_out {Type O LastRead -1 FirstWrite 2}
		t_15_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_8 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		b_0_0 {Type I LastRead 0 FirstWrite -1}
		b_0_1 {Type I LastRead 0 FirstWrite -1}
		b_1_0 {Type I LastRead 0 FirstWrite -1}
		b_1_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_7 {
		a {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6 {
		a {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6_Pipeline_VITIS_LOOP_27_1117 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		B_13_out {Type O LastRead -1 FirstWrite 0}}
	mul_6_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_13_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	mp_mul_7 {
		a {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6 {
		a {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6_Pipeline_VITIS_LOOP_27_1117 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		B_13_out {Type O LastRead -1 FirstWrite 0}}
	mul_6_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_13_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1 {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1136 {
		b_0_0 {Type I LastRead 0 FirstWrite -1}
		b_0_1 {Type I LastRead 0 FirstWrite -1}
		b_1_0 {Type I LastRead 0 FirstWrite -1}
		b_1_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_389_1137 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_314_3 {
		v_026 {Type I LastRead 0 FirstWrite -1}
		u_025 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 2}
		u_36_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_118_out {Type O LastRead -1 FirstWrite 2}
		u_40_out {Type O LastRead -1 FirstWrite 2}
		t_20_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_7163 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1113 {
		b {Type I LastRead 0 FirstWrite -1}
		B_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_9_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_8_Pipeline_VITIS_LOOP_171_1138 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_1 {
		ma_0 {Type I LastRead 4 FirstWrite -1}
		ma_1 {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_1_Pipeline_VITIS_LOOP_314_3 {
		v {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_105_out {Type O LastRead -1 FirstWrite 2}
		u_27_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_26 {Type I LastRead 0 FirstWrite -1}
		u_23 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_109_out {Type O LastRead -1 FirstWrite 2}
		u_31_out {Type O LastRead -1 FirstWrite 2}
		t_15_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fp2sqr503_mont_5 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 13 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_5_Pipeline_VITIS_LOOP_389_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_5_Pipeline_VITIS_LOOP_61_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_5_Pipeline_VITIS_LOOP_68_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln58 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_5_Pipeline_VITIS_LOOP_389_1132 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont {
		ma {Type I LastRead 10 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_1_3 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_1_2 {
		a {Type I LastRead 10 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	fpmul503_mont_1 {
		ma {Type I LastRead 10 FirstWrite -1}
		mc {Type IO LastRead 13 FirstWrite 20}}
	mul_2_2_2 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	mul_1_1 {
		a {Type I LastRead 10 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	fpadd503_2 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_2_Pipeline_VITIS_LOOP_33_1 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}}
	fpadd503_2_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_198_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_2_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_60 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		R_X {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_63 {
		a {Type I LastRead 0 FirstWrite -1}
		R_Z {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_75 {
		a {Type I LastRead 0 FirstWrite -1}
		R_Z {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_75_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_75_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_75_Pipeline_VITIS_LOOP_27_1112 {
		R_Z {Type I LastRead 0 FirstWrite -1}
		B_8_out {Type O LastRead -1 FirstWrite 0}}
	mul_75_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_75_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_8_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	mp_mul_64 {
		a {Type I LastRead 0 FirstWrite -1}
		R_Z {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_76 {
		a {Type I LastRead 0 FirstWrite -1}
		R_Z {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_76_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_76_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_76_Pipeline_VITIS_LOOP_27_1111 {
		R_Z {Type I LastRead 0 FirstWrite -1}
		B_7_out {Type O LastRead -1 FirstWrite 0}}
	mul_76_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_76_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_7_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1142 {
		R_X {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 2}}
	fp2mul503_mont_60_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_60_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_60_Pipeline_VITIS_LOOP_389_1143 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_314_3 {
		v_026 {Type I LastRead 0 FirstWrite -1}
		u_025 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 2}
		u_36_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_118_out {Type O LastRead -1 FirstWrite 2}
		u_40_out {Type O LastRead -1 FirstWrite 2}
		t_20_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_7163 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1113 {
		b {Type I LastRead 0 FirstWrite -1}
		B_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_9_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_60_Pipeline_VITIS_LOOP_171_1144 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_1 {
		ma_0 {Type I LastRead 4 FirstWrite -1}
		ma_1 {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_1_Pipeline_VITIS_LOOP_314_3 {
		v {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_105_out {Type O LastRead -1 FirstWrite 2}
		u_27_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_26 {Type I LastRead 0 FirstWrite -1}
		u_23 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_109_out {Type O LastRead -1 FirstWrite 2}
		u_31_out {Type O LastRead -1 FirstWrite 2}
		t_15_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_33_1 {
		c {Type O LastRead -1 FirstWrite 1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_39_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_204_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_46_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln30 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_229 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
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
	mul_1_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_27_1122 {
		b {Type I LastRead 0 FirstWrite -1}
		B_18_out {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_18_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
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
	mul_1_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_27_1122 {
		b {Type I LastRead 0 FirstWrite -1}
		B_18_out {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_1_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_18_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1187 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_229_Pipeline_VITIS_LOOP_171_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_229_Pipeline_VITIS_LOOP_198_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln190 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_229_Pipeline_VITIS_LOOP_389_1188 {
		tt1_1 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt2_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_314_3 {
		v_026 {Type I LastRead 0 FirstWrite -1}
		u_025 {Type I LastRead 0 FirstWrite -1}
		i_9 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_114_out {Type O LastRead -1 FirstWrite 2}
		u_36_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_36 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_118_out {Type O LastRead -1 FirstWrite 2}
		u_40_out {Type O LastRead -1 FirstWrite 2}
		t_20_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	mp_mul_7163 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170 {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_54_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1 {
		a {Type I LastRead 0 FirstWrite -1}
		A_1_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_27_1113 {
		b {Type I LastRead 0 FirstWrite -1}
		B_9_out {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_77_2 {
		acc_1 {Type O LastRead -1 FirstWrite 0}
		acc {Type O LastRead -1 FirstWrite 0}}
	mul_6170_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_98_4 {
		A_1_reload {Type I LastRead 0 FirstWrite -1}
		B_9_reload {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}}
	convert_blocks_to_digits {
		acc_0 {Type I LastRead 2 FirstWrite -1}
		acc_1 {Type I LastRead 2 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_172_1 {
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_0 {Type O LastRead -1 FirstWrite 0}}
	convert_blocks_to_digits_Pipeline_VITIS_LOOP_219_6 {
		bitbuf {Type I LastRead 0 FirstWrite -1}
		zext_ln167_3 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type O LastRead -1 FirstWrite 1}
		c_0 {Type O LastRead -1 FirstWrite 1}
		sub_ln219_1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_229_Pipeline_VITIS_LOOP_171_1189 {
		tt2_1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt1_1 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont_1 {
		ma_0 {Type I LastRead 4 FirstWrite -1}
		ma_1 {Type I LastRead 4 FirstWrite -1}
		mc {Type IO LastRead 0 FirstWrite -1}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_306_1 {
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_1_Pipeline_VITIS_LOOP_314_3 {
		v {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		i_7 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		add_ln314 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_105_out {Type O LastRead -1 FirstWrite 2}
		u_27_out {Type O LastRead -1 FirstWrite 2}
		t_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	rdc_mont_1_Pipeline_VITIS_LOOP_340_5 {
		indvars_iv {Type I LastRead 0 FirstWrite -1}
		v_26 {Type I LastRead 0 FirstWrite -1}
		u_23 {Type I LastRead 0 FirstWrite -1}
		mc {Type I LastRead 0 FirstWrite -1}
		sub65 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		v_109_out {Type O LastRead -1 FirstWrite 2}
		u_31_out {Type O LastRead -1 FirstWrite 2}
		t_15_out {Type O LastRead -1 FirstWrite 2}
		p503p1_1 {Type I LastRead -1 FirstWrite -1}}
	digit_x_digit {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ephemeralsk_i { ap_memory {  { ephemeralsk_i_address0 mem_address 1 5 }  { ephemeralsk_i_ce0 mem_ce 1 1 }  { ephemeralsk_i_q0 mem_dout 0 8 }  { ephemeralsk_i_address1 MemPortADDR2 1 5 }  { ephemeralsk_i_ce1 MemPortCE2 1 1 }  { ephemeralsk_i_q1 MemPortDOUT2 0 8 } } }
	R_X { ap_memory {  { R_X_address0 mem_address 1 4 }  { R_X_ce0 mem_ce 1 1 }  { R_X_we0 mem_we 1 1 }  { R_X_d0 mem_din 1 64 }  { R_X_q0 mem_dout 0 64 } } }
	R_Z { ap_memory {  { R_Z_address0 mem_address 1 4 }  { R_Z_ce0 mem_ce 1 1 }  { R_Z_we0 mem_we 1 1 }  { R_Z_d0 mem_din 1 64 }  { R_Z_q0 mem_dout 0 64 } } }
}
