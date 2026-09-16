set moduleName LADDER3PT_impl_250_s
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
set C_modelName {LADDER3PT_impl<250>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict ephemeralsk_i { MEM_WIDTH 8 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_X { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict R_Z { MEM_WIDTH 64 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ephemeralsk_i int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ R_X int 64 regular {array 16 { 2 2 } 1 1 }  }
	{ R_Z int 64 regular {array 16 { 2 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ephemeralsk_i", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "15", "18", "21", "24", "33", "36", "39", "48", "51", "54", "56", "59", "70", "73", "75", "77", "86", "92", "98", "107", "114", "189", "266", "343", "349", "426", "503", "512", "587", "596", "679"],
		"CDFG" : "LADDER3PT_impl_250_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "948814", "EstimateLatencyMax" : "948814",
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
					{"ID" : "15", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1258_fu_895", "Port" : "R_X", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "21", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1259_fu_911", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "75", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_287_1_fu_1014", "Port" : "R_X", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "596", "SubInstance" : "grp_fp2mul503_mont_51_fu_1186", "Port" : "R_X", "Inst_start_state" : "47", "Inst_end_state" : "48"}]},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1260_fu_1000", "Port" : "R_Z", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "73", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_25_1_fu_1008", "Port" : "R_Z", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "75", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_287_1_fu_1014", "Port" : "R_Z", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "596", "SubInstance" : "grp_fp2mul503_mont_51_fu_1186", "Port" : "R_X", "Inst_start_state" : "47", "Inst_end_state" : "48"}]},
			{"Name" : "Montgomery_one_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1_fu_903", "Port" : "Montgomery_one_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "51", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1254_fu_973", "Port" : "Montgomery_one_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "56", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1257_fu_985", "Port" : "Montgomery_one_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "70", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1260_fu_1000", "Port" : "Montgomery_one_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_fpadd503_251_fu_919", "Port" : "p503x2_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "39", "SubInstance" : "grp_fpadd503_287_fu_947", "Port" : "p503x2_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "77", "SubInstance" : "grp_fpadd503_1565_fu_1027", "Port" : "p503x2_1", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "86", "SubInstance" : "grp_fpsub503_193_fu_1045", "Port" : "p503x2_1", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "92", "SubInstance" : "grp_fpsub503_27_fu_1057", "Port" : "p503x2_1", "Inst_start_state" : "35", "Inst_end_state" : "36"},
					{"ID" : "98", "SubInstance" : "grp_fpadd503_154_fu_1075", "Port" : "p503x2_1", "Inst_start_state" : "27", "Inst_end_state" : "28"},
					{"ID" : "114", "SubInstance" : "grp_fp2sqr503_mont_1_fu_1093", "Port" : "p503x2_1", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "343", "SubInstance" : "grp_fpsub503_fu_1118", "Port" : "p503x2_1", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "503", "SubInstance" : "grp_fpadd503_153_fu_1152", "Port" : "p503x2_1", "Inst_start_state" : "41", "Inst_end_state" : "42"},
					{"ID" : "512", "SubInstance" : "grp_fp2sqr503_mont_7_fu_1163", "Port" : "p503x2_1", "Inst_start_state" : "45", "Inst_end_state" : "46"},
					{"ID" : "587", "SubInstance" : "grp_fpadd503_fu_1171", "Port" : "p503x2_1", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_fpadd503_287_fu_947", "Port" : "a", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_fp2div2_503_fu_992", "Port" : "p503_1", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "107", "SubInstance" : "grp_fpcorrection503_fu_1083", "Port" : "p503_1", "Inst_start_state" : "29", "Inst_end_state" : "30"},
					{"ID" : "189", "SubInstance" : "grp_fp2mul503_mont_333_2_fu_1101", "Port" : "p503_1", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "266", "SubInstance" : "grp_fp2mul503_mont_3_fu_1109", "Port" : "p503_1", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "349", "SubInstance" : "grp_fp2mul503_mont_fu_1133", "Port" : "p503_1", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "426", "SubInstance" : "grp_fp2mul503_mont_6_fu_1141", "Port" : "p503_1", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "596", "SubInstance" : "grp_fp2mul503_mont_51_fu_1186", "Port" : "p503_1", "Inst_start_state" : "47", "Inst_end_state" : "48"},
					{"ID" : "679", "SubInstance" : "grp_fp2mul503_mont_3321_fu_1197", "Port" : "p503_1", "Inst_start_state" : "43", "Inst_end_state" : "44"}]},
			{"Name" : "XQA_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1252_fu_966", "Port" : "XQA_0", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "XRA_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1255_fu_933", "Port" : "XRA_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "XRA_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1256_fu_940", "Port" : "XRA_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "XPA_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1258_fu_895", "Port" : "XPA_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "XPA_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1259_fu_911", "Port" : "XPA_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_371_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "48", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state48"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state16"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R0_X_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R0_Z_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_X_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_X_4_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_Z_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.R2_Z_4_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A24_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A24_2_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_1_fu_887", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_1",
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_1_fu_887.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1258_fu_895", "Parent" : "0", "Child" : ["16", "17"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1258",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1258_fu_895.XPA_0_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1258_fu_895.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1_fu_903", "Parent" : "0", "Child" : ["19", "20"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1_fu_903.Montgomery_one_1_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1_fu_903.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1259_fu_911", "Parent" : "0", "Child" : ["22", "23"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1259",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1259_fu_911.XPA_1_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1259_fu_911.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_251_fu_919", "Parent" : "0", "Child" : ["25", "27", "30"],
		"CDFG" : "fpadd503_251",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_fpadd503_251_Pipeline_VITIS_LOOP_34_1_fu_36", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "27", "SubInstance" : "grp_fpadd503_251_Pipeline_VITIS_LOOP_40_2_fu_48", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "30", "SubInstance" : "grp_fpadd503_251_Pipeline_VITIS_LOOP_47_3_fu_61", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_fpadd503_251_Pipeline_VITIS_LOOP_34_1_fu_36", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "27", "SubInstance" : "grp_fpadd503_251_Pipeline_VITIS_LOOP_40_2_fu_48", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "30", "SubInstance" : "grp_fpadd503_251_Pipeline_VITIS_LOOP_47_3_fu_61", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_fpadd503_251_Pipeline_VITIS_LOOP_40_2_fu_48", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "30", "SubInstance" : "grp_fpadd503_251_Pipeline_VITIS_LOOP_47_3_fu_61", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_251_fu_919.grp_fpadd503_251_Pipeline_VITIS_LOOP_34_1_fu_36", "Parent" : "24", "Child" : ["26"],
		"CDFG" : "fpadd503_251_Pipeline_VITIS_LOOP_34_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_251_fu_919.grp_fpadd503_251_Pipeline_VITIS_LOOP_34_1_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_251_fu_919.grp_fpadd503_251_Pipeline_VITIS_LOOP_40_2_fu_48", "Parent" : "24", "Child" : ["28", "29"],
		"CDFG" : "fpadd503_251_Pipeline_VITIS_LOOP_40_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
			{"Name" : "VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_251_fu_919.grp_fpadd503_251_Pipeline_VITIS_LOOP_40_2_fu_48.p503x2_1_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_251_fu_919.grp_fpadd503_251_Pipeline_VITIS_LOOP_40_2_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_251_fu_919.grp_fpadd503_251_Pipeline_VITIS_LOOP_47_3_fu_61", "Parent" : "24", "Child" : ["31", "32"],
		"CDFG" : "fpadd503_251_Pipeline_VITIS_LOOP_47_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_251_fu_919.grp_fpadd503_251_Pipeline_VITIS_LOOP_47_3_fu_61.p503x2_1_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_251_fu_919.grp_fpadd503_251_Pipeline_VITIS_LOOP_47_3_fu_61.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1255_fu_933", "Parent" : "0", "Child" : ["34", "35"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1255",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1255_fu_933.XRA_0_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1255_fu_933.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1256_fu_940", "Parent" : "0", "Child" : ["37", "38"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1256",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1256_fu_940.XRA_1_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1256_fu_940.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_287_fu_947", "Parent" : "0", "Child" : ["40", "42", "45"],
		"CDFG" : "fpadd503_287",
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
					{"ID" : "40", "SubInstance" : "grp_fpadd503_287_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_fpadd503_287_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "42", "SubInstance" : "grp_fpadd503_287_Pipeline_VITIS_LOOP_40_2_fu_65", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "45", "SubInstance" : "grp_fpadd503_287_Pipeline_VITIS_LOOP_47_3_fu_78", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_fpadd503_287_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "42", "SubInstance" : "grp_fpadd503_287_Pipeline_VITIS_LOOP_40_2_fu_65", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "45", "SubInstance" : "grp_fpadd503_287_Pipeline_VITIS_LOOP_47_3_fu_78", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_fpadd503_287_Pipeline_VITIS_LOOP_40_2_fu_65", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "45", "SubInstance" : "grp_fpadd503_287_Pipeline_VITIS_LOOP_47_3_fu_78", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_287_fu_947.grp_fpadd503_287_Pipeline_VITIS_LOOP_34_1_fu_50", "Parent" : "39", "Child" : ["41"],
		"CDFG" : "fpadd503_287_Pipeline_VITIS_LOOP_34_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_287_fu_947.grp_fpadd503_287_Pipeline_VITIS_LOOP_34_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_287_fu_947.grp_fpadd503_287_Pipeline_VITIS_LOOP_40_2_fu_65", "Parent" : "39", "Child" : ["43", "44"],
		"CDFG" : "fpadd503_287_Pipeline_VITIS_LOOP_40_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
			{"Name" : "VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_287_fu_947.grp_fpadd503_287_Pipeline_VITIS_LOOP_40_2_fu_65.p503x2_1_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_287_fu_947.grp_fpadd503_287_Pipeline_VITIS_LOOP_40_2_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_287_fu_947.grp_fpadd503_287_Pipeline_VITIS_LOOP_47_3_fu_78", "Parent" : "39", "Child" : ["46", "47"],
		"CDFG" : "fpadd503_287_Pipeline_VITIS_LOOP_47_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_287_fu_947.grp_fpadd503_287_Pipeline_VITIS_LOOP_47_3_fu_78.p503x2_1_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_287_fu_947.grp_fpadd503_287_Pipeline_VITIS_LOOP_47_3_fu_78.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1252_fu_966", "Parent" : "0", "Child" : ["49", "50"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1252",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1252_fu_966.XQA_0_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1252_fu_966.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1254_fu_973", "Parent" : "0", "Child" : ["52", "53"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1254",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1254_fu_973.Montgomery_one_1_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1254_fu_973.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1253_fu_980", "Parent" : "0", "Child" : ["55"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1253",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1253_fu_980.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1257_fu_985", "Parent" : "0", "Child" : ["57", "58"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1257",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1257_fu_985.Montgomery_one_1_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1257_fu_985.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_992", "Parent" : "0", "Child" : ["60", "63", "65", "68"],
		"CDFG" : "fp2div2_503",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "65",
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
					{"ID" : "60", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_92_1_fu_74", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "63", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_442_1_fu_85", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "65", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_92_1241_fu_93", "Port" : "c_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "68", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_442_1242_fu_104", "Port" : "c_0", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_92_1_fu_74", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "63", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_442_1_fu_85", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "65", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_92_1241_fu_93", "Port" : "c_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "68", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_442_1242_fu_104", "Port" : "c_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_92_1_fu_74", "Port" : "p503_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "65", "SubInstance" : "grp_fp2div2_503_Pipeline_VITIS_LOOP_92_1241_fu_93", "Port" : "p503_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_992.grp_fp2div2_503_Pipeline_VITIS_LOOP_92_1_fu_74", "Parent" : "59", "Child" : ["61", "62"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_92_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
			{"Name" : "sext_ln91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_992.grp_fp2div2_503_Pipeline_VITIS_LOOP_92_1_fu_74.p503_1_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_992.grp_fp2div2_503_Pipeline_VITIS_LOOP_92_1_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_992.grp_fp2div2_503_Pipeline_VITIS_LOOP_442_1_fu_85", "Parent" : "59", "Child" : ["64"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_442_1",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_442_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_992.grp_fp2div2_503_Pipeline_VITIS_LOOP_442_1_fu_85.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_992.grp_fp2div2_503_Pipeline_VITIS_LOOP_92_1241_fu_93", "Parent" : "59", "Child" : ["66", "67"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_92_1241",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
			{"Name" : "sext_ln91_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_92_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_992.grp_fp2div2_503_Pipeline_VITIS_LOOP_92_1241_fu_93.p503_1_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_992.grp_fp2div2_503_Pipeline_VITIS_LOOP_92_1241_fu_93.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_992.grp_fp2div2_503_Pipeline_VITIS_LOOP_442_1242_fu_104", "Parent" : "59", "Child" : ["69"],
		"CDFG" : "fp2div2_503_Pipeline_VITIS_LOOP_442_1242",
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
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_442_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2div2_503_fu_992.grp_fp2div2_503_Pipeline_VITIS_LOOP_442_1242_fu_104.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1260_fu_1000", "Parent" : "0", "Child" : ["71", "72"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1260",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_17_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1260_fu_1000.Montgomery_one_1_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1260_fu_1000.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_25_1_fu_1008", "Parent" : "0", "Child" : ["74"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_VITIS_LOOP_25_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_25_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_25_1_fu_1008.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_287_1_fu_1014", "Parent" : "0", "Child" : ["76"],
		"CDFG" : "LADDER3PT_impl_250_Pipeline_VITIS_LOOP_287_1",
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
			{"Name" : "R2_X", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R2_X_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R2_Z", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R2_Z_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln350", "Type" : "None", "Direction" : "I"},
			{"Name" : "R_Z", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_287_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state2_blk", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state2_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LADDER3PT_impl_250_Pipeline_VITIS_LOOP_287_1_fu_1014.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1565_fu_1027", "Parent" : "0", "Child" : ["78", "80", "83"],
		"CDFG" : "fpadd503_1565",
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
					{"ID" : "78", "SubInstance" : "grp_fpadd503_1565_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_fpadd503_1565_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_fpadd503_1565_Pipeline_VITIS_LOOP_34_1_fu_50", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "80", "SubInstance" : "grp_fpadd503_1565_Pipeline_VITIS_LOOP_40_2_fu_63", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "83", "SubInstance" : "grp_fpadd503_1565_Pipeline_VITIS_LOOP_47_3_fu_73", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_fpadd503_1565_Pipeline_VITIS_LOOP_40_2_fu_63", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "83", "SubInstance" : "grp_fpadd503_1565_Pipeline_VITIS_LOOP_47_3_fu_73", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1565_fu_1027.grp_fpadd503_1565_Pipeline_VITIS_LOOP_34_1_fu_50", "Parent" : "77", "Child" : ["79"],
		"CDFG" : "fpadd503_1565_Pipeline_VITIS_LOOP_34_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1565_fu_1027.grp_fpadd503_1565_Pipeline_VITIS_LOOP_34_1_fu_50.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1565_fu_1027.grp_fpadd503_1565_Pipeline_VITIS_LOOP_40_2_fu_63", "Parent" : "77", "Child" : ["81", "82"],
		"CDFG" : "fpadd503_1565_Pipeline_VITIS_LOOP_40_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_631_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1565_fu_1027.grp_fpadd503_1565_Pipeline_VITIS_LOOP_40_2_fu_63.p503x2_1_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1565_fu_1027.grp_fpadd503_1565_Pipeline_VITIS_LOOP_40_2_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1565_fu_1027.grp_fpadd503_1565_Pipeline_VITIS_LOOP_47_3_fu_73", "Parent" : "77", "Child" : ["84", "85"],
		"CDFG" : "fpadd503_1565_Pipeline_VITIS_LOOP_47_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1565_fu_1027.grp_fpadd503_1565_Pipeline_VITIS_LOOP_47_3_fu_73.p503x2_1_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_1565_fu_1027.grp_fpadd503_1565_Pipeline_VITIS_LOOP_47_3_fu_73.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_193_fu_1045", "Parent" : "0", "Child" : ["87", "89"],
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
					{"ID" : "87", "SubInstance" : "grp_fpsub503_193_Pipeline_VITIS_LOOP_62_1_fu_32", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_fpsub503_193_Pipeline_VITIS_LOOP_62_1_fu_32", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_fpsub503_193_Pipeline_VITIS_LOOP_62_1_fu_32", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "89", "SubInstance" : "grp_fpsub503_193_Pipeline_VITIS_LOOP_69_2_fu_44", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_fpsub503_193_Pipeline_VITIS_LOOP_69_2_fu_44", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_193_fu_1045.grp_fpsub503_193_Pipeline_VITIS_LOOP_62_1_fu_32", "Parent" : "86", "Child" : ["88"],
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
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_193_fu_1045.grp_fpsub503_193_Pipeline_VITIS_LOOP_62_1_fu_32.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_193_fu_1045.grp_fpsub503_193_Pipeline_VITIS_LOOP_69_2_fu_44", "Parent" : "86", "Child" : ["90", "91"],
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
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_193_fu_1045.grp_fpsub503_193_Pipeline_VITIS_LOOP_69_2_fu_44.p503x2_1_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_193_fu_1045.grp_fpsub503_193_Pipeline_VITIS_LOOP_69_2_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_27_fu_1057", "Parent" : "0", "Child" : ["93", "95"],
		"CDFG" : "fpsub503_27",
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
					{"ID" : "93", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "95", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_27_fu_1057.grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48", "Parent" : "92", "Child" : ["94"],
		"CDFG" : "fpsub503_27_Pipeline_VITIS_LOOP_62_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln64_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln64_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln64_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_27_fu_1057.grp_fpsub503_27_Pipeline_VITIS_LOOP_62_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_27_fu_1057.grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62", "Parent" : "92", "Child" : ["96", "97"],
		"CDFG" : "fpsub503_27_Pipeline_VITIS_LOOP_69_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln64_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_27_fu_1057.grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62.p503x2_1_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_27_fu_1057.grp_fpsub503_27_Pipeline_VITIS_LOOP_69_2_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_154_fu_1075", "Parent" : "0", "Child" : ["99", "101", "104"],
		"CDFG" : "fpadd503_154",
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
					{"ID" : "99", "SubInstance" : "grp_fpadd503_154_Pipeline_VITIS_LOOP_34_1_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "101", "SubInstance" : "grp_fpadd503_154_Pipeline_VITIS_LOOP_40_2_fu_26", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "104", "SubInstance" : "grp_fpadd503_154_Pipeline_VITIS_LOOP_47_3_fu_35", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_fpadd503_154_Pipeline_VITIS_LOOP_34_1_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_fpadd503_154_Pipeline_VITIS_LOOP_40_2_fu_26", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "104", "SubInstance" : "grp_fpadd503_154_Pipeline_VITIS_LOOP_47_3_fu_35", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_154_fu_1075.grp_fpadd503_154_Pipeline_VITIS_LOOP_34_1_fu_18", "Parent" : "98", "Child" : ["100"],
		"CDFG" : "fpadd503_154_Pipeline_VITIS_LOOP_34_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_154_fu_1075.grp_fpadd503_154_Pipeline_VITIS_LOOP_34_1_fu_18.flow_control_loop_pipe_sequential_init_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_154_fu_1075.grp_fpadd503_154_Pipeline_VITIS_LOOP_40_2_fu_26", "Parent" : "98", "Child" : ["102", "103"],
		"CDFG" : "fpadd503_154_Pipeline_VITIS_LOOP_40_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_652_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_154_fu_1075.grp_fpadd503_154_Pipeline_VITIS_LOOP_40_2_fu_26.p503x2_1_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_154_fu_1075.grp_fpadd503_154_Pipeline_VITIS_LOOP_40_2_fu_26.flow_control_loop_pipe_sequential_init_U", "Parent" : "101"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_154_fu_1075.grp_fpadd503_154_Pipeline_VITIS_LOOP_47_3_fu_35", "Parent" : "98", "Child" : ["105", "106"],
		"CDFG" : "fpadd503_154_Pipeline_VITIS_LOOP_47_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_154_fu_1075.grp_fpadd503_154_Pipeline_VITIS_LOOP_47_3_fu_35.p503x2_1_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_154_fu_1075.grp_fpadd503_154_Pipeline_VITIS_LOOP_47_3_fu_35.flow_control_loop_pipe_sequential_init_U", "Parent" : "104"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1083", "Parent" : "0", "Child" : ["108", "111"],
		"CDFG" : "fpcorrection503",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_106_1_fu_28", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "111", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_112_2_fu_38", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_106_1_fu_28", "Port" : "p503_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "111", "SubInstance" : "grp_fpcorrection503_Pipeline_VITIS_LOOP_112_2_fu_38", "Port" : "p503_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1083.grp_fpcorrection503_Pipeline_VITIS_LOOP_106_1_fu_28", "Parent" : "107", "Child" : ["109", "110"],
		"CDFG" : "fpcorrection503_Pipeline_VITIS_LOOP_106_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln108_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_106_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1083.grp_fpcorrection503_Pipeline_VITIS_LOOP_106_1_fu_28.p503_1_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1083.grp_fpcorrection503_Pipeline_VITIS_LOOP_106_1_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1083.grp_fpcorrection503_Pipeline_VITIS_LOOP_112_2_fu_38", "Parent" : "107", "Child" : ["112", "113"],
		"CDFG" : "fpcorrection503_Pipeline_VITIS_LOOP_112_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln108_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln104", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1083.grp_fpcorrection503_Pipeline_VITIS_LOOP_112_2_fu_38.p503_1_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpcorrection503_fu_1083.grp_fpcorrection503_Pipeline_VITIS_LOOP_112_2_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093", "Parent" : "0", "Child" : ["115", "116", "117", "118", "120", "122", "125", "127", "158"],
		"CDFG" : "fp2sqr503_mont_1",
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
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_396_1_fu_36", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "120", "SubInstance" : "grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_62_1_fu_44", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "125", "SubInstance" : "grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_396_1185_fu_60", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "158", "SubInstance" : "grp_fpmul503_mont_7_fu_75", "Port" : "mb", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "grp_fpmul503_mont_4_fu_67", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "158", "SubInstance" : "grp_fpmul503_mont_7_fu_75", "Port" : "mc", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_69_2_fu_52", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.t1_U", "Parent" : "114"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.t2_U", "Parent" : "114"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.t3_U", "Parent" : "114"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_396_1_fu_36", "Parent" : "114", "Child" : ["119"],
		"CDFG" : "fp2sqr503_mont_1_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_396_1_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_62_1_fu_44", "Parent" : "114", "Child" : ["121"],
		"CDFG" : "fp2sqr503_mont_1_Pipeline_VITIS_LOOP_62_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "t2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_62_1_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_69_2_fu_52", "Parent" : "114", "Child" : ["123", "124"],
		"CDFG" : "fp2sqr503_mont_1_Pipeline_VITIS_LOOP_69_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_69_2_fu_52.p503x2_1_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_69_2_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "122"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_396_1185_fu_60", "Parent" : "114", "Child" : ["126"],
		"CDFG" : "fp2sqr503_mont_1_Pipeline_VITIS_LOOP_396_1185",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "t3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fp2sqr503_mont_1_Pipeline_VITIS_LOOP_396_1185_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "125"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67", "Parent" : "114", "Child" : ["128"],
		"CDFG" : "fpmul503_mont_4",
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
					{"ID" : "128", "SubInstance" : "grp_mul_6_1_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_mul_6_1_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_mul_6_1_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8", "Parent" : "127", "Child" : ["129"],
		"CDFG" : "mul_6_1",
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
					{"ID" : "129", "SubInstance" : "grp_mul_4_1_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_mul_4_1_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_mul_4_1_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8", "Parent" : "128", "Child" : ["130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157"],
		"CDFG" : "mul_4_1",
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
	{"ID" : "130", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U253", "Parent" : "129"},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U254", "Parent" : "129"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U255", "Parent" : "129"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U256", "Parent" : "129"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U257", "Parent" : "129"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U258", "Parent" : "129"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U259", "Parent" : "129"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U260", "Parent" : "129"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_64ns_128_1_1_U261", "Parent" : "129"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_56ns_119_1_1_U262", "Parent" : "129"},
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_56ns_119_1_1_U263", "Parent" : "129"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_62ns_125_1_1_U264", "Parent" : "129"},
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_62ns_125_1_1_U265", "Parent" : "129"},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_62ns_125_1_1_U266", "Parent" : "129"},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_62ns_125_1_1_U267", "Parent" : "129"},
	{"ID" : "145", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_64ns_127_1_1_U268", "Parent" : "129"},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_64ns_127_1_1_U269", "Parent" : "129"},
	{"ID" : "147", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_65ns_128_1_1_U270", "Parent" : "129"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64ns_65ns_128_1_1_U271", "Parent" : "129"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64s_64ns_64_1_1_U272", "Parent" : "129"},
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64s_64ns_64_1_1_U273", "Parent" : "129"},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64s_64ns_64_1_1_U274", "Parent" : "129"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64s_62ns_64_1_1_U275", "Parent" : "129"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64s_64ns_64_1_1_U276", "Parent" : "129"},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64s_62ns_64_1_1_U277", "Parent" : "129"},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64s_64ns_64_1_1_U278", "Parent" : "129"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64s_64s_64_1_1_U279", "Parent" : "129"},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_4_fu_67.grp_mul_6_1_fu_8.grp_mul_4_1_fu_8.mul_64s_64s_64_1_1_U280", "Parent" : "129"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75", "Parent" : "114", "Child" : ["159"],
		"CDFG" : "fpmul503_mont_7",
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
					{"ID" : "159", "SubInstance" : "grp_mul_3_1_2_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_mul_3_1_2_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_mul_3_1_2_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8", "Parent" : "158", "Child" : ["160"],
		"CDFG" : "mul_3_1_2",
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
					{"ID" : "160", "SubInstance" : "grp_mul_7_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_mul_7_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_mul_7_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8", "Parent" : "159", "Child" : ["161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188"],
		"CDFG" : "mul_7",
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
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_64ns_128_1_1_U298", "Parent" : "160"},
	{"ID" : "162", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_64ns_128_1_1_U299", "Parent" : "160"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_64ns_128_1_1_U300", "Parent" : "160"},
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_64ns_128_1_1_U301", "Parent" : "160"},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_64ns_128_1_1_U302", "Parent" : "160"},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_64ns_128_1_1_U303", "Parent" : "160"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_64ns_128_1_1_U304", "Parent" : "160"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_64ns_128_1_1_U305", "Parent" : "160"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_64ns_128_1_1_U306", "Parent" : "160"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_56ns_119_1_1_U307", "Parent" : "160"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_56ns_119_1_1_U308", "Parent" : "160"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_62ns_125_1_1_U309", "Parent" : "160"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_62ns_125_1_1_U310", "Parent" : "160"},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_62ns_125_1_1_U311", "Parent" : "160"},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_62ns_125_1_1_U312", "Parent" : "160"},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_64ns_127_1_1_U313", "Parent" : "160"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_64ns_127_1_1_U314", "Parent" : "160"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_65ns_128_1_1_U315", "Parent" : "160"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64ns_65ns_128_1_1_U316", "Parent" : "160"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64s_64ns_64_1_1_U317", "Parent" : "160"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64s_64ns_64_1_1_U318", "Parent" : "160"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64s_64ns_64_1_1_U319", "Parent" : "160"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64s_62ns_64_1_1_U320", "Parent" : "160"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64s_64ns_64_1_1_U321", "Parent" : "160"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64s_62ns_64_1_1_U322", "Parent" : "160"},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64s_64ns_64_1_1_U323", "Parent" : "160"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64s_64s_64_1_1_U324", "Parent" : "160"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_1_fu_1093.grp_fpmul503_mont_7_fu_75.grp_mul_3_1_2_fu_8.grp_mul_7_fu_8.mul_64s_64s_64_1_1_U325", "Parent" : "160"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101", "Parent" : "0", "Child" : ["190", "191", "192", "193", "194", "195", "201", "203", "205", "207", "210", "212", "258", "264"],
		"CDFG" : "fp2mul503_mont_333_2",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_mp_mul_517146_fu_54", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "201", "SubInstance" : "grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1_fu_70", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "212", "SubInstance" : "grp_rdc_mont_1_fu_106", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_mp_mul_517146_fu_54", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "203", "SubInstance" : "grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1205_fu_77", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_205_1_fu_92", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.t1_U", "Parent" : "189"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.t2_U", "Parent" : "189"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.tt1_U", "Parent" : "189"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.tt2_U", "Parent" : "189"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.tt3_U", "Parent" : "189"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_mp_mul_517146_fu_54", "Parent" : "189", "Child" : ["196"],
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
					{"ID" : "196", "SubInstance" : "grp_mul_248_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_mul_248_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_mul_248_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_mp_mul_517146_fu_54.grp_mul_248_fu_26", "Parent" : "195", "Child" : ["197"],
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
					{"ID" : "197", "SubInstance" : "grp_mul_248_Pipeline_COL_fu_326", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_mp_mul_517146_fu_54.grp_mul_248_fu_26.grp_mul_248_Pipeline_COL_fu_326", "Parent" : "196", "Child" : ["198", "199", "200"],
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
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_mp_mul_517146_fu_54.grp_mul_248_fu_26.grp_mul_248_Pipeline_COL_fu_326.mul_64ns_64ns_128_1_1_U366", "Parent" : "197"},
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_mp_mul_517146_fu_54.grp_mul_248_fu_26.grp_mul_248_Pipeline_COL_fu_326.sparsemux_31_4_64_1_1_U367", "Parent" : "197"},
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_mp_mul_517146_fu_54.grp_mul_248_fu_26.grp_mul_248_Pipeline_COL_fu_326.flow_control_loop_pipe_sequential_init_U", "Parent" : "197"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1_fu_70", "Parent" : "189", "Child" : ["202"],
		"CDFG" : "fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "201"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1205_fu_77", "Parent" : "189", "Child" : ["204"],
		"CDFG" : "fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1205",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1205_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "203"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_178_1_fu_84", "Parent" : "189", "Child" : ["206"],
		"CDFG" : "fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_178_1",
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
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_178_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "205"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_205_1_fu_92", "Parent" : "189", "Child" : ["208", "209"],
		"CDFG" : "fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_205_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_205_1_fu_92.p503_1_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_205_1_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "207"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1206_fu_100", "Parent" : "189", "Child" : ["211"],
		"CDFG" : "fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1206",
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
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1206_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106", "Parent" : "189", "Child" : ["213", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "233", "238", "243", "248", "253"],
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
					{"ID" : "213", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "212", "Child" : ["214"],
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
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_305", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_312", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_319", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_325", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_331", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_338", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_345", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_351", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_358", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_367", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_is_digit_lessthan_ct_fu_374", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.tmp_45_is_digit_lessthan_ct_fu_380", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.tmp_46_is_digit_lessthan_ct_fu_387", "Parent" : "212",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394", "Parent" : "212", "Child" : ["229", "230", "231", "232"],
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
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U413", "Parent" : "228"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U414", "Parent" : "228"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U415", "Parent" : "228"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U416", "Parent" : "228"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401", "Parent" : "212", "Child" : ["234", "235", "236", "237"],
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
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U413", "Parent" : "233"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U414", "Parent" : "233"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U415", "Parent" : "233"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U416", "Parent" : "233"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408", "Parent" : "212", "Child" : ["239", "240", "241", "242"],
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
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U413", "Parent" : "238"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U414", "Parent" : "238"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U415", "Parent" : "238"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U416", "Parent" : "238"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415", "Parent" : "212", "Child" : ["244", "245", "246", "247"],
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
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U413", "Parent" : "243"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U414", "Parent" : "243"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U415", "Parent" : "243"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U416", "Parent" : "243"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422", "Parent" : "212", "Child" : ["249", "250", "251", "252"],
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
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U413", "Parent" : "248"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U414", "Parent" : "248"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U415", "Parent" : "248"},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U416", "Parent" : "248"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429", "Parent" : "212", "Child" : ["254", "255", "256", "257"],
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
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U413", "Parent" : "253"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U414", "Parent" : "253"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U415", "Parent" : "253"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_rdc_mont_1_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U416", "Parent" : "253"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_mp_mul_5173_fu_116", "Parent" : "189", "Child" : ["259"],
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
					{"ID" : "259", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8", "Parent" : "258", "Child" : ["260"],
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
					{"ID" : "260", "SubInstance" : "grp_mul_4181_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "260", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306", "Parent" : "259", "Child" : ["261", "262", "263"],
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
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U425", "Parent" : "260"},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U426", "Parent" : "260"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "260"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_178_1207_fu_123", "Parent" : "189", "Child" : ["265"],
		"CDFG" : "fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_178_1207",
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
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_333_2_fu_1101.grp_fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_178_1207_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109", "Parent" : "0", "Child" : ["267", "268", "269", "270", "271", "272", "278", "280", "282", "284", "287", "289", "335", "341"],
		"CDFG" : "fp2mul503_mont_3",
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
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_mp_mul_fu_56", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "278", "SubInstance" : "grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1_fu_70", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "289", "SubInstance" : "grp_rdc_mont_1_fu_108", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_mp_mul_fu_56", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "280", "SubInstance" : "grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1226_fu_77", "Port" : "b_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_mp_mul_fu_56", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "280", "SubInstance" : "grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1226_fu_77", "Port" : "b_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "284", "SubInstance" : "grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_205_1_fu_94", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.t1_U", "Parent" : "266"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.t2_U", "Parent" : "266"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.tt1_U", "Parent" : "266"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.tt2_U", "Parent" : "266"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.tt3_U", "Parent" : "266"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_mp_mul_fu_56", "Parent" : "266", "Child" : ["273"],
		"CDFG" : "mp_mul",
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
					{"ID" : "273", "SubInstance" : "grp_mul_fu_18", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_mul_fu_18", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_mul_fu_18", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_mp_mul_fu_56.grp_mul_fu_18", "Parent" : "272", "Child" : ["274"],
		"CDFG" : "mul",
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
					{"ID" : "274", "SubInstance" : "grp_mul_Pipeline_COL_fu_318", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_mp_mul_fu_56.grp_mul_fu_18.grp_mul_Pipeline_COL_fu_318", "Parent" : "273", "Child" : ["275", "276", "277"],
		"CDFG" : "mul_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "carry_600_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_mp_mul_fu_56.grp_mul_fu_18.grp_mul_Pipeline_COL_fu_318.mul_64ns_64ns_128_1_1_U459", "Parent" : "274"},
	{"ID" : "276", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_mp_mul_fu_56.grp_mul_fu_18.grp_mul_Pipeline_COL_fu_318.sparsemux_31_4_64_1_1_U460", "Parent" : "274"},
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_mp_mul_fu_56.grp_mul_fu_18.grp_mul_Pipeline_COL_fu_318.flow_control_loop_pipe_sequential_init_U", "Parent" : "274"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1_fu_70", "Parent" : "266", "Child" : ["279"],
		"CDFG" : "fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1226_fu_77", "Parent" : "266", "Child" : ["281"],
		"CDFG" : "fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1226",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1226_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_178_1_fu_86", "Parent" : "266", "Child" : ["283"],
		"CDFG" : "fp2mul503_mont_3_Pipeline_VITIS_LOOP_178_1",
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
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_178_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_205_1_fu_94", "Parent" : "266", "Child" : ["285", "286"],
		"CDFG" : "fp2mul503_mont_3_Pipeline_VITIS_LOOP_205_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_205_1_fu_94.p503_1_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_205_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "284"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1227_fu_102", "Parent" : "266", "Child" : ["288"],
		"CDFG" : "fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1227",
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
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1227_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "287"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108", "Parent" : "266", "Child" : ["290", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "310", "315", "320", "325", "330"],
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
					{"ID" : "290", "SubInstance" : "grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "289", "Child" : ["291"],
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
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_rdc_mont_1_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "290"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_305", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_312", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_319", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_325", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_331", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_338", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_345", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_351", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_358", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_367", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_is_digit_lessthan_ct_fu_374", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.tmp_45_is_digit_lessthan_ct_fu_380", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.tmp_46_is_digit_lessthan_ct_fu_387", "Parent" : "289",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_394", "Parent" : "289", "Child" : ["306", "307", "308", "309"],
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
	{"ID" : "306", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U413", "Parent" : "305"},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U414", "Parent" : "305"},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U415", "Parent" : "305"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U416", "Parent" : "305"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_401", "Parent" : "289", "Child" : ["311", "312", "313", "314"],
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
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U413", "Parent" : "310"},
	{"ID" : "312", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U414", "Parent" : "310"},
	{"ID" : "313", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U415", "Parent" : "310"},
	{"ID" : "314", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U416", "Parent" : "310"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_408", "Parent" : "289", "Child" : ["316", "317", "318", "319"],
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
	{"ID" : "316", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U413", "Parent" : "315"},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U414", "Parent" : "315"},
	{"ID" : "318", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U415", "Parent" : "315"},
	{"ID" : "319", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U416", "Parent" : "315"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_415", "Parent" : "289", "Child" : ["321", "322", "323", "324"],
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
	{"ID" : "321", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U413", "Parent" : "320"},
	{"ID" : "322", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U414", "Parent" : "320"},
	{"ID" : "323", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U415", "Parent" : "320"},
	{"ID" : "324", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U416", "Parent" : "320"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_422", "Parent" : "289", "Child" : ["326", "327", "328", "329"],
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
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U413", "Parent" : "325"},
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U414", "Parent" : "325"},
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U415", "Parent" : "325"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U416", "Parent" : "325"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_429", "Parent" : "289", "Child" : ["331", "332", "333", "334"],
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
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U413", "Parent" : "330"},
	{"ID" : "332", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U414", "Parent" : "330"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U415", "Parent" : "330"},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_rdc_mont_1_fu_108.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U416", "Parent" : "330"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_mp_mul_5173_fu_118", "Parent" : "266", "Child" : ["336"],
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
					{"ID" : "336", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "336", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "336", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8", "Parent" : "335", "Child" : ["337"],
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
					{"ID" : "337", "SubInstance" : "grp_mul_4181_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306", "Parent" : "336", "Child" : ["338", "339", "340"],
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
	{"ID" : "338", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U425", "Parent" : "337"},
	{"ID" : "339", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U426", "Parent" : "337"},
	{"ID" : "340", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_mp_mul_5173_fu_118.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "337"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_178_1228_fu_125", "Parent" : "266", "Child" : ["342"],
		"CDFG" : "fp2mul503_mont_3_Pipeline_VITIS_LOOP_178_1228",
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
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3_fu_1109.grp_fp2mul503_mont_3_Pipeline_VITIS_LOOP_178_1228_fu_125.flow_control_loop_pipe_sequential_init_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1118", "Parent" : "0", "Child" : ["344", "346"],
		"CDFG" : "fpsub503",
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
					{"ID" : "344", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_62_1_fu_40", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "344", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_62_1_fu_40", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "344", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_62_1_fu_40", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "346", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_69_2_fu_53", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "346", "SubInstance" : "grp_fpsub503_Pipeline_VITIS_LOOP_69_2_fu_53", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1118.grp_fpsub503_Pipeline_VITIS_LOOP_62_1_fu_40", "Parent" : "343", "Child" : ["345"],
		"CDFG" : "fpsub503_Pipeline_VITIS_LOOP_62_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln64_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln64_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "borrow_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1118.grp_fpsub503_Pipeline_VITIS_LOOP_62_1_fu_40.flow_control_loop_pipe_sequential_init_U", "Parent" : "344"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1118.grp_fpsub503_Pipeline_VITIS_LOOP_69_2_fu_53", "Parent" : "343", "Child" : ["347", "348"],
		"CDFG" : "fpsub503_Pipeline_VITIS_LOOP_69_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1118.grp_fpsub503_Pipeline_VITIS_LOOP_69_2_fu_53.p503x2_1_U", "Parent" : "346"},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpsub503_fu_1118.grp_fpsub503_Pipeline_VITIS_LOOP_69_2_fu_53.flow_control_loop_pipe_sequential_init_U", "Parent" : "346"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133", "Parent" : "0", "Child" : ["350", "351", "352", "353", "354", "355", "361", "363", "365", "367", "370", "372", "418", "424"],
		"CDFG" : "fp2mul503_mont",
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
					{"ID" : "355", "SubInstance" : "grp_mp_mul_4_fu_54", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "361", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_396_1_fu_70", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "372", "SubInstance" : "grp_rdc_mont_2107_fu_106", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "355", "SubInstance" : "grp_mp_mul_4_fu_54", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "363", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_396_1238_fu_77", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "367", "SubInstance" : "grp_fp2mul503_mont_Pipeline_VITIS_LOOP_205_1_fu_92", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.t1_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.t2_U", "Parent" : "349"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.tt1_U", "Parent" : "349"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.tt2_U", "Parent" : "349"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.tt3_U", "Parent" : "349"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_4_fu_54", "Parent" : "349", "Child" : ["356"],
		"CDFG" : "mp_mul_4",
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
					{"ID" : "356", "SubInstance" : "grp_mul_4177_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_mul_4177_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_mul_4177_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_4_fu_54.grp_mul_4177_fu_26", "Parent" : "355", "Child" : ["357"],
		"CDFG" : "mul_4177",
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
					{"ID" : "357", "SubInstance" : "grp_mul_4177_Pipeline_COL_fu_326", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_offset2", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "357", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_4_fu_54.grp_mul_4177_fu_26.grp_mul_4177_Pipeline_COL_fu_326", "Parent" : "356", "Child" : ["358", "359", "360"],
		"CDFG" : "mul_4177_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "zext_ln69_5", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "carry_594_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "358", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_4_fu_54.grp_mul_4177_fu_26.grp_mul_4177_Pipeline_COL_fu_326.mul_64ns_64ns_128_1_1_U509", "Parent" : "357"},
	{"ID" : "359", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_4_fu_54.grp_mul_4177_fu_26.grp_mul_4177_Pipeline_COL_fu_326.sparsemux_31_4_64_1_1_U510", "Parent" : "357"},
	{"ID" : "360", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_4_fu_54.grp_mul_4177_fu_26.grp_mul_4177_Pipeline_COL_fu_326.flow_control_loop_pipe_sequential_init_U", "Parent" : "357"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_396_1_fu_70", "Parent" : "349", "Child" : ["362"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_396_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "361"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_396_1238_fu_77", "Parent" : "349", "Child" : ["364"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_396_1238",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_396_1238_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "363"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_178_1_fu_84", "Parent" : "349", "Child" : ["366"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_178_1",
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
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_178_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "365"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_205_1_fu_92", "Parent" : "349", "Child" : ["368", "369"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_205_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_205_1_fu_92.p503_1_U", "Parent" : "367"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_205_1_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "367"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_396_1239_fu_100", "Parent" : "349", "Child" : ["371"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_396_1239",
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
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_396_1239_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "370"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106", "Parent" : "349", "Child" : ["373", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "393", "398", "403", "408", "413"],
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
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "372", "Child" : ["374"],
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
	{"ID" : "374", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "373"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_305", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_312", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_319", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_325", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_331", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_338", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_345", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_351", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_358", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_367", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_374", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.tmp_44_is_digit_lessthan_ct_fu_380", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "387", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.tmp_45_is_digit_lessthan_ct_fu_387", "Parent" : "372",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394", "Parent" : "372", "Child" : ["389", "390", "391", "392"],
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
	{"ID" : "389", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U413", "Parent" : "388"},
	{"ID" : "390", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U414", "Parent" : "388"},
	{"ID" : "391", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U415", "Parent" : "388"},
	{"ID" : "392", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U416", "Parent" : "388"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401", "Parent" : "372", "Child" : ["394", "395", "396", "397"],
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
	{"ID" : "394", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U413", "Parent" : "393"},
	{"ID" : "395", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U414", "Parent" : "393"},
	{"ID" : "396", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U415", "Parent" : "393"},
	{"ID" : "397", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U416", "Parent" : "393"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408", "Parent" : "372", "Child" : ["399", "400", "401", "402"],
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
	{"ID" : "399", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U413", "Parent" : "398"},
	{"ID" : "400", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U414", "Parent" : "398"},
	{"ID" : "401", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U415", "Parent" : "398"},
	{"ID" : "402", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U416", "Parent" : "398"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415", "Parent" : "372", "Child" : ["404", "405", "406", "407"],
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
	{"ID" : "404", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U413", "Parent" : "403"},
	{"ID" : "405", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U414", "Parent" : "403"},
	{"ID" : "406", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U415", "Parent" : "403"},
	{"ID" : "407", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U416", "Parent" : "403"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422", "Parent" : "372", "Child" : ["409", "410", "411", "412"],
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
	{"ID" : "409", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U413", "Parent" : "408"},
	{"ID" : "410", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U414", "Parent" : "408"},
	{"ID" : "411", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U415", "Parent" : "408"},
	{"ID" : "412", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U416", "Parent" : "408"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429", "Parent" : "372", "Child" : ["414", "415", "416", "417"],
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
	{"ID" : "414", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U413", "Parent" : "413"},
	{"ID" : "415", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U414", "Parent" : "413"},
	{"ID" : "416", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U415", "Parent" : "413"},
	{"ID" : "417", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U416", "Parent" : "413"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_5173_fu_116", "Parent" : "349", "Child" : ["419"],
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
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8", "Parent" : "418", "Child" : ["420"],
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
	{"ID" : "420", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306", "Parent" : "419", "Child" : ["421", "422", "423"],
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
	{"ID" : "421", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U425", "Parent" : "420"},
	{"ID" : "422", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U426", "Parent" : "420"},
	{"ID" : "423", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "420"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_178_1240_fu_123", "Parent" : "349", "Child" : ["425"],
		"CDFG" : "fp2mul503_mont_Pipeline_VITIS_LOOP_178_1240",
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
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_fu_1133.grp_fp2mul503_mont_Pipeline_VITIS_LOOP_178_1240_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "424"},
	{"ID" : "426", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141", "Parent" : "0", "Child" : ["427", "428", "429", "430", "431", "432", "438", "440", "442", "444", "447", "449", "495", "501"],
		"CDFG" : "fp2mul503_mont_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "596", "EstimateLatencyMax" : "596",
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
					{"ID" : "432", "SubInstance" : "grp_mp_mul_5_fu_60", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "438", "SubInstance" : "grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1_fu_81", "Port" : "a", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_mp_mul_5_fu_60", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "440", "SubInstance" : "grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1187_fu_88", "Port" : "b_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "432", "SubInstance" : "grp_mp_mul_5_fu_60", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "440", "SubInstance" : "grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1187_fu_88", "Port" : "b_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_rdc_mont_fu_119", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_rdc_mont_fu_119", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "444", "SubInstance" : "grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_205_1_fu_105", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.t1_U", "Parent" : "426"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.t2_U", "Parent" : "426"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.tt1_U", "Parent" : "426"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.tt2_U", "Parent" : "426"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.tt3_U", "Parent" : "426"},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_mp_mul_5_fu_60", "Parent" : "426", "Child" : ["433"],
		"CDFG" : "mp_mul_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137", "EstimateLatencyMax" : "137",
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
					{"ID" : "433", "SubInstance" : "grp_mul_4_fu_36", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "433", "SubInstance" : "grp_mul_4_fu_36", "Port" : "b_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "433", "SubInstance" : "grp_mul_4_fu_36", "Port" : "b_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "433", "SubInstance" : "grp_mul_4_fu_36", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_mp_mul_5_fu_60.grp_mul_4_fu_36", "Parent" : "432", "Child" : ["434"],
		"CDFG" : "mul_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "136", "EstimateLatencyMax" : "136",
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
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "434", "SubInstance" : "grp_mul_4_Pipeline_COL_fu_336", "Port" : "b_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "434", "SubInstance" : "grp_mul_4_Pipeline_COL_fu_336", "Port" : "b_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "434", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_mp_mul_5_fu_60.grp_mul_4_fu_36.grp_mul_4_Pipeline_COL_fu_336", "Parent" : "433", "Child" : ["435", "436", "437"],
		"CDFG" : "mul_4_Pipeline_COL",
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
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "b_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
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
			{"Name" : "carry_595_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "435", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_mp_mul_5_fu_60.grp_mul_4_fu_36.grp_mul_4_Pipeline_COL_fu_336.mul_64ns_64ns_128_1_1_U565", "Parent" : "434"},
	{"ID" : "436", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_mp_mul_5_fu_60.grp_mul_4_fu_36.grp_mul_4_Pipeline_COL_fu_336.sparsemux_31_4_64_1_1_U566", "Parent" : "434"},
	{"ID" : "437", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_mp_mul_5_fu_60.grp_mul_4_fu_36.grp_mul_4_Pipeline_COL_fu_336.flow_control_loop_pipe_sequential_init_U", "Parent" : "434"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1_fu_81", "Parent" : "426", "Child" : ["439"],
		"CDFG" : "fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1_fu_81.flow_control_loop_pipe_sequential_init_U", "Parent" : "438"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1187_fu_88", "Parent" : "426", "Child" : ["441"],
		"CDFG" : "fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1187",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1187_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "440"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_178_1_fu_97", "Parent" : "426", "Child" : ["443"],
		"CDFG" : "fp2mul503_mont_6_Pipeline_VITIS_LOOP_178_1",
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
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_178_1_fu_97.flow_control_loop_pipe_sequential_init_U", "Parent" : "442"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_205_1_fu_105", "Parent" : "426", "Child" : ["445", "446"],
		"CDFG" : "fp2mul503_mont_6_Pipeline_VITIS_LOOP_205_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_205_1_fu_105.p503_1_U", "Parent" : "444"},
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_205_1_fu_105.flow_control_loop_pipe_sequential_init_U", "Parent" : "444"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1188_fu_113", "Parent" : "426", "Child" : ["448"],
		"CDFG" : "fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1188",
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
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1188_fu_113.flow_control_loop_pipe_sequential_init_U", "Parent" : "447"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119", "Parent" : "426", "Child" : ["450", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "470", "475", "480", "485", "490"],
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
					{"ID" : "450", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_299_1_fu_278", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "450", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_rdc_mont_Pipeline_VITIS_LOOP_299_1_fu_278", "Parent" : "449", "Child" : ["451"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_299_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_299_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "451", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_rdc_mont_Pipeline_VITIS_LOOP_299_1_fu_278.flow_control_loop_pipe_sequential_init_U", "Parent" : "450"},
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_is_digit_lessthan_ct_fu_284", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_is_digit_lessthan_ct_fu_291", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_is_digit_lessthan_ct_fu_298", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_is_digit_lessthan_ct_fu_304", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_is_digit_lessthan_ct_fu_310", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_is_digit_lessthan_ct_fu_317", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_is_digit_lessthan_ct_fu_324", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_is_digit_lessthan_ct_fu_330", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_is_digit_lessthan_ct_fu_337", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_is_digit_lessthan_ct_fu_346", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "462", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_is_digit_lessthan_ct_fu_353", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.tmp_45_is_digit_lessthan_ct_fu_359", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.tmp_46_is_digit_lessthan_ct_fu_366", "Parent" : "449",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_373", "Parent" : "449", "Child" : ["466", "467", "468", "469"],
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
	{"ID" : "466", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_373.mul_32ns_32ns_64_1_1_U413", "Parent" : "465"},
	{"ID" : "467", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_373.mul_32ns_32ns_64_1_1_U414", "Parent" : "465"},
	{"ID" : "468", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_373.mul_32ns_32ns_64_1_1_U415", "Parent" : "465"},
	{"ID" : "469", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_373.mul_32ns_32ns_64_1_1_U416", "Parent" : "465"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_380", "Parent" : "449", "Child" : ["471", "472", "473", "474"],
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
	{"ID" : "471", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_380.mul_32ns_32ns_64_1_1_U413", "Parent" : "470"},
	{"ID" : "472", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_380.mul_32ns_32ns_64_1_1_U414", "Parent" : "470"},
	{"ID" : "473", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_380.mul_32ns_32ns_64_1_1_U415", "Parent" : "470"},
	{"ID" : "474", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_380.mul_32ns_32ns_64_1_1_U416", "Parent" : "470"},
	{"ID" : "475", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_387", "Parent" : "449", "Child" : ["476", "477", "478", "479"],
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
	{"ID" : "476", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_387.mul_32ns_32ns_64_1_1_U413", "Parent" : "475"},
	{"ID" : "477", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_387.mul_32ns_32ns_64_1_1_U414", "Parent" : "475"},
	{"ID" : "478", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_387.mul_32ns_32ns_64_1_1_U415", "Parent" : "475"},
	{"ID" : "479", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_387.mul_32ns_32ns_64_1_1_U416", "Parent" : "475"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_394", "Parent" : "449", "Child" : ["481", "482", "483", "484"],
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
	{"ID" : "481", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U413", "Parent" : "480"},
	{"ID" : "482", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U414", "Parent" : "480"},
	{"ID" : "483", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U415", "Parent" : "480"},
	{"ID" : "484", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U416", "Parent" : "480"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_401", "Parent" : "449", "Child" : ["486", "487", "488", "489"],
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
	{"ID" : "486", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U413", "Parent" : "485"},
	{"ID" : "487", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U414", "Parent" : "485"},
	{"ID" : "488", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U415", "Parent" : "485"},
	{"ID" : "489", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U416", "Parent" : "485"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_408", "Parent" : "449", "Child" : ["491", "492", "493", "494"],
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
	{"ID" : "491", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U413", "Parent" : "490"},
	{"ID" : "492", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U414", "Parent" : "490"},
	{"ID" : "493", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U415", "Parent" : "490"},
	{"ID" : "494", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_rdc_mont_fu_119.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U416", "Parent" : "490"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_mp_mul_5173_fu_127", "Parent" : "426", "Child" : ["496"],
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
					{"ID" : "496", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "496", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "496", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_mp_mul_5173_fu_127.grp_mul_4181_fu_8", "Parent" : "495", "Child" : ["497"],
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
					{"ID" : "497", "SubInstance" : "grp_mul_4181_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "497", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_mp_mul_5173_fu_127.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306", "Parent" : "496", "Child" : ["498", "499", "500"],
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
	{"ID" : "498", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_mp_mul_5173_fu_127.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U425", "Parent" : "497"},
	{"ID" : "499", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_mp_mul_5173_fu_127.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U426", "Parent" : "497"},
	{"ID" : "500", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_mp_mul_5173_fu_127.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "497"},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_178_1189_fu_134", "Parent" : "426", "Child" : ["502"],
		"CDFG" : "fp2mul503_mont_6_Pipeline_VITIS_LOOP_178_1189",
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
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_6_fu_1141.grp_fp2mul503_mont_6_Pipeline_VITIS_LOOP_178_1189_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "501"},
	{"ID" : "503", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_153_fu_1152", "Parent" : "0", "Child" : ["504", "506", "509"],
		"CDFG" : "fpadd503_153",
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
					{"ID" : "504", "SubInstance" : "grp_fpadd503_153_Pipeline_VITIS_LOOP_34_1_fu_32", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "504", "SubInstance" : "grp_fpadd503_153_Pipeline_VITIS_LOOP_34_1_fu_32", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "506", "SubInstance" : "grp_fpadd503_153_Pipeline_VITIS_LOOP_40_2_fu_41", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "509", "SubInstance" : "grp_fpadd503_153_Pipeline_VITIS_LOOP_47_3_fu_51", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "c_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "506", "SubInstance" : "grp_fpadd503_153_Pipeline_VITIS_LOOP_40_2_fu_41", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "509", "SubInstance" : "grp_fpadd503_153_Pipeline_VITIS_LOOP_47_3_fu_51", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_153_fu_1152.grp_fpadd503_153_Pipeline_VITIS_LOOP_34_1_fu_32", "Parent" : "503", "Child" : ["505"],
		"CDFG" : "fpadd503_153_Pipeline_VITIS_LOOP_34_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "zext_ln36_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_153_fu_1152.grp_fpadd503_153_Pipeline_VITIS_LOOP_34_1_fu_32.flow_control_loop_pipe_sequential_init_U", "Parent" : "504"},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_153_fu_1152.grp_fpadd503_153_Pipeline_VITIS_LOOP_40_2_fu_41", "Parent" : "503", "Child" : ["507", "508"],
		"CDFG" : "fpadd503_153_Pipeline_VITIS_LOOP_40_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_655_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_153_fu_1152.grp_fpadd503_153_Pipeline_VITIS_LOOP_40_2_fu_41.p503x2_1_U", "Parent" : "506"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_153_fu_1152.grp_fpadd503_153_Pipeline_VITIS_LOOP_40_2_fu_41.flow_control_loop_pipe_sequential_init_U", "Parent" : "506"},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_153_fu_1152.grp_fpadd503_153_Pipeline_VITIS_LOOP_47_3_fu_51", "Parent" : "503", "Child" : ["510", "511"],
		"CDFG" : "fpadd503_153_Pipeline_VITIS_LOOP_47_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_153_fu_1152.grp_fpadd503_153_Pipeline_VITIS_LOOP_47_3_fu_51.p503x2_1_U", "Parent" : "509"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_153_fu_1152.grp_fpadd503_153_Pipeline_VITIS_LOOP_47_3_fu_51.flow_control_loop_pipe_sequential_init_U", "Parent" : "509"},
	{"ID" : "512", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163", "Parent" : "0", "Child" : ["513", "514", "515", "516", "518", "520", "523", "525", "556"],
		"CDFG" : "fp2sqr503_mont_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "62", "EstimateLatencyMax" : "62",
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
					{"ID" : "516", "SubInstance" : "grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_396_1_fu_36", "Port" : "c_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "518", "SubInstance" : "grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_62_1_fu_46", "Port" : "c_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "523", "SubInstance" : "grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_396_1177_fu_64", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "525", "SubInstance" : "grp_fpmul503_mont_1_fu_71", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "516", "SubInstance" : "grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_396_1_fu_36", "Port" : "c_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "518", "SubInstance" : "grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_62_1_fu_46", "Port" : "c_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "556", "SubInstance" : "grp_fpmul503_mont_fu_79", "Port" : "mc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "520", "SubInstance" : "grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_69_2_fu_56", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.t1_U", "Parent" : "512"},
	{"ID" : "514", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.t2_U", "Parent" : "512"},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.t3_U", "Parent" : "512"},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_396_1_fu_36", "Parent" : "512", "Child" : ["517"],
		"CDFG" : "fp2sqr503_mont_7_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "517", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_396_1_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "516"},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_62_1_fu_46", "Parent" : "512", "Child" : ["519"],
		"CDFG" : "fp2sqr503_mont_7_Pipeline_VITIS_LOOP_62_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "519", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_62_1_fu_46.flow_control_loop_pipe_sequential_init_U", "Parent" : "518"},
	{"ID" : "520", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_69_2_fu_56", "Parent" : "512", "Child" : ["521", "522"],
		"CDFG" : "fp2sqr503_mont_7_Pipeline_VITIS_LOOP_69_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "521", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_69_2_fu_56.p503x2_1_U", "Parent" : "520"},
	{"ID" : "522", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_69_2_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "520"},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_396_1177_fu_64", "Parent" : "512", "Child" : ["524"],
		"CDFG" : "fp2sqr503_mont_7_Pipeline_VITIS_LOOP_396_1177",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "524", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fp2sqr503_mont_7_Pipeline_VITIS_LOOP_396_1177_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "523"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71", "Parent" : "512", "Child" : ["526"],
		"CDFG" : "fpmul503_mont_1",
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
					{"ID" : "526", "SubInstance" : "grp_mul_1_4_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "526", "SubInstance" : "grp_mul_1_4_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "526", "SubInstance" : "grp_mul_1_4_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "526", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8", "Parent" : "525", "Child" : ["527"],
		"CDFG" : "mul_1_4",
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
					{"ID" : "527", "SubInstance" : "grp_mul_1_1_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "527", "SubInstance" : "grp_mul_1_1_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "527", "SubInstance" : "grp_mul_1_1_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "527", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8", "Parent" : "526", "Child" : ["528", "529", "530", "531", "532", "533", "534", "535", "536", "537", "538", "539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550", "551", "552", "553", "554", "555"],
		"CDFG" : "mul_1_1",
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
	{"ID" : "528", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_64ns_128_1_1_U730", "Parent" : "527"},
	{"ID" : "529", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_64ns_128_1_1_U731", "Parent" : "527"},
	{"ID" : "530", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_64ns_128_1_1_U732", "Parent" : "527"},
	{"ID" : "531", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_64ns_128_1_1_U733", "Parent" : "527"},
	{"ID" : "532", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_64ns_128_1_1_U734", "Parent" : "527"},
	{"ID" : "533", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_64ns_128_1_1_U735", "Parent" : "527"},
	{"ID" : "534", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_64ns_128_1_1_U736", "Parent" : "527"},
	{"ID" : "535", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_64ns_128_1_1_U737", "Parent" : "527"},
	{"ID" : "536", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_64ns_128_1_1_U738", "Parent" : "527"},
	{"ID" : "537", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_56ns_119_1_1_U739", "Parent" : "527"},
	{"ID" : "538", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_56ns_119_1_1_U740", "Parent" : "527"},
	{"ID" : "539", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_62ns_125_1_1_U741", "Parent" : "527"},
	{"ID" : "540", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_62ns_125_1_1_U742", "Parent" : "527"},
	{"ID" : "541", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_62ns_125_1_1_U743", "Parent" : "527"},
	{"ID" : "542", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_62ns_125_1_1_U744", "Parent" : "527"},
	{"ID" : "543", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_64ns_127_1_1_U745", "Parent" : "527"},
	{"ID" : "544", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_64ns_127_1_1_U746", "Parent" : "527"},
	{"ID" : "545", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_65ns_128_1_1_U747", "Parent" : "527"},
	{"ID" : "546", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64ns_65ns_128_1_1_U748", "Parent" : "527"},
	{"ID" : "547", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64s_64ns_64_1_1_U749", "Parent" : "527"},
	{"ID" : "548", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64s_64ns_64_1_1_U750", "Parent" : "527"},
	{"ID" : "549", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64s_64ns_64_1_1_U751", "Parent" : "527"},
	{"ID" : "550", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64s_62ns_64_1_1_U752", "Parent" : "527"},
	{"ID" : "551", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64s_64ns_64_1_1_U753", "Parent" : "527"},
	{"ID" : "552", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64s_62ns_64_1_1_U754", "Parent" : "527"},
	{"ID" : "553", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64s_64ns_64_1_1_U755", "Parent" : "527"},
	{"ID" : "554", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64s_64s_64_1_1_U756", "Parent" : "527"},
	{"ID" : "555", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_1_fu_71.grp_mul_1_4_fu_8.grp_mul_1_1_fu_8.mul_64s_64s_64_1_1_U757", "Parent" : "527"},
	{"ID" : "556", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79", "Parent" : "512", "Child" : ["557"],
		"CDFG" : "fpmul503_mont",
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
					{"ID" : "557", "SubInstance" : "grp_mul_2_2_fu_6", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mc", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "557", "SubInstance" : "grp_mul_2_2_fu_6", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "557", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6", "Parent" : "556", "Child" : ["558"],
		"CDFG" : "mul_2_2",
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
					{"ID" : "558", "SubInstance" : "grp_mul_1_2_fu_6", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "558", "SubInstance" : "grp_mul_1_2_fu_6", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "558", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6", "Parent" : "557", "Child" : ["559", "560", "561", "562", "563", "564", "565", "566", "567", "568", "569", "570", "571", "572", "573", "574", "575", "576", "577", "578", "579", "580", "581", "582", "583", "584", "585", "586"],
		"CDFG" : "mul_1_2",
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
	{"ID" : "559", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_64ns_128_1_1_U767", "Parent" : "558"},
	{"ID" : "560", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_64ns_128_1_1_U768", "Parent" : "558"},
	{"ID" : "561", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_64ns_128_1_1_U769", "Parent" : "558"},
	{"ID" : "562", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_64ns_128_1_1_U770", "Parent" : "558"},
	{"ID" : "563", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_64ns_128_1_1_U771", "Parent" : "558"},
	{"ID" : "564", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_64ns_128_1_1_U772", "Parent" : "558"},
	{"ID" : "565", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_64ns_128_1_1_U773", "Parent" : "558"},
	{"ID" : "566", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_64ns_128_1_1_U774", "Parent" : "558"},
	{"ID" : "567", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_64ns_128_1_1_U775", "Parent" : "558"},
	{"ID" : "568", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_56ns_119_1_1_U776", "Parent" : "558"},
	{"ID" : "569", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_56ns_119_1_1_U777", "Parent" : "558"},
	{"ID" : "570", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_62ns_125_1_1_U778", "Parent" : "558"},
	{"ID" : "571", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_62ns_125_1_1_U779", "Parent" : "558"},
	{"ID" : "572", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_62ns_125_1_1_U780", "Parent" : "558"},
	{"ID" : "573", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_62ns_125_1_1_U781", "Parent" : "558"},
	{"ID" : "574", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_64ns_127_1_1_U782", "Parent" : "558"},
	{"ID" : "575", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_64ns_127_1_1_U783", "Parent" : "558"},
	{"ID" : "576", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_65ns_128_1_1_U784", "Parent" : "558"},
	{"ID" : "577", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64ns_65ns_128_1_1_U785", "Parent" : "558"},
	{"ID" : "578", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64s_64ns_64_1_1_U786", "Parent" : "558"},
	{"ID" : "579", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64s_64ns_64_1_1_U787", "Parent" : "558"},
	{"ID" : "580", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64s_64ns_64_1_1_U788", "Parent" : "558"},
	{"ID" : "581", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64s_62ns_64_1_1_U789", "Parent" : "558"},
	{"ID" : "582", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64s_64ns_64_1_1_U790", "Parent" : "558"},
	{"ID" : "583", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64s_62ns_64_1_1_U791", "Parent" : "558"},
	{"ID" : "584", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64s_64ns_64_1_1_U792", "Parent" : "558"},
	{"ID" : "585", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64s_64s_64_1_1_U793", "Parent" : "558"},
	{"ID" : "586", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2sqr503_mont_7_fu_1163.grp_fpmul503_mont_fu_79.grp_mul_2_2_fu_6.grp_mul_1_2_fu_6.mul_64s_64s_64_1_1_U794", "Parent" : "558"},
	{"ID" : "587", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1171", "Parent" : "0", "Child" : ["588", "590", "593"],
		"CDFG" : "fpadd503",
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
					{"ID" : "588", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_34_1_fu_42", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "588", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_34_1_fu_42", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "588", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_34_1_fu_42", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "590", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_40_2_fu_54", "Port" : "c", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "593", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_47_3_fu_63", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "590", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_40_2_fu_54", "Port" : "p503x2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "593", "SubInstance" : "grp_fpadd503_Pipeline_VITIS_LOOP_47_3_fu_63", "Port" : "p503x2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "588", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1171.grp_fpadd503_Pipeline_VITIS_LOOP_34_1_fu_42", "Parent" : "587", "Child" : ["589"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_34_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln36_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "589", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1171.grp_fpadd503_Pipeline_VITIS_LOOP_34_1_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "588"},
	{"ID" : "590", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1171.grp_fpadd503_Pipeline_VITIS_LOOP_40_2_fu_54", "Parent" : "587", "Child" : ["591", "592"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_40_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "carry_661_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "591", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1171.grp_fpadd503_Pipeline_VITIS_LOOP_40_2_fu_54.p503x2_1_U", "Parent" : "590"},
	{"ID" : "592", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1171.grp_fpadd503_Pipeline_VITIS_LOOP_40_2_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "590"},
	{"ID" : "593", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1171.grp_fpadd503_Pipeline_VITIS_LOOP_47_3_fu_63", "Parent" : "587", "Child" : ["594", "595"],
		"CDFG" : "fpadd503_Pipeline_VITIS_LOOP_47_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p503x2_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "594", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1171.grp_fpadd503_Pipeline_VITIS_LOOP_47_3_fu_63.p503x2_1_U", "Parent" : "593"},
	{"ID" : "595", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fpadd503_fu_1171.grp_fpadd503_Pipeline_VITIS_LOOP_47_3_fu_63.flow_control_loop_pipe_sequential_init_U", "Parent" : "593"},
	{"ID" : "596", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186", "Parent" : "0", "Child" : ["597", "598", "599", "600", "601", "602", "608", "614", "616", "618", "620", "623", "625", "671", "677"],
		"CDFG" : "fp2mul503_mont_51",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "580", "EstimateLatencyMax" : "580",
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
					{"ID" : "602", "SubInstance" : "grp_mp_mul_59_fu_54", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "614", "SubInstance" : "grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1_fu_73", "Port" : "c_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "625", "SubInstance" : "grp_rdc_mont_fu_111", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "608", "SubInstance" : "grp_mp_mul_60_fu_64", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "614", "SubInstance" : "grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1_fu_73", "Port" : "c_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "625", "SubInstance" : "grp_rdc_mont_fu_111", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "602", "SubInstance" : "grp_mp_mul_59_fu_54", "Port" : "R_X", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "608", "SubInstance" : "grp_mp_mul_60_fu_64", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "616", "SubInstance" : "grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1190_fu_82", "Port" : "R_X", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "620", "SubInstance" : "grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_205_1_fu_97", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "597", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.t1_U", "Parent" : "596"},
	{"ID" : "598", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.t2_U", "Parent" : "596"},
	{"ID" : "599", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.tt1_U", "Parent" : "596"},
	{"ID" : "600", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.tt2_U", "Parent" : "596"},
	{"ID" : "601", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.tt3_U", "Parent" : "596"},
	{"ID" : "602", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_59_fu_54", "Parent" : "596", "Child" : ["603"],
		"CDFG" : "mp_mul_59",
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
					{"ID" : "603", "SubInstance" : "grp_mul_68_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "603", "SubInstance" : "grp_mul_68_fu_8", "Port" : "R_X", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "603", "SubInstance" : "grp_mul_68_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "603", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_59_fu_54.grp_mul_68_fu_8", "Parent" : "602", "Child" : ["604"],
		"CDFG" : "mul_68",
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
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "604", "SubInstance" : "grp_mul_68_Pipeline_COL_fu_306", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "604", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_59_fu_54.grp_mul_68_fu_8.grp_mul_68_Pipeline_COL_fu_306", "Parent" : "603", "Child" : ["605", "606", "607"],
		"CDFG" : "mul_68_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_587_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "605", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_59_fu_54.grp_mul_68_fu_8.grp_mul_68_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U804", "Parent" : "604"},
	{"ID" : "606", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_59_fu_54.grp_mul_68_fu_8.grp_mul_68_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U805", "Parent" : "604"},
	{"ID" : "607", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_59_fu_54.grp_mul_68_fu_8.grp_mul_68_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "604"},
	{"ID" : "608", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_60_fu_64", "Parent" : "596", "Child" : ["609"],
		"CDFG" : "mp_mul_60",
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
					{"ID" : "609", "SubInstance" : "grp_mul_69_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "609", "SubInstance" : "grp_mul_69_fu_8", "Port" : "R_X", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "609", "SubInstance" : "grp_mul_69_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "609", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_60_fu_64.grp_mul_69_fu_8", "Parent" : "608", "Child" : ["610"],
		"CDFG" : "mul_69",
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
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "610", "SubInstance" : "grp_mul_69_Pipeline_COL_fu_306", "Port" : "R_X", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "610", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_60_fu_64.grp_mul_69_fu_8.grp_mul_69_Pipeline_COL_fu_306", "Parent" : "609", "Child" : ["611", "612", "613"],
		"CDFG" : "mul_69_Pipeline_COL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "R_X", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "carry_586_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "611", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_60_fu_64.grp_mul_69_fu_8.grp_mul_69_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U831", "Parent" : "610"},
	{"ID" : "612", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_60_fu_64.grp_mul_69_fu_8.grp_mul_69_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U832", "Parent" : "610"},
	{"ID" : "613", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_60_fu_64.grp_mul_69_fu_8.grp_mul_69_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "610"},
	{"ID" : "614", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1_fu_73", "Parent" : "596", "Child" : ["615"],
		"CDFG" : "fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "615", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1_fu_73.flow_control_loop_pipe_sequential_init_U", "Parent" : "614"},
	{"ID" : "616", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1190_fu_82", "Parent" : "596", "Child" : ["617"],
		"CDFG" : "fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1190",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
			{"Name" : "VITIS_LOOP_396_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "617", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1190_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "616"},
	{"ID" : "618", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_178_1_fu_89", "Parent" : "596", "Child" : ["619"],
		"CDFG" : "fp2mul503_mont_51_Pipeline_VITIS_LOOP_178_1",
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
	{"ID" : "619", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_178_1_fu_89.flow_control_loop_pipe_sequential_init_U", "Parent" : "618"},
	{"ID" : "620", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_205_1_fu_97", "Parent" : "596", "Child" : ["621", "622"],
		"CDFG" : "fp2mul503_mont_51_Pipeline_VITIS_LOOP_205_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
	{"ID" : "621", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_205_1_fu_97.p503_1_U", "Parent" : "620"},
	{"ID" : "622", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_205_1_fu_97.flow_control_loop_pipe_sequential_init_U", "Parent" : "620"},
	{"ID" : "623", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1191_fu_105", "Parent" : "596", "Child" : ["624"],
		"CDFG" : "fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1191",
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
	{"ID" : "624", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1191_fu_105.flow_control_loop_pipe_sequential_init_U", "Parent" : "623"},
	{"ID" : "625", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111", "Parent" : "596", "Child" : ["626", "628", "629", "630", "631", "632", "633", "634", "635", "636", "637", "638", "639", "640", "641", "646", "651", "656", "661", "666"],
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
					{"ID" : "626", "SubInstance" : "grp_rdc_mont_Pipeline_VITIS_LOOP_299_1_fu_278", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "626", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_rdc_mont_Pipeline_VITIS_LOOP_299_1_fu_278", "Parent" : "625", "Child" : ["627"],
		"CDFG" : "rdc_mont_Pipeline_VITIS_LOOP_299_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
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
			{"Name" : "VITIS_LOOP_299_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "627", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_rdc_mont_Pipeline_VITIS_LOOP_299_1_fu_278.flow_control_loop_pipe_sequential_init_U", "Parent" : "626"},
	{"ID" : "628", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_is_digit_lessthan_ct_fu_284", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "629", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_is_digit_lessthan_ct_fu_291", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "630", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_is_digit_lessthan_ct_fu_298", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "631", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_is_digit_lessthan_ct_fu_304", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "632", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_is_digit_lessthan_ct_fu_310", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "633", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_is_digit_lessthan_ct_fu_317", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "634", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_is_digit_lessthan_ct_fu_324", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "635", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_is_digit_lessthan_ct_fu_330", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "636", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_is_digit_lessthan_ct_fu_337", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "637", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_is_digit_lessthan_ct_fu_346", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "638", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_is_digit_lessthan_ct_fu_353", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "639", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.tmp_45_is_digit_lessthan_ct_fu_359", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "640", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.tmp_46_is_digit_lessthan_ct_fu_366", "Parent" : "625",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "641", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_373", "Parent" : "625", "Child" : ["642", "643", "644", "645"],
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
	{"ID" : "642", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_373.mul_32ns_32ns_64_1_1_U413", "Parent" : "641"},
	{"ID" : "643", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_373.mul_32ns_32ns_64_1_1_U414", "Parent" : "641"},
	{"ID" : "644", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_373.mul_32ns_32ns_64_1_1_U415", "Parent" : "641"},
	{"ID" : "645", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_373.mul_32ns_32ns_64_1_1_U416", "Parent" : "641"},
	{"ID" : "646", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_380", "Parent" : "625", "Child" : ["647", "648", "649", "650"],
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
	{"ID" : "647", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_380.mul_32ns_32ns_64_1_1_U413", "Parent" : "646"},
	{"ID" : "648", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_380.mul_32ns_32ns_64_1_1_U414", "Parent" : "646"},
	{"ID" : "649", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_380.mul_32ns_32ns_64_1_1_U415", "Parent" : "646"},
	{"ID" : "650", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_380.mul_32ns_32ns_64_1_1_U416", "Parent" : "646"},
	{"ID" : "651", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_387", "Parent" : "625", "Child" : ["652", "653", "654", "655"],
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
	{"ID" : "652", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_387.mul_32ns_32ns_64_1_1_U413", "Parent" : "651"},
	{"ID" : "653", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_387.mul_32ns_32ns_64_1_1_U414", "Parent" : "651"},
	{"ID" : "654", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_387.mul_32ns_32ns_64_1_1_U415", "Parent" : "651"},
	{"ID" : "655", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_387.mul_32ns_32ns_64_1_1_U416", "Parent" : "651"},
	{"ID" : "656", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_394", "Parent" : "625", "Child" : ["657", "658", "659", "660"],
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
	{"ID" : "657", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U413", "Parent" : "656"},
	{"ID" : "658", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U414", "Parent" : "656"},
	{"ID" : "659", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U415", "Parent" : "656"},
	{"ID" : "660", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U416", "Parent" : "656"},
	{"ID" : "661", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_401", "Parent" : "625", "Child" : ["662", "663", "664", "665"],
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
	{"ID" : "662", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U413", "Parent" : "661"},
	{"ID" : "663", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U414", "Parent" : "661"},
	{"ID" : "664", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U415", "Parent" : "661"},
	{"ID" : "665", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U416", "Parent" : "661"},
	{"ID" : "666", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_408", "Parent" : "625", "Child" : ["667", "668", "669", "670"],
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
	{"ID" : "667", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U413", "Parent" : "666"},
	{"ID" : "668", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U414", "Parent" : "666"},
	{"ID" : "669", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U415", "Parent" : "666"},
	{"ID" : "670", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_rdc_mont_fu_111.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U416", "Parent" : "666"},
	{"ID" : "671", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_5173_fu_119", "Parent" : "596", "Child" : ["672"],
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
					{"ID" : "672", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "672", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "672", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "672", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_5173_fu_119.grp_mul_4181_fu_8", "Parent" : "671", "Child" : ["673"],
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
					{"ID" : "673", "SubInstance" : "grp_mul_4181_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "673", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_5173_fu_119.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306", "Parent" : "672", "Child" : ["674", "675", "676"],
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
	{"ID" : "674", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_5173_fu_119.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U425", "Parent" : "673"},
	{"ID" : "675", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_5173_fu_119.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U426", "Parent" : "673"},
	{"ID" : "676", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_mp_mul_5173_fu_119.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "673"},
	{"ID" : "677", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_178_1192_fu_126", "Parent" : "596", "Child" : ["678"],
		"CDFG" : "fp2mul503_mont_51_Pipeline_VITIS_LOOP_178_1192",
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
	{"ID" : "678", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_51_fu_1186.grp_fp2mul503_mont_51_Pipeline_VITIS_LOOP_178_1192_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "677"},
	{"ID" : "679", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197", "Parent" : "0", "Child" : ["680", "681", "682", "683", "684", "685", "691", "693", "695", "697", "700", "702", "748", "754"],
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
					{"ID" : "685", "SubInstance" : "grp_mp_mul_5170109_fu_54", "Port" : "a", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "691", "SubInstance" : "grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1_fu_70", "Port" : "c", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "702", "SubInstance" : "grp_rdc_mont_2107_fu_106", "Port" : "mc", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "685", "SubInstance" : "grp_mp_mul_5170109_fu_54", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "693", "SubInstance" : "grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1214_fu_77", "Port" : "b", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "p503_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "697", "SubInstance" : "grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_205_1_fu_92", "Port" : "p503_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "680", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.t1_U", "Parent" : "679"},
	{"ID" : "681", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.t2_U", "Parent" : "679"},
	{"ID" : "682", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.tt1_U", "Parent" : "679"},
	{"ID" : "683", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.tt2_U", "Parent" : "679"},
	{"ID" : "684", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.tt3_U", "Parent" : "679"},
	{"ID" : "685", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_mp_mul_5170109_fu_54", "Parent" : "679", "Child" : ["686"],
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
					{"ID" : "686", "SubInstance" : "grp_mul_3110_fu_26", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "a_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "686", "SubInstance" : "grp_mul_3110_fu_26", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "686", "SubInstance" : "grp_mul_3110_fu_26", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "686", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_mp_mul_5170109_fu_54.grp_mul_3110_fu_26", "Parent" : "685", "Child" : ["687"],
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
					{"ID" : "687", "SubInstance" : "grp_mul_3110_Pipeline_COL_fu_326", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "b_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "687", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_mp_mul_5170109_fu_54.grp_mul_3110_fu_26.grp_mul_3110_Pipeline_COL_fu_326", "Parent" : "686", "Child" : ["688", "689", "690"],
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
	{"ID" : "688", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_mp_mul_5170109_fu_54.grp_mul_3110_fu_26.grp_mul_3110_Pipeline_COL_fu_326.mul_64ns_64ns_128_1_1_U668", "Parent" : "687"},
	{"ID" : "689", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_mp_mul_5170109_fu_54.grp_mul_3110_fu_26.grp_mul_3110_Pipeline_COL_fu_326.sparsemux_31_4_64_1_1_U669", "Parent" : "687"},
	{"ID" : "690", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_mp_mul_5170109_fu_54.grp_mul_3110_fu_26.grp_mul_3110_Pipeline_COL_fu_326.flow_control_loop_pipe_sequential_init_U", "Parent" : "687"},
	{"ID" : "691", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1_fu_70", "Parent" : "679", "Child" : ["692"],
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
	{"ID" : "692", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "691"},
	{"ID" : "693", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1214_fu_77", "Parent" : "679", "Child" : ["694"],
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
	{"ID" : "694", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1214_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "693"},
	{"ID" : "695", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_178_1_fu_84", "Parent" : "679", "Child" : ["696"],
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
	{"ID" : "696", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_178_1_fu_84.flow_control_loop_pipe_sequential_init_U", "Parent" : "695"},
	{"ID" : "697", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_205_1_fu_92", "Parent" : "679", "Child" : ["698", "699"],
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
	{"ID" : "698", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_205_1_fu_92.p503_1_U", "Parent" : "697"},
	{"ID" : "699", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_205_1_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "697"},
	{"ID" : "700", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1215_fu_100", "Parent" : "679", "Child" : ["701"],
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
	{"ID" : "701", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_396_1215_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "700"},
	{"ID" : "702", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106", "Parent" : "679", "Child" : ["703", "705", "706", "707", "708", "709", "710", "711", "712", "713", "714", "715", "716", "717", "718", "723", "728", "733", "738", "743"],
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
					{"ID" : "703", "SubInstance" : "grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298", "Port" : "mc", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "mc_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "703", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298", "Parent" : "702", "Child" : ["704"],
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
	{"ID" : "704", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_rdc_mont_2107_Pipeline_VITIS_LOOP_299_1_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "703"},
	{"ID" : "705", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_305", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "706", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_312", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "707", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_319", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "708", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_325", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "709", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_331", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "710", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_338", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "711", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_345", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "712", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_351", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "713", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_358", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "714", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_367", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "715", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_is_digit_lessthan_ct_fu_374", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "716", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.tmp_44_is_digit_lessthan_ct_fu_380", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "717", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.tmp_45_is_digit_lessthan_ct_fu_387", "Parent" : "702",
		"CDFG" : "is_digit_lessthan_ct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "718", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394", "Parent" : "702", "Child" : ["719", "720", "721", "722"],
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
	{"ID" : "719", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U413", "Parent" : "718"},
	{"ID" : "720", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U414", "Parent" : "718"},
	{"ID" : "721", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U415", "Parent" : "718"},
	{"ID" : "722", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_394.mul_32ns_32ns_64_1_1_U416", "Parent" : "718"},
	{"ID" : "723", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401", "Parent" : "702", "Child" : ["724", "725", "726", "727"],
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
	{"ID" : "724", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U413", "Parent" : "723"},
	{"ID" : "725", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U414", "Parent" : "723"},
	{"ID" : "726", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U415", "Parent" : "723"},
	{"ID" : "727", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_401.mul_32ns_32ns_64_1_1_U416", "Parent" : "723"},
	{"ID" : "728", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408", "Parent" : "702", "Child" : ["729", "730", "731", "732"],
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
	{"ID" : "729", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U413", "Parent" : "728"},
	{"ID" : "730", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U414", "Parent" : "728"},
	{"ID" : "731", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U415", "Parent" : "728"},
	{"ID" : "732", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_408.mul_32ns_32ns_64_1_1_U416", "Parent" : "728"},
	{"ID" : "733", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415", "Parent" : "702", "Child" : ["734", "735", "736", "737"],
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
	{"ID" : "734", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U413", "Parent" : "733"},
	{"ID" : "735", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U414", "Parent" : "733"},
	{"ID" : "736", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U415", "Parent" : "733"},
	{"ID" : "737", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_415.mul_32ns_32ns_64_1_1_U416", "Parent" : "733"},
	{"ID" : "738", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422", "Parent" : "702", "Child" : ["739", "740", "741", "742"],
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
	{"ID" : "739", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U413", "Parent" : "738"},
	{"ID" : "740", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U414", "Parent" : "738"},
	{"ID" : "741", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U415", "Parent" : "738"},
	{"ID" : "742", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_422.mul_32ns_32ns_64_1_1_U416", "Parent" : "738"},
	{"ID" : "743", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429", "Parent" : "702", "Child" : ["744", "745", "746", "747"],
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
	{"ID" : "744", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U413", "Parent" : "743"},
	{"ID" : "745", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U414", "Parent" : "743"},
	{"ID" : "746", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U415", "Parent" : "743"},
	{"ID" : "747", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_rdc_mont_2107_fu_106.grp_digit_x_digit_fu_429.mul_32ns_32ns_64_1_1_U416", "Parent" : "743"},
	{"ID" : "748", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_mp_mul_5173_fu_116", "Parent" : "679", "Child" : ["749"],
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
					{"ID" : "749", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "a", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "749", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "b", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "749", "SubInstance" : "grp_mul_4181_fu_8", "Port" : "c", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "749", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8", "Parent" : "748", "Child" : ["750"],
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
					{"ID" : "750", "SubInstance" : "grp_mul_4181_Pipeline_COL_fu_306", "Port" : "b", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ROW", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "750", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306", "Parent" : "749", "Child" : ["751", "752", "753"],
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
	{"ID" : "751", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.mul_64ns_64ns_128_1_1_U425", "Parent" : "750"},
	{"ID" : "752", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.sparsemux_31_4_64_1_1_U426", "Parent" : "750"},
	{"ID" : "753", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_mp_mul_5173_fu_116.grp_mul_4181_fu_8.grp_mul_4181_Pipeline_COL_fu_306.flow_control_loop_pipe_sequential_init_U", "Parent" : "750"},
	{"ID" : "754", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_178_1216_fu_123", "Parent" : "679", "Child" : ["755"],
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
	{"ID" : "755", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fp2mul503_mont_3321_fu_1197.grp_fp2mul503_mont_3321_Pipeline_VITIS_LOOP_178_1216_fu_123.flow_control_loop_pipe_sequential_init_U", "Parent" : "754"}]}


set ArgLastReadFirstWriteLatency {
	LADDER3PT_impl_250_s {
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
		XPA_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_impl_250_Pipeline_1 {
		A24_2 {Type O LastRead -1 FirstWrite 0}
		A24 {Type O LastRead -1 FirstWrite 0}}
	LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1258 {
		R_X {Type O LastRead -1 FirstWrite 1}
		XPA_0 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1 {
		A24 {Type O LastRead -1 FirstWrite 1}
		A24_2 {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1259 {
		R_X {Type O LastRead -1 FirstWrite 1}
		XPA_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_251 {
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_251_Pipeline_VITIS_LOOP_34_1 {
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 1}}
	fpadd503_251_Pipeline_VITIS_LOOP_40_2 {
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_251_Pipeline_VITIS_LOOP_47_3 {
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1255 {
		R2_X {Type O LastRead -1 FirstWrite 1}
		XRA_0 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1256 {
		R2_X_4 {Type O LastRead -1 FirstWrite 1}
		XRA_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_287 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_287_Pipeline_VITIS_LOOP_34_1 {
		zext_ln36_6 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 1}}
	fpadd503_287_Pipeline_VITIS_LOOP_40_2 {
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		carry_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_287_Pipeline_VITIS_LOOP_47_3 {
		c_0_offset {Type I LastRead 0 FirstWrite -1}
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1_offset {Type I LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1252 {
		R0_X {Type O LastRead -1 FirstWrite 1}
		XQA_0 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1254 {
		R0_Z {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1253 {
		R0_X {Type O LastRead -1 FirstWrite 0}}
	LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1257 {
		R2_Z {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	fp2div2_503 {
		c_0 {Type IO LastRead 6 FirstWrite 1}
		c_1 {Type IO LastRead 12 FirstWrite 1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2div2_503_Pipeline_VITIS_LOOP_92_1 {
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		sext_ln91 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2div2_503_Pipeline_VITIS_LOOP_442_1 {
		c_0 {Type IO LastRead 1 FirstWrite 1}
		c_1 {Type IO LastRead 1 FirstWrite 1}}
	fp2div2_503_Pipeline_VITIS_LOOP_92_1241 {
		c_0 {Type IO LastRead 0 FirstWrite 1}
		c_1 {Type IO LastRead 0 FirstWrite 1}
		sext_ln91_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2div2_503_Pipeline_VITIS_LOOP_442_1242 {
		c_0 {Type IO LastRead 1 FirstWrite 1}
		c_1 {Type IO LastRead 1 FirstWrite 1}}
	LADDER3PT_impl_250_Pipeline_VITIS_LOOP_17_1260 {
		R_Z {Type O LastRead -1 FirstWrite 1}
		Montgomery_one_1 {Type I LastRead -1 FirstWrite -1}}
	LADDER3PT_impl_250_Pipeline_VITIS_LOOP_25_1 {
		R_Z {Type O LastRead -1 FirstWrite 0}}
	LADDER3PT_impl_250_Pipeline_VITIS_LOOP_287_1 {
		R2_X {Type IO LastRead 0 FirstWrite 1}
		R2_X_4 {Type IO LastRead 0 FirstWrite 1}
		R2_Z {Type IO LastRead 0 FirstWrite 1}
		R2_Z_4 {Type IO LastRead 0 FirstWrite 1}
		R_X {Type IO LastRead 1 FirstWrite 1}
		sext_ln350 {Type I LastRead 0 FirstWrite -1}
		R_Z {Type IO LastRead 1 FirstWrite 1}}
	fpadd503_1565 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset2 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1565_Pipeline_VITIS_LOOP_34_1 {
		zext_ln36_22 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln36_21 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		zext_ln36_20 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_1565_Pipeline_VITIS_LOOP_40_2 {
		zext_ln36_20 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		carry_631_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_1565_Pipeline_VITIS_LOOP_47_3 {
		zext_ln36_20 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
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
	fpsub503_27 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset2 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_27_Pipeline_VITIS_LOOP_62_1 {
		zext_ln64_13 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln64_12 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		zext_ln64_11 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_27_Pipeline_VITIS_LOOP_69_2 {
		zext_ln64_11 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_154 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_154_Pipeline_VITIS_LOOP_34_1 {
		c {Type IO LastRead 0 FirstWrite 1}
		b {Type I LastRead 0 FirstWrite -1}}
	fpadd503_154_Pipeline_VITIS_LOOP_40_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_652_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_154_Pipeline_VITIS_LOOP_47_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpcorrection503 {
		a {Type IO LastRead 0 FirstWrite 1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fpcorrection503_Pipeline_VITIS_LOOP_106_1 {
		zext_ln108_3 {Type I LastRead 0 FirstWrite -1}
		a {Type IO LastRead 0 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fpcorrection503_Pipeline_VITIS_LOOP_112_2 {
		zext_ln108_3 {Type I LastRead 0 FirstWrite -1}
		a {Type IO LastRead 0 FirstWrite 1}
		sext_ln104 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_1 {
		a {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_1_Pipeline_VITIS_LOOP_396_1 {
		a {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_1_Pipeline_VITIS_LOOP_62_1 {
		a {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_1_Pipeline_VITIS_LOOP_69_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_1_Pipeline_VITIS_LOOP_396_1185 {
		a {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_4 {
		ma {Type I LastRead 11 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_6_1 {
		a {Type I LastRead 11 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_4_1 {
		a {Type I LastRead 11 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	fpmul503_mont_7 {
		ma {Type I LastRead 11 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_3_1_2 {
		a {Type I LastRead 11 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_7 {
		a {Type I LastRead 11 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	fp2mul503_mont_333_2 {
		c {Type IO LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
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
	fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1205 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_396_1206 {
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
	fp2mul503_mont_333_2_Pipeline_VITIS_LOOP_178_1207 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_3 {
		c {Type IO LastRead 1 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
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
		carry_600_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1226 {
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_3_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_3_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_3_Pipeline_VITIS_LOOP_396_1227 {
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
	fp2mul503_mont_3_Pipeline_VITIS_LOOP_178_1228 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fpsub503 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpsub503_Pipeline_VITIS_LOOP_62_1 {
		zext_ln64_24 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln64_23 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fpsub503_Pipeline_VITIS_LOOP_69_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont {
		c {Type IO LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_4 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset2 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4177 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset1 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset2 {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4177_Pipeline_COL {
		acc {Type IO LastRead 1 FirstWrite 1}
		zext_ln69_5 {Type I LastRead 0 FirstWrite -1}
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
		carry_594_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_396_1 {
		c {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_396_1238 {
		b {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_Pipeline_VITIS_LOOP_396_1239 {
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
	fp2mul503_mont_Pipeline_VITIS_LOOP_178_1240 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fp2mul503_mont_6 {
		a {Type I LastRead 1 FirstWrite -1}
		b_0 {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 1 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_5 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_0_offset {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		b_1_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4 {
		a {Type I LastRead 1 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_0_offset {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		b_1_offset {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_4_Pipeline_COL {
		acc {Type IO LastRead 2 FirstWrite 2}
		b_0_offset {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1_offset {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		acc_14 {Type IO LastRead 2 FirstWrite 2}
		acc_13 {Type IO LastRead 2 FirstWrite 2}
		acc_12 {Type IO LastRead 2 FirstWrite 2}
		acc_11 {Type IO LastRead 2 FirstWrite 2}
		acc_10 {Type IO LastRead 2 FirstWrite 2}
		acc_9 {Type IO LastRead 2 FirstWrite 2}
		acc_8 {Type IO LastRead 2 FirstWrite 2}
		acc_7 {Type IO LastRead 2 FirstWrite 2}
		acc_6 {Type IO LastRead 2 FirstWrite 2}
		acc_5 {Type IO LastRead 2 FirstWrite 2}
		acc_4 {Type IO LastRead 2 FirstWrite 2}
		acc_3 {Type IO LastRead 2 FirstWrite 2}
		acc_2 {Type IO LastRead 2 FirstWrite 2}
		acc_1 {Type IO LastRead 2 FirstWrite 2}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_595_out {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1 {
		a {Type I LastRead 1 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1187 {
		b_0 {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_6_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_6_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_6_Pipeline_VITIS_LOOP_396_1188 {
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_299_1 {
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
	fp2mul503_mont_6_Pipeline_VITIS_LOOP_178_1189 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
	fpadd503_153 {
		a {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		c_offset1 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_153_Pipeline_VITIS_LOOP_34_1 {
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln36_33 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}}
	fpadd503_153_Pipeline_VITIS_LOOP_40_2 {
		zext_ln36_33 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		carry_655_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_153_Pipeline_VITIS_LOOP_47_3 {
		zext_ln36_33 {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_7 {
		c_0 {Type IO LastRead 0 FirstWrite -1}
		c_1 {Type IO LastRead 13 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_7_Pipeline_VITIS_LOOP_396_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2sqr503_mont_7_Pipeline_VITIS_LOOP_62_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2sqr503_mont_7_Pipeline_VITIS_LOOP_69_2 {
		t2 {Type IO LastRead 0 FirstWrite 1}
		sext_ln59 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2sqr503_mont_7_Pipeline_VITIS_LOOP_396_1177 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		t3 {Type O LastRead -1 FirstWrite 1}}
	fpmul503_mont_1 {
		ma {Type I LastRead 11 FirstWrite -1}
		mb {Type I LastRead 13 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 20}}
	mul_1_4 {
		a {Type I LastRead 11 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	mul_1_1 {
		a {Type I LastRead 11 FirstWrite -1}
		b {Type I LastRead 13 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 20}}
	fpmul503_mont {
		ma {Type I LastRead 11 FirstWrite -1}
		mc {Type IO LastRead 13 FirstWrite 20}}
	mul_2_2 {
		a {Type I LastRead 11 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	mul_1_2 {
		a {Type I LastRead 11 FirstWrite -1}
		c {Type IO LastRead 13 FirstWrite 20}}
	fpadd503 {
		a {Type I LastRead 0 FirstWrite -1}
		a_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_offset {Type I LastRead 0 FirstWrite -1}
		c {Type IO LastRead 0 FirstWrite 1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_34_1 {
		zext_ln36_35 {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		zext_ln36_34 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	fpadd503_Pipeline_VITIS_LOOP_40_2 {
		c {Type IO LastRead 0 FirstWrite 1}
		carry_661_out {Type O LastRead -1 FirstWrite 0}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fpadd503_Pipeline_VITIS_LOOP_47_3 {
		c {Type IO LastRead 0 FirstWrite 1}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		p503x2_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_51 {
		c_0 {Type IO LastRead 1 FirstWrite -1}
		c_1 {Type IO LastRead 1 FirstWrite -1}
		R_X {Type I LastRead 1 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	mp_mul_59 {
		a {Type I LastRead 1 FirstWrite -1}
		R_X {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_68 {
		a {Type I LastRead 1 FirstWrite -1}
		R_X {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_68_Pipeline_COL {
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
		R_X {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_587_out {Type O LastRead -1 FirstWrite 0}}
	mp_mul_60 {
		a {Type I LastRead 1 FirstWrite -1}
		R_X {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_69 {
		a {Type I LastRead 1 FirstWrite -1}
		R_X {Type I LastRead 0 FirstWrite -1}
		c {Type O LastRead -1 FirstWrite 1}}
	mul_69_Pipeline_COL {
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
		R_X {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		carry_586_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1 {
		c_0 {Type I LastRead 0 FirstWrite -1}
		c_1 {Type I LastRead 0 FirstWrite -1}
		t1 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1190 {
		R_X {Type I LastRead 1 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}
	fp2mul503_mont_51_Pipeline_VITIS_LOOP_178_1 {
		tt1 {Type I LastRead 0 FirstWrite -1}
		tt2 {Type I LastRead 0 FirstWrite -1}
		tt3 {Type O LastRead -1 FirstWrite 1}
		borrow_out {Type O LastRead -1 FirstWrite 0}}
	fp2mul503_mont_51_Pipeline_VITIS_LOOP_205_1 {
		tt3 {Type IO LastRead 0 FirstWrite 1}
		sext_ln197 {Type I LastRead 0 FirstWrite -1}
		p503_1 {Type I LastRead -1 FirstWrite -1}}
	fp2mul503_mont_51_Pipeline_VITIS_LOOP_396_1191 {
		tt1 {Type IO LastRead 0 FirstWrite 1}
		tt2 {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma {Type I LastRead 27 FirstWrite -1}
		mc {Type O LastRead -1 FirstWrite 0}}
	rdc_mont_Pipeline_VITIS_LOOP_299_1 {
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
	fp2mul503_mont_51_Pipeline_VITIS_LOOP_178_1192 {
		tt2 {Type IO LastRead 0 FirstWrite 1}
		tt1 {Type I LastRead 0 FirstWrite -1}}
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
		tt1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "948814", "Max" : "948814"}
	, {"Name" : "Interval", "Min" : "948814", "Max" : "948814"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ephemeralsk_i { ap_memory {  { ephemeralsk_i_address0 mem_address 1 5 }  { ephemeralsk_i_ce0 mem_ce 1 1 }  { ephemeralsk_i_q0 mem_dout 0 8 }  { ephemeralsk_i_address1 MemPortADDR2 1 5 }  { ephemeralsk_i_ce1 MemPortCE2 1 1 }  { ephemeralsk_i_q1 MemPortDOUT2 0 8 } } }
	R_X { ap_memory {  { R_X_address0 mem_address 1 4 }  { R_X_ce0 mem_ce 1 1 }  { R_X_we0 mem_we 1 1 }  { R_X_d0 mem_din 1 64 }  { R_X_q0 mem_dout 0 64 }  { R_X_address1 MemPortADDR2 1 4 }  { R_X_ce1 MemPortCE2 1 1 }  { R_X_we1 MemPortWE2 1 1 }  { R_X_d1 MemPortDIN2 1 64 }  { R_X_q1 MemPortDOUT2 0 64 } } }
	R_Z { ap_memory {  { R_Z_address0 mem_address 1 4 }  { R_Z_ce0 mem_ce 1 1 }  { R_Z_we0 mem_we 1 1 }  { R_Z_d0 mem_din 1 64 }  { R_Z_q0 mem_dout 0 64 }  { R_Z_address1 MemPortADDR2 1 4 }  { R_Z_ce1 MemPortCE2 1 1 }  { R_Z_we1 MemPortWE2 1 1 }  { R_Z_d1 MemPortDIN2 1 64 }  { R_Z_q1 MemPortDOUT2 0 64 } } }
}
